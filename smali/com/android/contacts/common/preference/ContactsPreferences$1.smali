.class Lcom/android/contacts/common/preference/ContactsPreferences$1;
.super Landroid/database/ContentObserver;
.source "ContactsPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/preference/ContactsPreferences;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/preference/ContactsPreferences;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/preference/ContactsPreferences;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences$1;->this$0:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 121
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 122
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences$1;->this$0:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->refreshValue(Ljava/lang/String;)V

    .line 120
    return-void
.end method
