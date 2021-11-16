.class public Lcom/ushahidi/android/app/data/HandleXml;
.super Ljava/lang/Object;
.source "HandleXml.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getImageManager()Lcom/ushahidi/android/app/ImageManager;
    .locals 1

    .prologue
    .line 320
    sget-object v0, Lcom/ushahidi/android/app/UshahidiApplication;->mImageManager:Lcom/ushahidi/android/app/ImageManager;

    return-object v0
.end method

.method public static processCategoriesXml(Ljava/lang/String;)Ljava/util/List;
    .locals 28
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/data/CategoriesData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    const-string v25, "StringXML"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "XML: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v4, "categoriesData":Ljava/util/List;, "Ljava/util/List<Lcom/ushahidi/android/app/data/CategoriesData;>;"
    const-string v3, ""

    .line 246
    .local v3, "categories":Ljava/lang/String;
    const/4 v2, 0x0

    .line 247
    .local v2, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v12, 0x0

    .line 249
    .local v12, "doc":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 258
    :goto_0
    if-nez v2, :cond_1

    .line 316
    :cond_0
    return-object v4

    .line 250
    :catch_0
    move-exception v13

    .line 252
    .local v13, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v13}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 253
    .end local v13    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v13

    .line 255
    .local v13, "e":Ljavax/xml/parsers/FactoryConfigurationError;
    invoke-virtual {v13}, Ljavax/xml/parsers/FactoryConfigurationError;->printStackTrace()V

    goto :goto_0

    .line 263
    .end local v13    # "e":Ljavax/xml/parsers/FactoryConfigurationError;
    :cond_1
    :try_start_1
    new-instance v15, Ljava/io/ByteArrayInputStream;

    const-string v25, "UTF8"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v15, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 264
    .local v15, "encXML":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v2, v15}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v12

    .line 277
    .end local v15    # "encXML":Ljava/io/ByteArrayInputStream;
    :goto_1
    if-eqz v12, :cond_0

    .line 279
    const-string v25, "category"

    move-object/from16 v0, v25

    invoke-interface {v12, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    .line 280
    .local v21, "node":Lorg/w3c/dom/NodeList;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    move/from16 v0, v17

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 281
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    .line 282
    .local v16, "firstNode":Lorg/w3c/dom/Node;
    new-instance v5, Lcom/ushahidi/android/app/data/CategoriesData;

    invoke-direct {v5}, Lcom/ushahidi/android/app/data/CategoriesData;-><init>()V

    .line 283
    .local v5, "category":Lcom/ushahidi/android/app/data/CategoriesData;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    move-object/from16 v14, v16

    .line 286
    check-cast v14, Lorg/w3c/dom/Element;

    .line 288
    .local v14, "element":Lorg/w3c/dom/Element;
    const-string v25, "id"

    move-object/from16 v0, v25

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 289
    .local v20, "idElementList":Lorg/w3c/dom/NodeList;
    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/Element;

    .line 291
    .local v19, "idElement":Lorg/w3c/dom/Element;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 292
    .local v18, "id":Lorg/w3c/dom/NodeList;
    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/ushahidi/android/app/data/CategoriesData;->setCategoryId(I)V

    .line 294
    const-string v25, "title"

    move-object/from16 v0, v25

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v24

    .line 295
    .local v24, "titleElementList":Lorg/w3c/dom/NodeList;
    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v23

    check-cast v23, Lorg/w3c/dom/Element;

    .line 297
    .local v23, "titleElement":Lorg/w3c/dom/Element;
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v22

    .line 298
    .local v22, "title":Lorg/w3c/dom/NodeList;
    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/ushahidi/android/app/data/CategoriesData;->setCategoryTitle(Ljava/lang/String;)V

    .line 299
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 301
    const-string v25, "description"

    move-object/from16 v0, v25

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 302
    .local v11, "descElementList":Lorg/w3c/dom/NodeList;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v11, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 304
    .local v10, "descElement":Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 305
    .local v9, "desc":Lorg/w3c/dom/NodeList;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v9, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/ushahidi/android/app/data/CategoriesData;->setCategoryDescription(Ljava/lang/String;)V

    .line 307
    const-string v25, "color"

    move-object/from16 v0, v25

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 308
    .local v8, "dateElementList":Lorg/w3c/dom/NodeList;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v8, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 310
    .local v7, "dateElement":Lorg/w3c/dom/Element;
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 311
    .local v6, "date":Lorg/w3c/dom/NodeList;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v6, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/ushahidi/android/app/data/CategoriesData;->setCategoryColor(Ljava/lang/String;)V

    .line 280
    .end local v6    # "date":Lorg/w3c/dom/NodeList;
    .end local v7    # "dateElement":Lorg/w3c/dom/Element;
    .end local v8    # "dateElementList":Lorg/w3c/dom/NodeList;
    .end local v9    # "desc":Lorg/w3c/dom/NodeList;
    .end local v10    # "descElement":Lorg/w3c/dom/Element;
    .end local v11    # "descElementList":Lorg/w3c/dom/NodeList;
    .end local v14    # "element":Lorg/w3c/dom/Element;
    .end local v18    # "id":Lorg/w3c/dom/NodeList;
    .end local v19    # "idElement":Lorg/w3c/dom/Element;
    .end local v20    # "idElementList":Lorg/w3c/dom/NodeList;
    .end local v22    # "title":Lorg/w3c/dom/NodeList;
    .end local v23    # "titleElement":Lorg/w3c/dom/Element;
    .end local v24    # "titleElementList":Lorg/w3c/dom/NodeList;
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 266
    .end local v5    # "category":Lcom/ushahidi/android/app/data/CategoriesData;
    .end local v16    # "firstNode":Lorg/w3c/dom/Node;
    .end local v17    # "i":I
    .end local v21    # "node":Lorg/w3c/dom/NodeList;
    :catch_2
    move-exception v13

    .line 268
    .local v13, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v13}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto/16 :goto_1

    .line 269
    .end local v13    # "e":Lorg/xml/sax/SAXException;
    :catch_3
    move-exception v13

    .line 271
    .local v13, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v13}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_1

    .line 272
    .end local v13    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_4
    move-exception v13

    .line 274
    .local v13, "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public static processIncidentsXml(Ljava/lang/String;)Ljava/util/List;
    .locals 67
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ushahidi/android/app/data/IncidentsData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    const-string v3, ""

    .line 52
    .local v3, "categories":Ljava/lang/String;
    const-string v55, ""

    .line 53
    .local v55, "thumbnail":Ljava/lang/String;
    const-string v25, ""

    .line 55
    .local v25, "image":Ljava/lang/String;
    const/4 v2, 0x0

    .line 56
    .local v2, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/16 v16, 0x0

    .line 57
    .local v16, "doc":Lorg/w3c/dom/Document;
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v29, "listIncidentsData":Ljava/util/List;, "Ljava/util/List<Lcom/ushahidi/android/app/data/IncidentsData;>;"
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 69
    :goto_0
    if-nez v2, :cond_1

    .line 238
    :cond_0
    :goto_1
    return-object v29

    .line 61
    :catch_0
    move-exception v17

    .line 63
    .local v17, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual/range {v17 .. v17}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 64
    .end local v17    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v17

    .line 66
    .local v17, "e":Ljavax/xml/parsers/FactoryConfigurationError;
    invoke-virtual/range {v17 .. v17}, Ljavax/xml/parsers/FactoryConfigurationError;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v17    # "e":Ljavax/xml/parsers/FactoryConfigurationError;
    :cond_1
    :try_start_1
    new-instance v19, Ljava/io/ByteArrayInputStream;

    const-string v64, "UTF8"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v64

    move-object/from16 v0, v19

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 74
    .local v19, "encXML":Ljava/io/ByteArrayInputStream;
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v16

    .line 83
    .end local v19    # "encXML":Ljava/io/ByteArrayInputStream;
    :goto_2
    if-eqz v16, :cond_0

    .line 85
    const-string v64, "incident"

    move-object/from16 v0, v16

    move-object/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v54

    .line 87
    .local v54, "node":Lorg/w3c/dom/NodeList;
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_3
    invoke-interface/range {v54 .. v54}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v64

    move/from16 v0, v21

    move/from16 v1, v64

    if-ge v0, v1, :cond_c

    .line 89
    move-object/from16 v0, v54

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    .line 90
    .local v20, "firstNode":Lorg/w3c/dom/Node;
    new-instance v27, Lcom/ushahidi/android/app/data/IncidentsData;

    invoke-direct/range {v27 .. v27}, Lcom/ushahidi/android/app/data/IncidentsData;-><init>()V

    .line 91
    .local v27, "incidentData":Lcom/ushahidi/android/app/data/IncidentsData;
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v64

    const/16 v65, 0x1

    move/from16 v0, v64

    move/from16 v1, v65

    if-ne v0, v1, :cond_b

    move-object/from16 v18, v20

    .line 94
    check-cast v18, Lorg/w3c/dom/Element;

    .line 96
    .local v18, "element":Lorg/w3c/dom/Element;
    const-string v64, "id"

    move-object/from16 v0, v18

    move-object/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v24

    .line 97
    .local v24, "idElementList":Lorg/w3c/dom/NodeList;
    const/16 v64, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v23

    check-cast v23, Lorg/w3c/dom/Element;

    .line 99
    .local v23, "idElement":Lorg/w3c/dom/Element;
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v22

    .line 101
    .local v22, "id":Lorg/w3c/dom/NodeList;
    const/16 v64, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v64

    invoke-interface/range {v64 .. v64}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v64

    move-object/from16 v0, v27

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentId(I)V

    .line 103
    const-string v64, "title"

    move-object/from16 v0, v18

    move-object/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v59

    .line 104
    .local v59, "titleElementList":Lorg/w3c/dom/NodeList;
    const/16 v64, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Element;

    .line 106
    .local v58, "titleElement":Lorg/w3c/dom/Element;
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v57

    .line 107
    .local v57, "title":Lorg/w3c/dom/NodeList;
    const/16 v64, 0x0

    move-object/from16 v0, v57

    move/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v64

    invoke-interface/range {v64 .. v64}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, v27

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentTitle(Ljava/lang/String;)V

    .line 109
    const-string v64, "description"

    move-object/from16 v0, v18

    move-object/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 110
    .local v15, "descElementList":Lorg/w3c/dom/NodeList;
    const/16 v64, 0x0

    move/from16 v0, v64

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    .line 112
    .local v14, "descElement":Lorg/w3c/dom/Element;
    invoke-interface {v14}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 113
    .local v13, "desc":Lorg/w3c/dom/NodeList;
    const/16 v64, 0x0

    move/from16 v0, v64

    invoke-interface {v13, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v64

    invoke-interface/range {v64 .. v64}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, v27

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentDesc(Ljava/lang/String;)V

    .line 115
    const-string v64, "date"

    move-object/from16 v0, v18

    move-object/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 116
    .local v12, "dateElementList":Lorg/w3c/dom/NodeList;
    const/16 v64, 0x0

    move/from16 v0, v64

    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 118
    .local v11, "dateElement":Lorg/w3c/dom/Element;
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 119
    .local v10, "date":Lorg/w3c/dom/NodeList;
    const/16 v64, 0x0

    move/from16 v0, v64

    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v64

    invoke-interface/range {v64 .. v64}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, v27

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentDate(Ljava/lang/String;)V

    .line 121
    const-string v64, "mode"

    move-object/from16 v0, v18

    move-object/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v53

    .line 122
    .local v53, "modeElementList":Lorg/w3c/dom/NodeList;
    const/16 v64, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v52

    check-cast v52, Lorg/w3c/dom/Element;

    .line 124
    .local v52, "modeElement":Lorg/w3c/dom/Element;
    invoke-interface/range {v52 .. v52}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v51

    .line 125
    .local v51, "mode":Lorg/w3c/dom/NodeList;
    const/16 v64, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v64

    invoke-interface/range {v64 .. v64}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v64

    move-object/from16 v0, v27

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentMode(I)V

    .line 127
    const-string v64, "verified"

    move-object/from16 v0, v18

    move-object/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v62

    .line 128
    .local v62, "verifiedElementList":Lorg/w3c/dom/NodeList;
    const/16 v64, 0x0

    move-object/from16 v0, v62

    move/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v61

    check-cast v61, Lorg/w3c/dom/Element;

    .line 130
    .local v61, "verifiedElement":Lorg/w3c/dom/Element;
    invoke-interface/range {v61 .. v61}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v60

    .line 131
    .local v60, "verified":Lorg/w3c/dom/NodeList;
    const/16 v64, 0x0

    .line 132
    move-object/from16 v0, v60

    move/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v64

    invoke-interface/range {v64 .. v64}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v64

    move-object/from16 v0, v27

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentVerified(I)V

    .line 135
    const-string v64, "location"

    move-object/from16 v0, v18

    move-object/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v31

    .line 137
    .local v31, "locationElementList":Lorg/w3c/dom/NodeList;
    const/16 v64, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v41

    .local v41, "locationNode":Lorg/w3c/dom/Node;
    move-object/from16 v30, v41

    .line 139
    check-cast v30, Lorg/w3c/dom/Element;

    .line 140
    .local v30, "locationElement":Lorg/w3c/dom/Element;
    const-string v64, "name"

    move-object/from16 v0, v30

    move-object/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v40

    .line 142
    .local v40, "locationNameList":Lorg/w3c/dom/NodeList;
    const/16 v64, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v37

    check-cast v37, Lorg/w3c/dom/Element;

    .line 143
    .local v37, "locationInnerNameElement":Lorg/w3c/dom/Element;
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v36

    .line 144
    .local v36, "locationInnerName":Lorg/w3c/dom/NodeList;
    const/16 v64, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v64

    invoke-interface/range {v64 .. v64}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, v27

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentLocation(Ljava/lang/String;)V

    .line 146
    const-string v64, "latitude"

    move-object/from16 v0, v30

    move-object/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v38

    .line 148
    .local v38, "locationLatitudeList":Lorg/w3c/dom/NodeList;
    const/16 v64, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v33

    check-cast v33, Lorg/w3c/dom/Element;

    .line 149
    .local v33, "locationInnerLatitudeElement":Lorg/w3c/dom/Element;
    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v32

    .line 150
    .local v32, "locationInnerLatitude":Lorg/w3c/dom/NodeList;
    const/16 v64, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v64

    invoke-interface/range {v64 .. v64}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, v27

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentLocLatitude(Ljava/lang/String;)V

    .line 152
    const-string v64, "longitude"

    move-object/from16 v0, v30

    move-object/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v39

    .line 154
    .local v39, "locationLongitudeList":Lorg/w3c/dom/NodeList;
    const/16 v64, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    check-cast v35, Lorg/w3c/dom/Element;

    .line 155
    .local v35, "locationInnerLongitudeElement":Lorg/w3c/dom/Element;
    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v34

    .line 156
    .local v34, "locationInnerLongitude":Lorg/w3c/dom/NodeList;
    const/16 v64, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v64

    .line 157
    invoke-interface/range {v64 .. v64}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v64

    .line 156
    move-object/from16 v0, v27

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentLocLongitude(Ljava/lang/String;)V

    .line 160
    const-string v64, "category"

    move-object/from16 v0, v18

    move-object/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 161
    .local v7, "categoryList":Lorg/w3c/dom/NodeList;
    const/16 v63, 0x0

    .local v63, "w":I
    :goto_4
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v64

    move/from16 v0, v63

    move/from16 v1, v64

    if-ge v0, v1, :cond_4

    .line 163
    move/from16 v0, v63

    invoke-interface {v7, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 164
    .local v9, "categoryNode":Lorg/w3c/dom/Node;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v64

    const/16 v65, 0x1

    move/from16 v0, v64

    move/from16 v1, v65

    if-ne v0, v1, :cond_2

    move-object v4, v9

    .line 165
    check-cast v4, Lorg/w3c/dom/Element;

    .line 166
    .local v4, "categoryElement":Lorg/w3c/dom/Element;
    const-string v64, "title"

    move-object/from16 v0, v64

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 167
    .local v8, "categoryNameList":Lorg/w3c/dom/NodeList;
    const/16 v64, 0x0

    move/from16 v0, v64

    invoke-interface {v8, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 168
    .local v6, "categoryInnerTitleElement":Lorg/w3c/dom/Element;
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 169
    .local v5, "categoryInnerTitle":Lorg/w3c/dom/NodeList;
    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v64

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v64

    add-int/lit8 v64, v64, -0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_3

    const/16 v64, 0x0

    .line 170
    move/from16 v0, v64

    invoke-interface {v5, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v64

    invoke-interface/range {v64 .. v64}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v64

    .line 171
    :goto_5
    move-object/from16 v0, v65

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 161
    .end local v4    # "categoryElement":Lorg/w3c/dom/Element;
    .end local v5    # "categoryInnerTitle":Lorg/w3c/dom/NodeList;
    .end local v6    # "categoryInnerTitleElement":Lorg/w3c/dom/Element;
    .end local v8    # "categoryNameList":Lorg/w3c/dom/NodeList;
    :cond_2
    add-int/lit8 v63, v63, 0x1

    goto :goto_4

    .line 75
    .end local v7    # "categoryList":Lorg/w3c/dom/NodeList;
    .end local v9    # "categoryNode":Lorg/w3c/dom/Node;
    .end local v10    # "date":Lorg/w3c/dom/NodeList;
    .end local v11    # "dateElement":Lorg/w3c/dom/Element;
    .end local v12    # "dateElementList":Lorg/w3c/dom/NodeList;
    .end local v13    # "desc":Lorg/w3c/dom/NodeList;
    .end local v14    # "descElement":Lorg/w3c/dom/Element;
    .end local v15    # "descElementList":Lorg/w3c/dom/NodeList;
    .end local v18    # "element":Lorg/w3c/dom/Element;
    .end local v20    # "firstNode":Lorg/w3c/dom/Node;
    .end local v21    # "i":I
    .end local v22    # "id":Lorg/w3c/dom/NodeList;
    .end local v23    # "idElement":Lorg/w3c/dom/Element;
    .end local v24    # "idElementList":Lorg/w3c/dom/NodeList;
    .end local v27    # "incidentData":Lcom/ushahidi/android/app/data/IncidentsData;
    .end local v30    # "locationElement":Lorg/w3c/dom/Element;
    .end local v31    # "locationElementList":Lorg/w3c/dom/NodeList;
    .end local v32    # "locationInnerLatitude":Lorg/w3c/dom/NodeList;
    .end local v33    # "locationInnerLatitudeElement":Lorg/w3c/dom/Element;
    .end local v34    # "locationInnerLongitude":Lorg/w3c/dom/NodeList;
    .end local v35    # "locationInnerLongitudeElement":Lorg/w3c/dom/Element;
    .end local v36    # "locationInnerName":Lorg/w3c/dom/NodeList;
    .end local v37    # "locationInnerNameElement":Lorg/w3c/dom/Element;
    .end local v38    # "locationLatitudeList":Lorg/w3c/dom/NodeList;
    .end local v39    # "locationLongitudeList":Lorg/w3c/dom/NodeList;
    .end local v40    # "locationNameList":Lorg/w3c/dom/NodeList;
    .end local v41    # "locationNode":Lorg/w3c/dom/Node;
    .end local v51    # "mode":Lorg/w3c/dom/NodeList;
    .end local v52    # "modeElement":Lorg/w3c/dom/Element;
    .end local v53    # "modeElementList":Lorg/w3c/dom/NodeList;
    .end local v54    # "node":Lorg/w3c/dom/NodeList;
    .end local v57    # "title":Lorg/w3c/dom/NodeList;
    .end local v58    # "titleElement":Lorg/w3c/dom/Element;
    .end local v59    # "titleElementList":Lorg/w3c/dom/NodeList;
    .end local v60    # "verified":Lorg/w3c/dom/NodeList;
    .end local v61    # "verifiedElement":Lorg/w3c/dom/Element;
    .end local v62    # "verifiedElementList":Lorg/w3c/dom/NodeList;
    .end local v63    # "w":I
    :catch_2
    move-exception v17

    .line 77
    .local v17, "e":Lorg/xml/sax/SAXException;
    invoke-virtual/range {v17 .. v17}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto/16 :goto_2

    .line 78
    .end local v17    # "e":Lorg/xml/sax/SAXException;
    :catch_3
    move-exception v17

    .line 80
    .local v17, "e":Ljava/io/IOException;
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 170
    .end local v17    # "e":Ljava/io/IOException;
    .restart local v4    # "categoryElement":Lorg/w3c/dom/Element;
    .restart local v5    # "categoryInnerTitle":Lorg/w3c/dom/NodeList;
    .restart local v6    # "categoryInnerTitleElement":Lorg/w3c/dom/Element;
    .restart local v7    # "categoryList":Lorg/w3c/dom/NodeList;
    .restart local v8    # "categoryNameList":Lorg/w3c/dom/NodeList;
    .restart local v9    # "categoryNode":Lorg/w3c/dom/Node;
    .restart local v10    # "date":Lorg/w3c/dom/NodeList;
    .restart local v11    # "dateElement":Lorg/w3c/dom/Element;
    .restart local v12    # "dateElementList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "desc":Lorg/w3c/dom/NodeList;
    .restart local v14    # "descElement":Lorg/w3c/dom/Element;
    .restart local v15    # "descElementList":Lorg/w3c/dom/NodeList;
    .restart local v18    # "element":Lorg/w3c/dom/Element;
    .restart local v20    # "firstNode":Lorg/w3c/dom/Node;
    .restart local v21    # "i":I
    .restart local v22    # "id":Lorg/w3c/dom/NodeList;
    .restart local v23    # "idElement":Lorg/w3c/dom/Element;
    .restart local v24    # "idElementList":Lorg/w3c/dom/NodeList;
    .restart local v27    # "incidentData":Lcom/ushahidi/android/app/data/IncidentsData;
    .restart local v30    # "locationElement":Lorg/w3c/dom/Element;
    .restart local v31    # "locationElementList":Lorg/w3c/dom/NodeList;
    .restart local v32    # "locationInnerLatitude":Lorg/w3c/dom/NodeList;
    .restart local v33    # "locationInnerLatitudeElement":Lorg/w3c/dom/Element;
    .restart local v34    # "locationInnerLongitude":Lorg/w3c/dom/NodeList;
    .restart local v35    # "locationInnerLongitudeElement":Lorg/w3c/dom/Element;
    .restart local v36    # "locationInnerName":Lorg/w3c/dom/NodeList;
    .restart local v37    # "locationInnerNameElement":Lorg/w3c/dom/Element;
    .restart local v38    # "locationLatitudeList":Lorg/w3c/dom/NodeList;
    .restart local v39    # "locationLongitudeList":Lorg/w3c/dom/NodeList;
    .restart local v40    # "locationNameList":Lorg/w3c/dom/NodeList;
    .restart local v41    # "locationNode":Lorg/w3c/dom/Node;
    .restart local v51    # "mode":Lorg/w3c/dom/NodeList;
    .restart local v52    # "modeElement":Lorg/w3c/dom/Element;
    .restart local v53    # "modeElementList":Lorg/w3c/dom/NodeList;
    .restart local v54    # "node":Lorg/w3c/dom/NodeList;
    .restart local v57    # "title":Lorg/w3c/dom/NodeList;
    .restart local v58    # "titleElement":Lorg/w3c/dom/Element;
    .restart local v59    # "titleElementList":Lorg/w3c/dom/NodeList;
    .restart local v60    # "verified":Lorg/w3c/dom/NodeList;
    .restart local v61    # "verifiedElement":Lorg/w3c/dom/Element;
    .restart local v62    # "verifiedElementList":Lorg/w3c/dom/NodeList;
    .restart local v63    # "w":I
    :cond_3
    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v66, 0x0

    move/from16 v0, v66

    invoke-interface {v5, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v66

    .line 171
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v66

    move-object/from16 v0, v64

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v66, ","

    move-object/from16 v0, v64

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    goto :goto_5

    .line 175
    .end local v4    # "categoryElement":Lorg/w3c/dom/Element;
    .end local v5    # "categoryInnerTitle":Lorg/w3c/dom/NodeList;
    .end local v6    # "categoryInnerTitleElement":Lorg/w3c/dom/Element;
    .end local v8    # "categoryNameList":Lorg/w3c/dom/NodeList;
    .end local v9    # "categoryNode":Lorg/w3c/dom/Node;
    :cond_4
    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentCategories(Ljava/lang/String;)V

    .line 176
    const-string v3, ""

    .line 180
    const-string v64, "media"

    move-object/from16 v0, v18

    move-object/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v47

    .line 181
    .local v47, "mediaList":Lorg/w3c/dom/NodeList;
    const/16 v28, 0x0

    .local v28, "j":I
    :goto_6
    invoke-interface/range {v47 .. v47}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v64

    move/from16 v0, v28

    move/from16 v1, v64

    if-ge v0, v1, :cond_a

    .line 183
    move-object/from16 v0, v47

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v48

    .line 184
    .local v48, "mediaNode":Lorg/w3c/dom/Node;
    invoke-interface/range {v48 .. v48}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v64

    const/16 v65, 0x1

    move/from16 v0, v64

    move/from16 v1, v65

    if-ne v0, v1, :cond_8

    move-object/from16 v42, v48

    .line 185
    check-cast v42, Lorg/w3c/dom/Element;

    .line 186
    .local v42, "mediaElement":Lorg/w3c/dom/Element;
    const-string v64, "thumb"

    move-object/from16 v0, v42

    move-object/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v50

    .line 188
    .local v50, "mediaThumbList":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v50 .. v50}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v64

    if-eqz v64, :cond_6

    .line 190
    const/16 v64, 0x0

    move-object/from16 v0, v50

    move/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v46

    check-cast v46, Lorg/w3c/dom/Element;

    .line 191
    .local v46, "mediaInnerThumbElement":Lorg/w3c/dom/Element;
    invoke-interface/range {v46 .. v46}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v49

    .line 193
    .local v49, "mediaThumb":Lorg/w3c/dom/NodeList;
    const/16 v64, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v64

    invoke-interface/range {v64 .. v64}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v64

    const-string v65, ""

    invoke-virtual/range {v64 .. v65}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-nez v64, :cond_5

    .line 195
    sget-object v64, Lcom/ushahidi/android/app/UshahidiService;->mNewIncidentsThumbnails:Ljava/util/Vector;

    const/16 v65, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v65

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v65

    .line 196
    invoke-interface/range {v65 .. v65}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v65

    .line 195
    invoke-virtual/range {v64 .. v65}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_5
    new-instance v56, Ljava/io/File;

    const/16 v64, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v64

    invoke-interface/range {v64 .. v64}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, v56

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v56, "thumbnailFilename":Ljava/io/File;
    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v64

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-interface/range {v47 .. v47}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v64

    add-int/lit8 v64, v64, -0x1

    move/from16 v0, v28

    move/from16 v1, v64

    if-ne v0, v1, :cond_9

    .line 201
    invoke-virtual/range {v56 .. v56}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v64

    :goto_7
    move-object/from16 v0, v65

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    .line 204
    .end local v46    # "mediaInnerThumbElement":Lorg/w3c/dom/Element;
    .end local v49    # "mediaThumb":Lorg/w3c/dom/NodeList;
    .end local v56    # "thumbnailFilename":Ljava/io/File;
    :cond_6
    const-string v64, "link"

    move-object/from16 v0, v42

    move-object/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v44

    .line 206
    .local v44, "mediaImageList":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v44 .. v44}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v64

    if-eqz v64, :cond_8

    .line 207
    const/16 v64, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v45

    check-cast v45, Lorg/w3c/dom/Element;

    .line 208
    .local v45, "mediaInnerImageElement":Lorg/w3c/dom/Element;
    invoke-interface/range {v45 .. v45}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v43

    .line 209
    .local v43, "mediaImage":Lorg/w3c/dom/NodeList;
    const/16 v64, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v64

    invoke-interface/range {v64 .. v64}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v64

    const-string v65, ""

    invoke-virtual/range {v64 .. v65}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-nez v64, :cond_7

    .line 210
    sget-object v64, Lcom/ushahidi/android/app/UshahidiService;->mNewIncidentsImages:Ljava/util/Vector;

    const/16 v65, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v65

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v65

    .line 211
    invoke-interface/range {v65 .. v65}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v65

    .line 210
    invoke-virtual/range {v64 .. v65}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_7
    new-instance v26, Ljava/io/File;

    const/16 v64, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v64

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v64

    invoke-interface/range {v64 .. v64}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, v26

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v26, "imageFilename":Ljava/io/File;
    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v64

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, ","

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 181
    .end local v26    # "imageFilename":Ljava/io/File;
    .end local v42    # "mediaElement":Lorg/w3c/dom/Element;
    .end local v43    # "mediaImage":Lorg/w3c/dom/NodeList;
    .end local v44    # "mediaImageList":Lorg/w3c/dom/NodeList;
    .end local v45    # "mediaInnerImageElement":Lorg/w3c/dom/Element;
    .end local v50    # "mediaThumbList":Lorg/w3c/dom/NodeList;
    :cond_8
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_6

    .line 201
    .restart local v42    # "mediaElement":Lorg/w3c/dom/Element;
    .restart local v46    # "mediaInnerThumbElement":Lorg/w3c/dom/Element;
    .restart local v49    # "mediaThumb":Lorg/w3c/dom/NodeList;
    .restart local v50    # "mediaThumbList":Lorg/w3c/dom/NodeList;
    .restart local v56    # "thumbnailFilename":Ljava/io/File;
    :cond_9
    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v56 .. v56}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v66

    move-object/from16 v0, v64

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v66, ","

    move-object/from16 v0, v64

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    goto/16 :goto_7

    .line 225
    .end local v42    # "mediaElement":Lorg/w3c/dom/Element;
    .end local v46    # "mediaInnerThumbElement":Lorg/w3c/dom/Element;
    .end local v48    # "mediaNode":Lorg/w3c/dom/Node;
    .end local v49    # "mediaThumb":Lorg/w3c/dom/NodeList;
    .end local v50    # "mediaThumbList":Lorg/w3c/dom/NodeList;
    .end local v56    # "thumbnailFilename":Ljava/io/File;
    :cond_a
    move-object/from16 v0, v27

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentThumbnail(Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/ushahidi/android/app/data/IncidentsData;->setIncidentImage(Ljava/lang/String;)V

    .line 227
    const-string v55, ""

    .line 228
    const-string v25, ""

    .line 87
    .end local v7    # "categoryList":Lorg/w3c/dom/NodeList;
    .end local v10    # "date":Lorg/w3c/dom/NodeList;
    .end local v11    # "dateElement":Lorg/w3c/dom/Element;
    .end local v12    # "dateElementList":Lorg/w3c/dom/NodeList;
    .end local v13    # "desc":Lorg/w3c/dom/NodeList;
    .end local v14    # "descElement":Lorg/w3c/dom/Element;
    .end local v15    # "descElementList":Lorg/w3c/dom/NodeList;
    .end local v18    # "element":Lorg/w3c/dom/Element;
    .end local v22    # "id":Lorg/w3c/dom/NodeList;
    .end local v23    # "idElement":Lorg/w3c/dom/Element;
    .end local v24    # "idElementList":Lorg/w3c/dom/NodeList;
    .end local v28    # "j":I
    .end local v30    # "locationElement":Lorg/w3c/dom/Element;
    .end local v31    # "locationElementList":Lorg/w3c/dom/NodeList;
    .end local v32    # "locationInnerLatitude":Lorg/w3c/dom/NodeList;
    .end local v33    # "locationInnerLatitudeElement":Lorg/w3c/dom/Element;
    .end local v34    # "locationInnerLongitude":Lorg/w3c/dom/NodeList;
    .end local v35    # "locationInnerLongitudeElement":Lorg/w3c/dom/Element;
    .end local v36    # "locationInnerName":Lorg/w3c/dom/NodeList;
    .end local v37    # "locationInnerNameElement":Lorg/w3c/dom/Element;
    .end local v38    # "locationLatitudeList":Lorg/w3c/dom/NodeList;
    .end local v39    # "locationLongitudeList":Lorg/w3c/dom/NodeList;
    .end local v40    # "locationNameList":Lorg/w3c/dom/NodeList;
    .end local v41    # "locationNode":Lorg/w3c/dom/Node;
    .end local v47    # "mediaList":Lorg/w3c/dom/NodeList;
    .end local v51    # "mode":Lorg/w3c/dom/NodeList;
    .end local v52    # "modeElement":Lorg/w3c/dom/Element;
    .end local v53    # "modeElementList":Lorg/w3c/dom/NodeList;
    .end local v57    # "title":Lorg/w3c/dom/NodeList;
    .end local v58    # "titleElement":Lorg/w3c/dom/Element;
    .end local v59    # "titleElementList":Lorg/w3c/dom/NodeList;
    .end local v60    # "verified":Lorg/w3c/dom/NodeList;
    .end local v61    # "verifiedElement":Lorg/w3c/dom/Element;
    .end local v62    # "verifiedElementList":Lorg/w3c/dom/NodeList;
    .end local v63    # "w":I
    :cond_b
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3

    .line 235
    .end local v20    # "firstNode":Lorg/w3c/dom/Node;
    .end local v27    # "incidentData":Lcom/ushahidi/android/app/data/IncidentsData;
    :cond_c
    sget-object v64, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    invoke-static/range {v64 .. v64}, Lcom/ushahidi/android/app/ImageManager;->saveThumbnail(Ljava/lang/String;)V

    .line 236
    sget-object v64, Lcom/ushahidi/android/app/UshahidiPref;->savePath:Ljava/lang/String;

    invoke-static/range {v64 .. v64}, Lcom/ushahidi/android/app/ImageManager;->saveImage(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
