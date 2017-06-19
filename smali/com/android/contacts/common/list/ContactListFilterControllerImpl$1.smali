.class Lcom/android/contacts/common/list/ContactListFilterControllerImpl$1;
.super Landroid/database/ContentObserver;
.source "ContactListFilterController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ContactListFilterControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/list/ContactListFilterControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/ContactListFilterControllerImpl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/list/ContactListFilterControllerImpl;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl$1;->this$0:Lcom/android/contacts/common/list/ContactListFilterControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 190
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilter;->isContactListFilterKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl$1;->this$0:Lcom/android/contacts/common/list/ContactListFilterControllerImpl;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl$1;->this$0:Lcom/android/contacts/common/list/ContactListFilterControllerImpl;

    invoke-static {v2}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->-get0(Lcom/android/contacts/common/list/ContactListFilterControllerImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/list/ContactListFilter;->restoreDefaultPreferences(Landroid/content/Context;)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->-set0(Lcom/android/contacts/common/list/ContactListFilterControllerImpl;Lcom/android/contacts/common/list/ContactListFilter;)Lcom/android/contacts/common/list/ContactListFilter;

    .line 193
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl$1;->this$0:Lcom/android/contacts/common/list/ContactListFilterControllerImpl;

    invoke-static {v1}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->-get1(Lcom/android/contacts/common/list/ContactListFilterControllerImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl$1;->this$0:Lcom/android/contacts/common/list/ContactListFilterControllerImpl;

    invoke-static {v1}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;->-wrap0(Lcom/android/contacts/common/list/ContactListFilterControllerImpl;)V

    .line 189
    :cond_0
    return-void
.end method
