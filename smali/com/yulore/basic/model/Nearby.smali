.class public Lcom/yulore/basic/model/Nearby;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BLANK_ENTRY:Lcom/yulore/basic/model/Nearby;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yulore/basic/model/Nearby;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionMenu:Lcom/yulore/basic/model/ActionMenu;

.field private hot:I

.field private icon:Ljava/lang/String;

.field private id:I

.field private subTitle:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/yulore/basic/model/Nearby$1;

    invoke-direct {v0}, Lcom/yulore/basic/model/Nearby$1;-><init>()V

    sput-object v0, Lcom/yulore/basic/model/Nearby;->BLANK_ENTRY:Lcom/yulore/basic/model/Nearby;

    .line 94
    new-instance v0, Lcom/yulore/basic/model/Nearby$2;

    invoke-direct {v0}, Lcom/yulore/basic/model/Nearby$2;-><init>()V

    sput-object v0, Lcom/yulore/basic/model/Nearby;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulore/basic/model/Nearby;->id:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/basic/model/Nearby;->title:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/basic/model/Nearby;->subTitle:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/basic/model/Nearby;->icon:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulore/basic/model/Nearby;->hot:I

    const-class v0, Lcom/yulore/basic/model/ActionMenu;

    .line 91
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yulore/basic/model/ActionMenu;

    iput-object v0, p0, Lcom/yulore/basic/model/Nearby;->actionMenu:Lcom/yulore/basic/model/ActionMenu;

    .line 92
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 74
    iget v0, p0, Lcom/yulore/basic/model/Nearby;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-object v0, p0, Lcom/yulore/basic/model/Nearby;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/yulore/basic/model/Nearby;->subTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/yulore/basic/model/Nearby;->icon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget v0, p0, Lcom/yulore/basic/model/Nearby;->hot:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v0, p0, Lcom/yulore/basic/model/Nearby;->actionMenu:Lcom/yulore/basic/model/ActionMenu;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 80
    return-void
.end method
