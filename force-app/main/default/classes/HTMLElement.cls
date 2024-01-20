public class HTMLElement {
    public String name, text;
    public List<HTMLElement> elements = new List<HTMLElement>();
    private static final Integer indentSize = 2;
    public class HTMLElementException extends Exception {}

    public HTMLElement() {

    }

    public HTMLElement(String name) {
        if(String.isBlank(name) || String.isEmpty(name))
        {
            throw new HTMLElementException('Campo name obrigatório.');
        }
        
        this.name = name;
    }

    public HTMLElement(String name, String text)
    {
        if(String.isBlank(name) || String.isEmpty(name))
        {
            throw new HTMLElementException('Campo name obrigatório.');
        }
        if(String.isBlank(text) || String.isEmpty(text))
        {
            throw new HTMLElementException('Campo text obrigatório.');
        }

        this.name = name;
        this.text = text;
    }

    private String toStringImpl(Integer indent)
    {
        StringBuilder sb = new StringBuilder();
        String i = ' '.repeat(indentSize * indent);
        sb.appendLine(String.format('{0}<{1}>', new List<Object>{i, this.name}));

        if(String.isNotBlank(this.text) && String.isNotEmpty(this.text))
        {
            sb.append(' '.repeat(indentSize * (indent + 1)));
            sb.appendLine(this.text);
        }

        for (HTMLElement element : this.elements) {
            sb.append(element.toStringImpl(indent + 1));
        }

        sb.appendLine(String.format('{0}</{1}>', new List<Object>{i, this.name}));

        return sb.toString();
    }

    public override String toString()
    {
        return toStringImpl(0);
    }
}