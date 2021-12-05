part of pages;

class EnterEmailPage extends StatelessWidget {
  const EnterEmailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Reset password"),
          Text("Please enter your email to receive a link to create a new password via email"),

        ],
      ),
    );
  }
}
