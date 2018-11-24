import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class MyTest {

    public static void main(String[] args)  throws  Exception {





        Document document = Jsoup.connect("https://flights.ctrip.com/itinerary/oneway/csx-sha").get();
        Elements elements = document.select("#base_bd")
                .select("div.base_main").select("div.searchresult_content")
                .select("div:nth-child(2)").select("div:nth-child(2)")
                .select("div:nth-child(1)").select("div:nth-child(1)")
                .select("div.search_table_header.search-table-header-expand")
                .select("div.logo")
                .select("div.logo-item.flight_logo")
                .select("div");
        System.out.println("哈哈哈哈");
        System.out.println("哈哈哈哈");
        for (Element element : elements) {
            System.out.println(element);
        }
    }
}
