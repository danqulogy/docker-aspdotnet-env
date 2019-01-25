namespace app
{
    public interface IGreeting
    {
        string greet();
    }

    public class Greeting : IGreeting
    {
        public string greet()
        {
            return "Greetings!!!";
        }
    }
}