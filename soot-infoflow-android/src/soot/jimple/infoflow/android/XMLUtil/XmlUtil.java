package soot.jimple.infoflow.android.XMLUtil;

import java.io.File;
import java.io.FileOutputStream;
import java.io.StringWriter;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Document;

public class XmlUtil
{
    public static String getXmlString(String xmlPath)
    {

        //Use method to convert XML string content to XML Document object
        Document xmlDocument = convertXMLFileToXMLDocument(xmlPath);

        //Write to file or print XML
        return writeXmlDocumentToXmlFile(xmlDocument, xmlPath);
    }

    private static Document convertXMLFileToXMLDocument(String filePath)
    {
        //Parser that produces DOM object trees from XML content
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();

        //API to obtain DOM Document instance
        DocumentBuilder builder = null;
        try
        {
            //Create DocumentBuilder with default configuration
            builder = factory.newDocumentBuilder();

            //Parse the content to Document object

            return builder.parse(new File(filePath));
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return null;
    }

    private static String writeXmlDocumentToXmlFile(Document xmlDocument, String fileName)
    {
        TransformerFactory tf = TransformerFactory.newInstance();
        Transformer transformer;
        try {
            transformer = tf.newTransformer();

            // Uncomment if you do not require XML declaration
            // transformer.setOutputProperty(OutputKeys.OMIT_XML_DECLARATION, "yes");

            //Print XML or Logs or Console
            StringWriter writer = new StringWriter();
            transformer.transform(new DOMSource(xmlDocument), new StreamResult(writer));
            //System.out.println(xmlString);
            return writer.getBuffer().toString();

//            //Write XML to file
//            FileOutputStream outStream = new FileOutputStream(new File(fileName));
//            transformer.transform(new DOMSource(xmlDocument), new StreamResult(outStream));
        } catch (Exception e)
        {
            e.printStackTrace();
            return "";
        }
    }
}