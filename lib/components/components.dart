import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_bloc/cubit/cubit.dart';
import 'package:news_app_bloc/cubit/states.dart';

Widget buildArticleItem(article, context) => BlocBuilder<AppCubit, AppStates>(
  builder: (context, state) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Container(
            width: 120.0,
            height: 120.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: article['urlToImage'] != null && article['urlToImage'] != ''
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      '${article['urlToImage']}',
                      fit: BoxFit.cover,
                      errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                        // If there is an error loading the image, show a fallback widget
                        return const Center(
                          child: Icon(
                            Icons.broken_image, // Display a broken image icon
                            size: 50.0,
                            color: Colors.grey,
                          ),
                        );
                      },
                    ),
                  )
                : const Center(
                    child: Icon(
                      Icons.broken_image,  // Show the fallback icon if URL is null or empty
                      size: 50.0,
                      color: Colors.grey,
                    ),
                  ),
          ),
          const SizedBox(width: 20.0),
          Expanded(
            child: SizedBox(
              height: 120.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      '${article['title']}',
                      style: Theme.of(context).textTheme.bodyLarge,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    '${article['publishedAt']}',
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
);

Widget defaultTextInput({
  bool isObscureText = false,
  required TextEditingController fromController,
  Function(String)? onFieldSubmit,
  Function(String)? onChange,
  String? Function(String?)? validationCallBack,
  required TextInputType keyboardType,
  String label = "Text Field",
  required String hint,
  IconData prefixIcon = Icons.edit,
  IconData? suffixIcon,
  VoidCallback? suffixPressed,
  VoidCallback? onTap,
}) =>
    TextFormField(
      obscureText: isObscureText,
      controller: fromController,
      onFieldSubmitted: onFieldSubmit,
      onChanged: onChange,
      keyboardType: keyboardType,
      validator: validationCallBack,
      onTap: onTap,
      decoration: InputDecoration(
          hintText: label,
          labelText: hint,
          prefixIcon: Icon(prefixIcon),
          suffixIcon: suffixIcon != null
              ? IconButton(icon: Icon(suffixIcon), onPressed: suffixPressed)
              : null,
          border: const OutlineInputBorder()),
    );