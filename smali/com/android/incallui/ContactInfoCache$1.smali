.class Lcom/android/incallui/ContactInfoCache$1;
.super Landroid/os/AsyncTask;
.source "ContactInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/ContactInfoCache;->maybeInsertCnapInformationIntoCache(Landroid/content/Context;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/ContactInfoCache;

.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$call:Lcom/android/incallui/Call;

.field final synthetic val$info:Lcom/android/incallui/CallerInfo;


# direct methods
.method constructor <init>(Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/Call;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/ContactInfoCache;
    .param p2, "val$info"    # Lcom/android/incallui/CallerInfo;
    .param p3, "val$call"    # Lcom/android/incallui/Call;
    .param p4, "val$applicationContext"    # Landroid/content/Context;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache$1;->this$0:Lcom/android/incallui/ContactInfoCache;

    iput-object p2, p0, Lcom/android/incallui/ContactInfoCache$1;->val$info:Lcom/android/incallui/CallerInfo;

    iput-object p3, p0, Lcom/android/incallui/ContactInfoCache$1;->val$call:Lcom/android/incallui/Call;

    iput-object p4, p0, Lcom/android/incallui/ContactInfoCache$1;->val$applicationContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 129
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/incallui/ContactInfoCache$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/16 v9, 0xc

    .line 130
    new-instance v1, Lcom/android/dialer/calllog/ContactInfo;

    invoke-direct {v1}, Lcom/android/dialer/calllog/ContactInfo;-><init>()V

    .line 131
    .local v1, "contactInfo":Lcom/android/dialer/calllog/ContactInfo;
    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$1;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache;->-get1(Lcom/android/incallui/ContactInfoCache;)Lcom/android/dialer/service/CachedNumberLookupService;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/android/dialer/service/CachedNumberLookupService;->buildCachedContactInfo(Lcom/android/dialer/calllog/ContactInfo;)Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;

    move-result-object v0

    .line 133
    .local v0, "cacheInfo":Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;
    const-string/jumbo v5, "CNAP"

    const-wide/16 v6, 0x0

    const/4 v8, 0x5

    invoke-interface {v0, v8, v5, v6, v7}, Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;->setSource(ILjava/lang/String;J)V

    .line 134
    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$1;->val$info:Lcom/android/incallui/CallerInfo;

    iget-object v5, v5, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v5, v1, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 135
    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$1;->val$call:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 136
    iput v9, v1, Lcom/android/dialer/calllog/ContactInfo;->type:I

    .line 138
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v6, "vnd.android.cursor.item/phone_v2"

    .line 139
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 140
    const-string/jumbo v8, "data1"

    iget-object v9, v1, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 139
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    .line 141
    const-string/jumbo v8, "data2"

    const/16 v9, 0xc

    .line 139
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    .line 138
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 142
    .local v2, "contactRows":Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 143
    const-string/jumbo v6, "display_name"

    iget-object v7, v1, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 142
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 144
    const-string/jumbo v6, "display_name_source"

    const/16 v7, 0x28

    .line 142
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    .line 145
    const-string/jumbo v6, "vnd.android.cursor.item/contact"

    .line 142
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "jsonString":Ljava/lang/String;
    invoke-interface {v0, v4}, Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;->setLookupKey(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v2    # "contactRows":Lorg/json/JSONObject;
    .end local v4    # "jsonString":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$1;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache;->-get1(Lcom/android/incallui/ContactInfoCache;)Lcom/android/dialer/service/CachedNumberLookupService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/ContactInfoCache$1;->val$applicationContext:Landroid/content/Context;

    invoke-interface {v5, v6, v0}, Lcom/android/dialer/service/CachedNumberLookupService;->addContact(Landroid/content/Context;Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;)V

    .line 151
    const/4 v5, 0x0

    return-object v5

    .line 147
    :catch_0
    move-exception v3

    .line 148
    .local v3, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->-get0()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Creation of lookup key failed when caching CNAP information"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
