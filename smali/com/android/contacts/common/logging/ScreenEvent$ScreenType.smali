.class public final Lcom/android/contacts/common/logging/ScreenEvent$ScreenType;
.super Ljava/lang/Object;
.source "ScreenEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/logging/ScreenEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScreenType"
.end annotation


# static fields
.field public static final ALL_CONTACTS:I = 0x4

.field public static final EDITOR:I = 0x6

.field public static final FAVORITES:I = 0x3

.field public static final QUICK_CONTACT:I = 0x5

.field public static final SEARCH:I = 0x1

.field public static final SEARCH_EXIT:I = 0x2

.field public static final UNKNOWN:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFriendlyName(I)Ljava/lang/String;
    .locals 1
    .param p0, "screenType"    # I

    .prologue
    .line 42
    packed-switch p0, :pswitch_data_0

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 44
    :pswitch_0
    const-string/jumbo v0, "Search"

    return-object v0

    .line 45
    :pswitch_1
    const-string/jumbo v0, "Favorites"

    return-object v0

    .line 46
    :pswitch_2
    const-string/jumbo v0, "AllContacts"

    return-object v0

    .line 47
    :pswitch_3
    const-string/jumbo v0, "QuickContact"

    return-object v0

    .line 48
    :pswitch_4
    const-string/jumbo v0, "Editor"

    return-object v0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
