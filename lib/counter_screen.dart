import 'package:basketball_score/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Points Counter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(height: 35.0,),
                Text(
                  'Team A',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 20.0,),
                Text(
                  '${BlocProvider.of<CounterCubit>(context).aPoints}',
                  style: TextStyle(
                      fontSize: 120.0,
                  ),
                ),
                SizedBox(height: 20.0,),
                Container(
                  height: 40.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  child: MaterialButton(
                    onPressed: (){
                      BlocProvider.of<CounterCubit>(context).addPoints( 1, true );
                    },
                    child: Center(
                        child: Text(
                            'Add 1 point',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                      ),
                  ),
                ),   // add 1
                SizedBox(height: 20.0,),
                Container(
                  height: 40.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: MaterialButton(
                    onPressed: (){
                      BlocProvider.of<CounterCubit>(context).addPoints(2, true);
                    },
                    child: Center(
                      child: Text(
                        'Add 2 point',
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),   // add 2
                SizedBox(height: 20.0,),
                Container(
                  height: 40.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: MaterialButton(
                    onPressed: (){
                      BlocProvider.of<CounterCubit>(context).addPoints(3, true);
                    },
                    child: Center(
                      child: Text(
                        'Add 3 point',
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),  // add 3
                SizedBox(height: 20.0,),
                Container(
                  height: 40.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: MaterialButton(
                    onPressed: (){
                      BlocProvider.of<CounterCubit>(context).reset(true);
                    },
                    child: Center(
                      child: Text(
                        'Reset',
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),   //reset

              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: double.infinity,
                width: 2.0,
                color: Colors.grey,
              ),
            ),
            Column(
              children: [
                SizedBox(height: 35.0,),
                Text(
                  'Team A',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 20.0,),
                Text(
                  '${BlocProvider.of<CounterCubit>(context).bPoints}',
                  style: TextStyle(
                    fontSize: 120.0,
                  ),
                ),
                SizedBox(height: 20.0,),
                Container(
                  height: 40.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: MaterialButton(
                    onPressed: (){
                      BlocProvider.of<CounterCubit>(context).addPoints( 1, false );
                    },
                    child: Center(
                      child: Text(
                        'Add 1 point',
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),   // add 1
                SizedBox(height: 20.0,),
                Container(
                  height: 40.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: MaterialButton(
                    onPressed: (){
                      BlocProvider.of<CounterCubit>(context).addPoints(2, false);
                    },
                    child: Center(
                      child: Text(
                        'Add 2 point',
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),   // add 2
                SizedBox(height: 20.0,),
                Container(
                  height: 40.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: MaterialButton(
                    onPressed: (){
                      BlocProvider.of<CounterCubit>(context).addPoints(3, false);
                    },
                    child: Center(
                      child: Text(
                        'Add 3 point',
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),  // add 3
                SizedBox(height: 20.0,),
                Container(
                  height: 40.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: MaterialButton(
                    onPressed: (){
                      BlocProvider.of<CounterCubit>(context).reset(false);
                    },
                    child: Center(
                      child: Text(
                        'Reset',
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),   //reset

              ],
            ),

          ],
        ),
      ),
    );
  }
}
