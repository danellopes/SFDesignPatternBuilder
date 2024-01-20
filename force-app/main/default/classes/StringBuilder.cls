public class StringBuilder {
    private String text = '';

    public StringBuilder append(String text)
    {
        this.text += text;
        return this;
    }

    public StringBuilder appendLine(String text)
    {
        this.text += (text + '\n');
        return this;
    }

    public override String toString()
    {
        return this.text;
    }
}