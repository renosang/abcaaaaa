.class public Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;
.super Ljava/lang/Object;
.source "OPYuloreLoadInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;,
        Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoCallback;,
        Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoPhotoTask;,
        Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sOPYuloreLoadInfoUtils:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;


# instance fields
.field private final mCallBacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->mCallBacks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->mInfoMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;Ljava/lang/String;I)Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "callState"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->buildYuloreInfo(Ljava/lang/String;I)Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;)V
    .locals 0
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "call"    # Lcom/android/incallui/Call;
    .param p5, "callerInfo"    # Lcom/android/incallui/CallerInfo;

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->loadPhotoFromYulore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->TAG:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->sOPYuloreLoadInfoUtils:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->mInfoMap:Ljava/util/HashMap;

    .line 53
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->mCallBacks:Ljava/util/HashMap;

    .line 66
    iput-object p1, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->mContext:Landroid/content/Context;

    .line 67
    invoke-static {p1}, Lcom/oneplus/superyellowpage/OPYuloreUtil;->init(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method private buildYuloreInfo(Ljava/lang/String;I)Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;
    .locals 10
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "callState"    # I

    .prologue
    .line 156
    sget-object v7, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "number:  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 158
    new-instance v0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    invoke-direct {v0, p0}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;-><init>(Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;)V

    .line 159
    .local v0, "info":Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;
    iput-object p1, v0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->number:Ljava/lang/String;

    .line 160
    const/4 v3, 0x0

    .line 161
    .local v3, "recognitionTelephone":Lcom/yulore/basic/model/RecognitionTelephone;
    sget-object v7, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "callState:  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const/4 v7, 0x4

    if-eq p2, v7, :cond_0

    const/4 v7, 0x5

    if-ne p2, v7, :cond_6

    .line 163
    :cond_0
    const/4 v7, 0x2

    invoke-static {p1, v7}, Lcom/oneplus/superyellowpage/OPYuloreUtil;->queryNumberInfoFromIncommingCall(Ljava/lang/String;I)Lcom/yulore/basic/model/RecognitionTelephone;

    move-result-object v3

    .line 168
    .local v3, "recognitionTelephone":Lcom/yulore/basic/model/RecognitionTelephone;
    :goto_0
    if-eqz v3, :cond_5

    .line 169
    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->isStrangerRecognizeOn()Z

    move-result v2

    .line 170
    .local v2, "isStrangerRecognizeOn":Z
    if-eqz v2, :cond_4

    .line 171
    invoke-virtual {v3}, Lcom/yulore/basic/model/RecognitionTelephone;->getTel()Lcom/yulore/basic/model/TelephoneNum;

    move-result-object v4

    .line 172
    .local v4, "tel":Lcom/yulore/basic/model/TelephoneNum;
    if-eqz v4, :cond_1

    .line 173
    invoke-virtual {v4}, Lcom/yulore/basic/model/TelephoneNum;->getTelDesc()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->numberDesc:Ljava/lang/String;

    .line 175
    :cond_1
    invoke-virtual {v3}, Lcom/yulore/basic/model/RecognitionTelephone;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->name:Ljava/lang/String;

    .line 176
    invoke-virtual {v3}, Lcom/yulore/basic/model/RecognitionTelephone;->getFlag()Lcom/yulore/basic/model/TelephoneFlag;

    move-result-object v5

    .line 177
    .local v5, "telephoneFlag":Lcom/yulore/basic/model/TelephoneFlag;
    if-eqz v5, :cond_3

    iget-object v7, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_3

    .line 178
    invoke-static {v3}, Lcom/oneplus/superyellowpage/OPYuloreUtil;->getFlag(Lcom/yulore/basic/model/RecognitionTelephone;)Ljava/lang/String;

    move-result-object v6

    .line 179
    .local v6, "type":Ljava/lang/String;
    sget-object v7, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 181
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/yulore/basic/model/TelephoneFlag;->getNum()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->mContext:Landroid/content/Context;

    const v9, 0x7f0d0326

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->flag:Ljava/lang/String;

    .line 183
    :cond_2
    sget-object v7, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "telephoneFlag "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/yulore/basic/model/TelephoneFlag;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .end local v6    # "type":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Lcom/yulore/basic/model/RecognitionTelephone;->getId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->id:Ljava/lang/String;

    .line 190
    invoke-virtual {v3}, Lcom/yulore/basic/model/RecognitionTelephone;->getLogo()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->logo:Ljava/lang/String;

    .line 193
    .end local v4    # "tel":Lcom/yulore/basic/model/TelephoneNum;
    .end local v5    # "telephoneFlag":Lcom/yulore/basic/model/TelephoneFlag;
    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->isDangerRecognizeOn()Z

    move-result v1

    .line 194
    .local v1, "isDangerRecognizeOn":Z
    sget-object v7, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isDangerRecognizeOn:  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    if-eqz v1, :cond_8

    .line 196
    invoke-virtual {v3}, Lcom/yulore/basic/model/RecognitionTelephone;->getHighRisk()I

    move-result v7

    const/4 v8, 0x1

    if-ne v8, v7, :cond_7

    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, v0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->highRisk:Z

    .line 202
    .end local v1    # "isDangerRecognizeOn":Z
    .end local v2    # "isStrangerRecognizeOn":Z
    :cond_5
    :goto_2
    return-object v0

    .line 165
    .local v3, "recognitionTelephone":Lcom/yulore/basic/model/RecognitionTelephone;
    :cond_6
    const/4 v7, 0x2

    invoke-static {p1, v7}, Lcom/oneplus/superyellowpage/OPYuloreUtil;->queryNumberInfoFromOutgoingCall(Ljava/lang/String;I)Lcom/yulore/basic/model/RecognitionTelephone;

    move-result-object v3

    .local v3, "recognitionTelephone":Lcom/yulore/basic/model/RecognitionTelephone;
    goto/16 :goto_0

    .line 196
    .restart local v1    # "isDangerRecognizeOn":Z
    .restart local v2    # "isStrangerRecognizeOn":Z
    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    .line 198
    :cond_8
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->highRisk:Z

    goto :goto_2

    .line 205
    .end local v0    # "info":Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;
    .end local v1    # "isDangerRecognizeOn":Z
    .end local v2    # "isStrangerRecognizeOn":Z
    .end local v3    # "recognitionTelephone":Lcom/yulore/basic/model/RecognitionTelephone;
    :cond_9
    const/4 v7, 0x0

    return-object v7
.end method

.method public static getHttpPhoto(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 7
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 209
    sget-object v4, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "imageUri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const/4 v2, 0x0

    .line 212
    .local v2, "icon":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    invoke-static {p0, p1}, Lcom/oneplus/superyellowpage/OPYuloreUtil;->getAndSaveYuloreLogoBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 213
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 214
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v3, "icon":Landroid/graphics/drawable/BitmapDrawable;
    move-object v2, v3

    .line 219
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "icon":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "icon":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    :goto_0
    sget-object v4, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "icon: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-object v2

    .line 216
    .restart local v2    # "icon":Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 59
    sget-object v0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->sOPYuloreLoadInfoUtils:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->sOPYuloreLoadInfoUtils:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;

    .line 62
    :cond_0
    sget-object v0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->sOPYuloreLoadInfoUtils:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;

    return-object v0
.end method

.method private isDangerRecognizeOn()Z
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/contacts/common/utils/OPFeatureUtils;->isDangerRecognizedOn(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 292
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isStrangerRecognizeOn()Z
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/contacts/common/utils/OPFeatureUtils;->isStrangerRecognizedOn(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 285
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private loadInfoFromYulore(Ljava/lang/String;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "call"    # Lcom/android/incallui/Call;
    .param p3, "callerInfo"    # Lcom/android/incallui/CallerInfo;

    .prologue
    .line 296
    new-instance v0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoTask;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoTask;-><init>(Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;)V

    .line 297
    .local v0, "loadTask":Landroid/os/AsyncTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 295
    return-void
.end method

.method private loadPhotoFromYulore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;)V
    .locals 6
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "call"    # Lcom/android/incallui/Call;
    .param p5, "callerInfo"    # Lcom/android/incallui/CallerInfo;

    .prologue
    .line 301
    new-instance v0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoPhotoTask;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoPhotoTask;-><init>(Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;Ljava/lang/String;Ljava/lang/String;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;)V

    .line 302
    .local v0, "loadTask":Landroid/os/AsyncTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 300
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 101
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 102
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->sOPYuloreLoadInfoUtils:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;

    .line 99
    return-void
.end method

.method public findInfo(Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoCallback;)V
    .locals 7
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "callerInfo"    # Lcom/android/incallui/CallerInfo;
    .param p3, "callback"    # Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoCallback;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->isStrangerRecognizeOn()Z

    move-result v2

    .line 120
    .local v2, "isStrangerRecognizeOn":Z
    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->isDangerRecognizeOn()Z

    move-result v1

    .line 121
    .local v1, "isDangerRecognizeOn":Z
    sget-object v4, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isStrangerRecognizeOn:  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", isDangerRecognizeOn:  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    if-nez v2, :cond_0

    if-eqz v1, :cond_6

    .line 123
    :cond_0
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 124
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "number":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    .line 127
    .local v0, "info":Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;
    if-eqz v0, :cond_1

    .line 128
    sget-object v4, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "findInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    if-eqz p3, :cond_2

    .line 130
    iput-object v0, p2, Lcom/android/incallui/CallerInfo;->mYuloreInfo:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    .line 131
    invoke-interface {p3, p1, p2}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoCallback;->onYuloreInfoComplete(Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;)V

    .line 132
    return-void

    .line 135
    :cond_1
    sget-object v4, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "info = null "

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_2
    if-eqz p3, :cond_3

    .line 139
    iget-object v4, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v4, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_3
    invoke-direct {p0, v3, p1, p2}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->loadInfoFromYulore(Ljava/lang/String;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;)V

    .line 118
    .end local v0    # "info":Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;
    .end local v3    # "number":Ljava/lang/String;
    :cond_4
    :goto_0
    return-void

    .line 144
    :cond_5
    if-eqz p3, :cond_4

    if-eqz p1, :cond_4

    .line 145
    invoke-interface {p3, p1, p2}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoCallback;->onYuloreInfoComplete(Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;)V

    goto :goto_0

    .line 149
    :cond_6
    if-eqz p3, :cond_4

    .line 150
    invoke-interface {p3, p1, p2}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoCallback;->onYuloreInfoComplete(Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;)V

    goto :goto_0
.end method
