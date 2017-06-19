.class public Lcom/loc/bm;
.super Ljava/lang/Object;
.source "HeatMap.java"


# static fields
.field private static a:Lcom/loc/bm;


# instance fields
.field private b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/loc/bm;->a:Lcom/loc/bm;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/loc/bm;->b:Ljava/util/Hashtable;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/bm;->c:Z

    .line 31
    return-void
.end method

.method public static declared-synchronized a()Lcom/loc/bm;
    .locals 2

    .prologue
    const-class v1, Lcom/loc/bm;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/loc/bm;->a:Lcom/loc/bm;

    if-eqz v0, :cond_0

    .line 43
    :goto_0
    sget-object v0, Lcom/loc/bm;->a:Lcom/loc/bm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 41
    :cond_0
    :try_start_1
    new-instance v0, Lcom/loc/bm;

    invoke-direct {v0}, Lcom/loc/bm;-><init>()V

    sput-object v0, Lcom/loc/bm;->a:Lcom/loc/bm;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/loc/bm;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/loc/bm;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 257
    sget-boolean v0, Lcom/loc/az;->a:Z

    if-eqz v0, :cond_0

    .line 264
    iget-boolean v0, p0, Lcom/loc/bm;->c:Z

    if-nez v0, :cond_1

    .line 273
    invoke-static {}, Lcom/loc/bw;->b()J

    .line 275
    :try_start_0
    invoke-static {}, Lcom/loc/bk;->a()Lcom/loc/bk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/bk;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bm;->c:Z

    .line 291
    return-void

    .line 261
    :cond_0
    return-void

    .line 268
    :cond_1
    return-void

    .line 280
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lcom/autonavi/aps/amapapi/model/AmapLoc;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 106
    :try_start_0
    invoke-static {p3}, Lcom/loc/bw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit p0

    .line 107
    return-void

    .line 106
    :cond_1
    if-eqz p1, :cond_0

    :try_start_1
    sget-boolean v0, Lcom/loc/az;->a:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/loc/bm;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_3

    .line 123
    :cond_2
    if-eqz v3, :cond_4

    .line 128
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string/jumbo v1, "key"

    .line 130
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "lat"

    .line 131
    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i()D

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v1, "lon"

    .line 132
    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h()D

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 133
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {}, Lcom/loc/bw;->a()J

    move-result-wide v6

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/loc/bm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    .line 139
    return-void

    .line 109
    :cond_3
    :try_start_3
    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i()D

    move-result-wide v0

    .line 110
    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h()D

    move-result-wide v2

    .line 111
    invoke-static {v0, v1, v2, v3}, Lcom/loc/bc;->a(DD)Ljava/lang/String;

    move-result-object v3

    .line 113
    iget-object v0, p0, Lcom/loc/bm;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    monitor-exit p0

    .line 117
    return-void

    .line 124
    :cond_4
    :try_start_4
    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i()D

    move-result-wide v0

    .line 125
    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h()D

    move-result-wide v2

    .line 126
    invoke-static {v0, v1, v2, v3}, Lcom/loc/bc;->a(DD)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 138
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJZ)V
    .locals 7

    .prologue
    monitor-enter p0

    .line 57
    if-nez p1, :cond_1

    :cond_0
    monitor-exit p0

    .line 58
    return-void

    .line 57
    :cond_1
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    sget-boolean v0, Lcom/loc/az;->a:Z

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/loc/bm;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    if-eqz v0, :cond_3

    :goto_0
    :try_start_1
    const-string/jumbo v1, "x"

    .line 67
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "time"

    .line 68
    invoke-virtual {v0, v1, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 69
    iget-object v1, p0, Lcom/loc/bm;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "num"

    .line 72
    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/loc/bm;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    if-nez p7, :cond_5

    :goto_2
    monitor-exit p0

    .line 92
    return-void

    :cond_2
    monitor-exit p0

    .line 60
    return-void

    .line 64
    :cond_3
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_4
    const-string/jumbo v1, "num"

    const-string/jumbo v2, "num"

    .line 70
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 78
    :catch_0
    move-exception v1

    goto :goto_1

    .line 85
    :cond_5
    :try_start_5
    invoke-static {}, Lcom/loc/bk;->a()Lcom/loc/bk;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/loc/bk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 90
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public declared-synchronized b()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/bl;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 179
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 180
    iget-object v0, p0, Lcom/loc/bm;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    iget-object v7, p0, Lcom/loc/bm;->b:Ljava/util/Hashtable;

    .line 184
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 191
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 220
    new-instance v0, Lcom/loc/bm$1;

    invoke-direct {v0, p0}, Lcom/loc/bm$1;-><init>(Lcom/loc/bm;)V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 229
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 230
    return-object v6

    :cond_1
    monitor-exit p0

    .line 181
    return-object v6

    .line 191
    :cond_2
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    :try_start_2
    invoke-virtual {v7, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "num"

    .line 195
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v2, "x"

    .line 196
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "time"

    .line 197
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const/16 v0, 0x78

    .line 203
    if-lt v4, v0, :cond_0

    .line 205
    new-instance v0, Lcom/loc/bl;

    invoke-direct/range {v0 .. v5}, Lcom/loc/bl;-><init>(Ljava/lang/String;JILjava/lang/String;)V

    .line 207
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 300
    invoke-static {}, Lcom/loc/bm;->a()Lcom/loc/bm;

    move-result-object v0

    invoke-direct {v0}, Lcom/loc/bm;->d()V

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/bm;->c:Z

    .line 302
    return-void
.end method
