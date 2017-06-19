.class public Lcom/android/contacts/common/activity/LicenseActivity;
.super Landroid/app/Activity;
.source "LicenseActivity.java"


# static fields
.field private static final LICENSE_FILE:Ljava/lang/String; = "file:///android_asset/licenses.html"


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x4

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v1, 0x7f040066

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/activity/LicenseActivity;->setContentView(I)V

    .line 37
    const v1, 0x7f0e0166

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/activity/LicenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/android/contacts/common/activity/LicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 38
    iget-object v1, p0, Lcom/android/contacts/common/activity/LicenseActivity;->mWebView:Landroid/webkit/WebView;

    const-string/jumbo v2, "file:///android_asset/licenses.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/contacts/common/activity/LicenseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 40
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 34
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/contacts/common/activity/LicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 46
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 53
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/android/contacts/common/activity/LicenseActivity;->finish()V

    .line 55
    const/4 v0, 0x1

    return v0

    .line 57
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
