.class Lcom/google/i18n/phonenumbers/RegexCache$LRUCache;
.super Ljava/lang/Object;
.source "RegexCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/RegexCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LRUCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method static synthetic -get0(Lcom/google/i18n/phonenumbers/RegexCache$LRUCache;)I
    .locals 1

    iget v0, p0, Lcom/google/i18n/phonenumbers/RegexCache$LRUCache;->size:I

    return v0
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/google/i18n/phonenumbers/RegexCache$LRUCache;->size:I

    .line 57
    new-instance v0, Lcom/google/i18n/phonenumbers/RegexCache$LRUCache$1;

    mul-int/lit8 v1, p1, 0x4

    div-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/i18n/phonenumbers/RegexCache$LRUCache$1;-><init>(Lcom/google/i18n/phonenumbers/RegexCache$LRUCache;IFZ)V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/RegexCache$LRUCache;->map:Ljava/util/LinkedHashMap;

    .line 55
    return-void
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .local p1, "key":Ljava/lang/Object;, "TK;"
    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/RegexCache$LRUCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/RegexCache$LRUCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 69
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
