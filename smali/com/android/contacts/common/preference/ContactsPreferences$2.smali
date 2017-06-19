.class Lcom/android/contacts/common/preference/ContactsPreferences$2;
.super Ljava/lang/Object;
.source "ContactsPreferences.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/preference/ContactsPreferences;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/preference/ContactsPreferences;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/preference/ContactsPreferences;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/preference/ContactsPreferences;
    .param p2, "val$key"    # Ljava/lang/String;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences$2;->this$0:Lcom/android/contacts/common/preference/ContactsPreferences;

    iput-object p2, p0, Lcom/android/contacts/common/preference/ContactsPreferences$2;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences$2;->this$0:Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences$2;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->refreshValue(Ljava/lang/String;)V

    .line 358
    return-void
.end method
