public class MyApp : Gtk.Application{
    public MyApp (){
        Object(
            flags: ApplicationFlags.FLAGS_NONE
        );
    }
    
    protected override void activate (){
        
        var grid = new Gtk.Grid ();
        grid.orientation = Gtk.Orientation.VERTICAL;
        
        grid.add (new Gtk.Label (_("Label 1")));
        grid.add (new Gtk.Label (_("Label 2")));
        
        var label = new Gtk.Label ("Hello Again World!");
        
        var button_hello = new Gtk.Button.with_label("Click me!"){
            margin = 12
        };
        
        button_hello.clicked.connect (() => {
            button_hello.label = "Hello World";
            button_hello.sensitive = false;
        });
        
        var main_window = new Gtk.ApplicationWindow (this){
            default_height = 300,
            default_width = 300,
            title = "Hello World"
        };
        
        main_window.add (grid);
        
        main_window.show_all ();
        
    }
    
    public static int main (string[] args){
        return new MyApp().run (args);
    }
}
