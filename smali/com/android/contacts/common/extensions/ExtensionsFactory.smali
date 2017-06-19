.class public Lcom/android/contacts/common/extensions/ExtensionsFactory;
.super Ljava/lang/Object;
.source "ExtensionsFactory.java"


# static fields
.field private static final EXTENDED_PHONE_DIRECTORIES_KEY:Ljava/lang/String; = "extendedPhoneDirectories"

.field private static final EXTENSIONS_PROPERTIES:Ljava/lang/String; = "contacts_extensions.properties"

.field private static TAG:Ljava/lang/String;

.field private static mExtendedPhoneDirectoriesManager:Lcom/android/contacts/common/extensions/ExtendedPhoneDirectoriesManager;

.field private static sProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    const-string/jumbo v0, "ExtensionsFactory"

    sput-object v0, Lcom/android/contacts/common/extensions/ExtensionsFactory;->TAG:Ljava/lang/String;

    .line 43
    sput-object v1, Lcom/android/contacts/common/extensions/ExtensionsFactory;->sProperties:Ljava/util/Properties;

    .line 44
    sput-object v1, Lcom/android/contacts/common/extensions/ExtensionsFactory;->mExtendedPhoneDirectoriesManager:Lcom/android/contacts/common/extensions/ExtendedPhoneDirectoriesManager;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 73
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 75
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 80
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 81
    .local v3, "e":Ljava/lang/InstantiationException;
    sget-object v4, Lcom/android/contacts/common/extensions/ExtensionsFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": unable to create instance."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 78
    :catch_1
    move-exception v2

    .line 79
    .local v2, "e":Ljava/lang/IllegalAccessException;
    sget-object v4, Lcom/android/contacts/common/extensions/ExtensionsFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": unable to create instance."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 76
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v4, Lcom/android/contacts/common/extensions/ExtensionsFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": unable to create instance."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getExtendedPhoneDirectoriesManager()Lcom/android/contacts/common/extensions/ExtendedPhoneDirectoriesManager;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/android/contacts/common/extensions/ExtensionsFactory;->mExtendedPhoneDirectoriesManager:Lcom/android/contacts/common/extensions/ExtendedPhoneDirectoriesManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    sget-object v4, Lcom/android/contacts/common/extensions/ExtensionsFactory;->sProperties:Ljava/util/Properties;

    if-eqz v4, :cond_0

    .line 48
    return-void

    .line 51
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string/jumbo v5, "contacts_extensions.properties"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 52
    .local v3, "fileStream":Ljava/io/InputStream;
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    sput-object v4, Lcom/android/contacts/common/extensions/ExtensionsFactory;->sProperties:Ljava/util/Properties;

    .line 53
    sget-object v4, Lcom/android/contacts/common/extensions/ExtensionsFactory;->sProperties:Ljava/util/Properties;

    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 54
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 56
    sget-object v4, Lcom/android/contacts/common/extensions/ExtensionsFactory;->sProperties:Ljava/util/Properties;

    const-string/jumbo v5, "extendedPhoneDirectories"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 58
    invoke-static {v0}, Lcom/android/contacts/common/extensions/ExtensionsFactory;->createInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/extensions/ExtendedPhoneDirectoriesManager;

    sput-object v4, Lcom/android/contacts/common/extensions/ExtensionsFactory;->mExtendedPhoneDirectoriesManager:Lcom/android/contacts/common/extensions/ExtendedPhoneDirectoriesManager;

    .line 46
    .end local v0    # "className":Ljava/lang/String;
    .end local v3    # "fileStream":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 60
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v3    # "fileStream":Ljava/io/InputStream;
    :cond_1
    sget-object v4, Lcom/android/contacts/common/extensions/ExtensionsFactory;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "extendedPhoneDirectories not found in properties file."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 63
    .end local v0    # "className":Ljava/lang/String;
    .end local v3    # "fileStream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v4, Lcom/android/contacts/common/extensions/ExtensionsFactory;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "No custom extensions."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 67
    .local v2, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/contacts/common/extensions/ExtensionsFactory;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
