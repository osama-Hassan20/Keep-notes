import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/components/components.dart';
import '../../shared/cubit/cubit.dart';
import '../../shared/cubit/states.dart';

class ArchivedTaskScreen extends StatelessWidget {
  const ArchivedTaskScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return
      BlocConsumer<AppCubit , AppStates>(
        listener: (context , state) {},
        builder: (context , state){
          return ListView.separated(
            itemBuilder: (context , index) =>buildTaskItem(AppCubit.get(context).archivedTasks[index] ,context),
            separatorBuilder: (context , index) => Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
            itemCount: AppCubit.get(context).archivedTasks.length,);
        },
      );
  }
}
