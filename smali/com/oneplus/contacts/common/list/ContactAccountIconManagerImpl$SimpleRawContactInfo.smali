.class Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$SimpleRawContactInfo;
.super Ljava/lang/Object;
.source "ContactAccountIconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleRawContactInfo"
.end annotation


# instance fields
.field private rawContactIdAccountMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$SimpleRawContactInfo;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$SimpleRawContactInfo;->rawContactIdAccountMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 446
    return-void
.end method


# virtual methods
.method public addSimpleRawContact(Ljava/lang/Long;Landroid/accounts/Account;)V
    .locals 1
    .param p1, "rawContactId"    # Ljava/lang/Long;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$SimpleRawContactInfo;->rawContactIdAccountMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    return-void
.end method

.method public getAccountIcon()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 455
    iget-object v2, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$SimpleRawContactInfo;->rawContactIdAccountMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 456
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/accounts/Account;>;"
    iget-object v2, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$SimpleRawContactInfo;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;

    iget-object v2, v2, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->SIM_ACCOUNT:Landroid/accounts/Account;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 457
    iget-object v2, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$SimpleRawContactInfo;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;

    invoke-static {v2}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->-get7(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    .line 458
    :cond_1
    iget-object v2, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$SimpleRawContactInfo;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;

    iget-object v2, v2, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->SIM_1_ACCOUNT:Landroid/accounts/Account;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 459
    iget-object v2, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$SimpleRawContactInfo;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;

    invoke-static {v2}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->-get8(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;)I

    move-result v2

    if-ge v2, v4, :cond_2

    iget-object v2, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$SimpleRawContactInfo;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;

    invoke-static {v2}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->-get7(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_2
    iget-object v2, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$SimpleRawContactInfo;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;

    invoke-static {v2}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->-get5(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 460
    :cond_3
    iget-object v2, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$SimpleRawContactInfo;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;

    iget-object v2, v2, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->SIM_2_ACCOUNT:Landroid/accounts/Account;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    iget-object v2, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$SimpleRawContactInfo;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;

    invoke-static {v2}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->-get8(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;)I

    move-result v2

    if-ge v2, v4, :cond_4

    iget-object v2, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$SimpleRawContactInfo;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;

    invoke-static {v2}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->-get7(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_4
    iget-object v2, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$SimpleRawContactInfo;->this$0:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;

    invoke-static {v2}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->-get6(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    .line 464
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/accounts/Account;>;"
    :cond_5
    const/4 v2, 0x0

    return-object v2
.end method
