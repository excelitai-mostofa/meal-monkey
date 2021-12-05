part of pages;

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [

              LoginRegisterHeader(title: 'Login', subTitle: 'Add details to Log In'),

              TextFormField(
                style: TextStyle(color: primaryFontColor),
                decoration: InputDecoration(
                  labelText: 'Your Email',
                  isCollapsed: true,
                ),
              ),

              SizedBox(height: verticalPadding,),

              TextFormField(
                style: TextStyle(color: primaryFontColor),
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  isCollapsed: true,
                ),
              ),


              SizedBox(height: verticalPadding,),



              ElevatedButton(
                  onPressed: (){},
                  child: Text("Login")
              ),


              SizedBox(height: verticalPadding,),


              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => EnterEmailPage()));
                },
                child: Text('Forgot your password?',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: secondaryFontColor,
                  ),
                ),
              ),


              Text('Or Login with',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: secondaryFontColor,
                ),
              ),


              SizedBox(height: verticalPadding,),

              ElevatedButton.icon(
                onPressed: (){

                },
                icon: Icon(FontAwesomeIcons.facebookF),
                label: Text("Login with facebook"),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff3b5998),
                ),
              ),


              SizedBox(height: 40.h,),

              ElevatedButton.icon(
                onPressed: (){

                },
                icon: Icon(FontAwesomeIcons.googlePlusG),
                label: Text("Login with Google"),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffdb4a39),
                ),
              ),


              Expanded(child: SizedBox.shrink()),
              LoginRegisterFooter(question: 'Don\'t have an account? ', actionText:' Sign up', actionRoute: kRouteRegister),
              SizedBox(height: 50.h,),



            ],
          ),
        ),
      ),
    );
  }
}


