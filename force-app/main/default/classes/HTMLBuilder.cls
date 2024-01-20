public class HTMLBuilder {
    private final String rootName;
    HTMLElement root = new HTMLElement();

    public HTMLBuilder(String rootName) {
        this.rootName = rootName;
        root.name = rootName;
    }

    public HTMLBuilder addChild(String childName, string childText)
    {
        HTMLElement e = new HTMLElement(childName, childText);
        root.elements.add(e);
        return this;
    }

    public override String toString()
    {
        return root.toString();
    }

    public void clear()
    {
        root = new HTMLElement(rootName);
    }
}