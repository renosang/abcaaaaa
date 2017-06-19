.class public Lcom/android/incallui/oneplus/OPRapidDisplayManager;
.super Ljava/lang/Object;
.source "OPRapidDisplayManager.java"


# static fields
.field private static INSTANCE:Lcom/android/incallui/oneplus/OPRapidDisplayManager;

.field private static mAudioMode:I

.field private static mIsRapidDial:Z

.field private static mIsRapidDisplay:Z

.field private static mIsStranger:Z

.field private static mNumberType:I

.field private static mOutCallName:Ljava/lang/String;

.field private static mOutCallNumber:Ljava/lang/String;

.field private static mOutCallPhoto:Landroid/graphics/drawable/Drawable;

.field private static mSlotId:I

.field private static mSupportedModes:I

.field private static mYuloreInfo:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;


# instance fields
.field private mOpCallList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/Call;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 26
    sput-boolean v1, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mIsRapidDisplay:Z

    .line 27
    sput-boolean v1, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mIsStranger:Z

    .line 28
    sput-object v0, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mOutCallNumber:Ljava/lang/String;

    .line 29
    sput-object v0, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mOutCallName:Ljava/lang/String;

    .line 30
    sput-object v0, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mOutCallPhoto:Landroid/graphics/drawable/Drawable;

    .line 31
    sput-object v0, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mYuloreInfo:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    .line 32
    sput v1, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mSupportedModes:I

    .line 33
    sput v1, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mAudioMode:I

    .line 34
    const/4 v0, -0x1

    sput v0, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mSlotId:I

    .line 35
    sput-boolean v1, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mIsRapidDial:Z

    .line 42
    sput v1, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mNumberType:I

    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mOpCallList:Ljava/util/ArrayList;

    .line 53
    return-void
.end method

.method public static clearMembers()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 160
    invoke-static {v1}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->setIsStranger(Z)V

    .line 161
    invoke-static {v1}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->setRapidDisplay(Z)V

    .line 162
    invoke-static {v0}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->setOutCallName(Ljava/lang/String;)V

    .line 163
    invoke-static {v0}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->setOutCallNumber(Ljava/lang/String;)V

    .line 164
    invoke-static {v0}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->setOutCallPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 165
    invoke-static {v0}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->setYuloreInfo(Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;)V

    .line 166
    invoke-static {v1}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->setSupportAudioMode(I)V

    .line 167
    invoke-static {v1}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->setAudioMode(I)V

    .line 168
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->setSlotId(I)V

    .line 169
    invoke-static {v1}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->setCallNumberType(I)V

    .line 170
    invoke-static {}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->releaseRapidDialLock()V

    .line 159
    return-void
.end method

.method public static enableRapidDialLock()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mIsRapidDial:Z

    .line 151
    return-void
.end method

.method public static getCallNumberType()I
    .locals 1

    .prologue
    .line 91
    sget v0, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mNumberType:I

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/oneplus/OPRapidDisplayManager;
    .locals 2

    .prologue
    const-class v1, Lcom/android/incallui/oneplus/OPRapidDisplayManager;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->INSTANCE:Lcom/android/incallui/oneplus/OPRapidDisplayManager;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/android/incallui/oneplus/OPRapidDisplayManager;

    invoke-direct {v0}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;-><init>()V

    sput-object v0, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->INSTANCE:Lcom/android/incallui/oneplus/OPRapidDisplayManager;

    .line 50
    :cond_0
    sget-object v0, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->INSTANCE:Lcom/android/incallui/oneplus/OPRapidDisplayManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getOutCallName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mOutCallName:Ljava/lang/String;

    return-object v0
.end method

.method public static getOutCallNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mOutCallNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getOutCallPhoto()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mOutCallPhoto:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static getRapidDisplay()Z
    .locals 1

    .prologue
    .line 112
    sget-boolean v0, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mIsRapidDisplay:Z

    return v0
.end method

.method public static getSlotId()I
    .locals 1

    .prologue
    .line 83
    sget v0, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mSlotId:I

    return v0
.end method

.method public static getYuloreInfo()Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mYuloreInfo:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    return-object v0
.end method

.method public static isRapidDialLocked()Z
    .locals 1

    .prologue
    .line 148
    sget-boolean v0, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mIsRapidDial:Z

    return v0
.end method

.method public static releaseRapidDialLock()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mIsRapidDial:Z

    .line 155
    return-void
.end method

.method public static setAudioMode(I)V
    .locals 2
    .param p0, "mode"    # I

    .prologue
    .line 65
    move v0, p0

    .line 66
    .local v0, "audioMode":I
    if-nez p0, :cond_0

    sget v1, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mSupportedModes:I

    if-eqz v1, :cond_0

    .line 67
    sget v1, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mSupportedModes:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 68
    const/4 v0, 0x2

    .line 75
    :cond_0
    :goto_0
    sput v0, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mAudioMode:I

    .line 64
    return-void

    .line 69
    :cond_1
    sget v1, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mSupportedModes:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 70
    const/4 v0, 0x4

    goto :goto_0

    .line 72
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setCallNumberType(I)V
    .locals 0
    .param p0, "type"    # I

    .prologue
    .line 95
    sput p0, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mNumberType:I

    .line 94
    return-void
.end method

.method public static setIsStranger(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .prologue
    .line 99
    sput-boolean p0, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mIsStranger:Z

    .line 98
    return-void
.end method

.method public static setOutCallName(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 124
    sput-object p0, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mOutCallName:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public static setOutCallNumber(Ljava/lang/String;)V
    .locals 0
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 116
    sput-object p0, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mOutCallNumber:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public static setOutCallPhoto(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 132
    sput-object p0, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mOutCallPhoto:Landroid/graphics/drawable/Drawable;

    .line 131
    return-void
.end method

.method public static setRapidDisplay(Z)V
    .locals 3
    .param p0, "flag"    # Z

    .prologue
    .line 107
    const-string/jumbo v0, "OPRapidDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRapidDisplay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sput-boolean p0, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mIsRapidDisplay:Z

    .line 106
    return-void
.end method

.method public static setSlotId(I)V
    .locals 0
    .param p0, "slotid"    # I

    .prologue
    .line 87
    sput p0, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mSlotId:I

    .line 86
    return-void
.end method

.method public static setSupportAudioMode(I)V
    .locals 0
    .param p0, "supportModes"    # I

    .prologue
    .line 57
    sput p0, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mSupportedModes:I

    .line 56
    return-void
.end method

.method public static setYuloreInfo(Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;)V
    .locals 0
    .param p0, "info"    # Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    .prologue
    .line 140
    sput-object p0, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->mYuloreInfo:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    .line 139
    return-void
.end method
