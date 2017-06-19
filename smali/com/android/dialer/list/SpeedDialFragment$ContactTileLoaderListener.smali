.class Lcom/android/dialer/list/SpeedDialFragment$ContactTileLoaderListener;
.super Ljava/lang/Object;
.source "SpeedDialFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/SpeedDialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactTileLoaderListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/SpeedDialFragment;


# direct methods
.method private constructor <init>(Lcom/android/dialer/list/SpeedDialFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/list/SpeedDialFragment;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/dialer/list/SpeedDialFragment$ContactTileLoaderListener;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/list/SpeedDialFragment;Lcom/android/dialer/list/SpeedDialFragment$ContactTileLoaderListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/list/SpeedDialFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/dialer/list/SpeedDialFragment$ContactTileLoaderListener;-><init>(Lcom/android/dialer/list/SpeedDialFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment$ContactTileLoaderListener;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    invoke-virtual {v0}, Lcom/android/dialer/list/SpeedDialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/ContactTileLoaderFactory;->createStrequentPhoneOnlyLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/list/SpeedDialFragment$ContactTileLoaderListener;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v0, 0x0

    .line 106
    iget-object v1, p0, Lcom/android/dialer/list/SpeedDialFragment$ContactTileLoaderListener;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    invoke-static {v1}, Lcom/android/dialer/list/SpeedDialFragment;->-get2(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->setContactCursor(Landroid/database/Cursor;)V

    .line 107
    iget-object v1, p0, Lcom/android/dialer/list/SpeedDialFragment$ContactTileLoaderListener;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    iget-object v2, p0, Lcom/android/dialer/list/SpeedDialFragment$ContactTileLoaderListener;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    invoke-static {v2}, Lcom/android/dialer/list/SpeedDialFragment;->-get2(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/dialer/list/SpeedDialFragment;->setEmptyViewVisibility(Z)V

    .line 104
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 104
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/list/SpeedDialFragment$ContactTileLoaderListener;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
