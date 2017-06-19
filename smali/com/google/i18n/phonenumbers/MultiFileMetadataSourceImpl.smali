.class final Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;
.super Ljava/lang/Object;
.source "MultiFileMetadataSourceImpl.java"

# interfaces
.implements Lcom/google/i18n/phonenumbers/MetadataSource;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final currentFilePrefix:Ljava/lang/String;

.field private final metadataLoader:Lcom/google/i18n/phonenumbers/MetadataLoader;

.field private final regionToMetadataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 37
    sput-object v0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->logger:Ljava/util/logging/Logger;

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/google/i18n/phonenumbers/MetadataLoader;)V
    .locals 1
    .param p1, "metadataLoader"    # Lcom/google/i18n/phonenumbers/MetadataLoader;

    .prologue
    .line 71
    const-string/jumbo v0, "/com/google/i18n/phonenumbers/data/PhoneNumberMetadataProto"

    invoke-direct {p0, v0, p1}, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;-><init>(Ljava/lang/String;Lcom/google/i18n/phonenumbers/MetadataLoader;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/i18n/phonenumbers/MetadataLoader;)V
    .locals 1
    .param p1, "currentFilePrefix"    # Ljava/lang/String;
    .param p2, "metadataLoader"    # Lcom/google/i18n/phonenumbers/MetadataLoader;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->regionToMetadataMap:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    .line 65
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->currentFilePrefix:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->metadataLoader:Lcom/google/i18n/phonenumbers/MetadataLoader;

    .line 64
    return-void
.end method

.method private static loadMetadataAndCloseInput(Ljava/io/ObjectInputStream;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .locals 6
    .param p0, "source"    # Ljava/io/ObjectInputStream;

    .prologue
    .line 141
    new-instance v1, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    invoke-direct {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;-><init>()V

    .line 143
    .local v1, "metadataCollection":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :try_start_1
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    :goto_0
    return-object v1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v4, "error closing input stream (ignored)"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 144
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 145
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    sget-object v2, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v4, "error reading input (ignored)"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    :try_start_3
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 149
    :catch_2
    move-exception v0

    .line 150
    sget-object v2, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v4, "error closing input stream (ignored)"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 146
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 148
    :try_start_4
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 146
    :goto_1
    throw v2

    .line 149
    :catch_3
    move-exception v0

    .line 150
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v3, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v5, "error closing input stream (ignored)"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public getMetadataForNonGeographicalRegion(I)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 4
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 88
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->currentFilePrefix:Ljava/lang/String;

    const-string/jumbo v2, "001"

    .line 91
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->metadataLoader:Lcom/google/i18n/phonenumbers/MetadataLoader;

    .line 90
    invoke-virtual {p0, v0, v2, p1, v3}, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->loadMetadataFromFile(Ljava/lang/String;Ljava/lang/String;ILcom/google/i18n/phonenumbers/MetadataLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 94
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    return-object v0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 4
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->regionToMetadataMap:Ljava/util/Map;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->regionToMetadataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->currentFilePrefix:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->metadataLoader:Lcom/google/i18n/phonenumbers/MetadataLoader;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, p1, v3, v2}, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->loadMetadataFromFile(Ljava/lang/String;Ljava/lang/String;ILcom/google/i18n/phonenumbers/MetadataLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 83
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->regionToMetadataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method loadMetadataFromFile(Ljava/lang/String;Ljava/lang/String;ILcom/google/i18n/phonenumbers/MetadataLoader;)V
    .locals 14
    .param p1, "filePrefix"    # Ljava/lang/String;
    .param p2, "regionCode"    # Ljava/lang/String;
    .param p3, "countryCallingCode"    # I
    .param p4, "metadataLoader"    # Lcom/google/i18n/phonenumbers/MetadataLoader;

    .prologue
    .line 100
    const-string/jumbo v10, "001"

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 101
    .local v5, "isNonGeoRegion":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 102
    if-eqz v5, :cond_0

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 101
    :goto_0
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "fileName":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lcom/google/i18n/phonenumbers/MetadataLoader;->loadMetadata(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 104
    .local v9, "source":Ljava/io/InputStream;
    if-nez v9, :cond_1

    .line 105
    sget-object v10, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->logger:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "missing metadata: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 106
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "missing metadata: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .end local v2    # "fileName":Ljava/lang/String;
    .end local v9    # "source":Ljava/io/InputStream;
    :cond_0
    move-object/from16 v10, p2

    .line 102
    goto :goto_0

    .line 108
    .restart local v2    # "fileName":Ljava/lang/String;
    .restart local v9    # "source":Ljava/io/InputStream;
    :cond_1
    const/4 v3, 0x0

    .line 110
    .local v3, "in":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v9}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    .local v4, "in":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-static {v4}, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->loadMetadataAndCloseInput(Ljava/io/ObjectInputStream;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    .end local v3    # "in":Ljava/io/ObjectInputStream;
    move-result-object v7

    .line 112
    .local v7, "metadataCollection":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    invoke-virtual {v7}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->getMetadataList()Ljava/util/List;

    move-result-object v8

    .line 113
    .local v8, "metadataList":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 114
    sget-object v10, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->logger:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "empty metadata: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 115
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "empty metadata: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    .end local v7    # "metadataCollection":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .end local v8    # "metadataList":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v3, v4

    .line 127
    .end local v4    # "in":Ljava/io/ObjectInputStream;
    :goto_1
    sget-object v10, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->logger:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "cannot load/parse metadata: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "cannot load/parse metadata: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 117
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "in":Ljava/io/ObjectInputStream;
    .restart local v7    # "metadataCollection":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .restart local v8    # "metadataList":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    :cond_2
    :try_start_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_3

    .line 118
    sget-object v10, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->logger:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "invalid metadata (too many entries): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 120
    :cond_3
    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 121
    .local v6, "metadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v5, :cond_4

    .line 122
    iget-object v10, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :goto_2
    return-void

    .line 124
    :cond_4
    iget-object v10, p0, Lcom/google/i18n/phonenumbers/MultiFileMetadataSourceImpl;->regionToMetadataMap:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v10, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 126
    .end local v4    # "in":Ljava/io/ObjectInputStream;
    .end local v6    # "metadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v7    # "metadataCollection":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .end local v8    # "metadataList":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    .restart local v3    # "in":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1
.end method
