.class public Lcom/autonavi/aps/amapapi/model/AmapLoc;
.super Ljava/lang/Object;
.source "AmapLoc.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/autonavi/aps/amapapi/model/AmapLoc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:I

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Z

.field private G:Z

.field private H:Lorg/json/JSONObject;

.field private a:Ljava/lang/String;

.field private b:D

.field private c:D

.field private d:D

.field private e:F

.field private f:F

.field private g:F

.field private h:J

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 886
    new-instance v0, Lcom/autonavi/aps/amapapi/model/a;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/a;-><init>()V

    sput-object v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    .line 28
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a:Ljava/lang/String;

    .line 29
    iput-wide v2, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b:D

    .line 30
    iput-wide v2, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c:D

    .line 31
    iput-wide v2, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d:D

    .line 32
    iput v1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->e:F

    .line 33
    iput v1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f:F

    .line 34
    iput v1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->g:F

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h:J

    const-string/jumbo v0, "new"

    .line 36
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i:Ljava/lang/String;

    .line 37
    iput v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j:I

    const-string/jumbo v0, "success"

    .line 38
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    .line 42
    iput v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l:I

    const-string/jumbo v0, ""

    .line 121
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 130
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 131
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 132
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 133
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 134
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 135
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 136
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 137
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->u:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 138
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->v:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 139
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->w:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 140
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->x:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 141
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->y:Ljava/lang/String;

    .line 142
    iput-object v6, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->z:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 143
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->A:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 144
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->B:Ljava/lang/String;

    const/4 v0, -0x1

    .line 148
    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->C:I

    const-string/jumbo v0, ""

    .line 152
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->D:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 158
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->E:Ljava/lang/String;

    .line 160
    iput-boolean v5, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->F:Z

    .line 162
    iput-boolean v5, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->G:Z

    .line 183
    iput-object v6, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->H:Lorg/json/JSONObject;

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    .line 28
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a:Ljava/lang/String;

    .line 29
    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b:D

    .line 30
    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c:D

    .line 31
    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d:D

    .line 32
    iput v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->e:F

    .line 33
    iput v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f:F

    .line 34
    iput v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->g:F

    const-wide/16 v4, 0x0

    .line 35
    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h:J

    const-string/jumbo v0, "new"

    .line 36
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i:Ljava/lang/String;

    .line 37
    iput v1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j:I

    const-string/jumbo v0, "success"

    .line 38
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    .line 42
    iput v1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l:I

    const-string/jumbo v0, ""

    .line 121
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 130
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 131
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 132
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 133
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 134
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 135
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 136
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 137
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->u:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 138
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->v:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 139
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->w:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 140
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->x:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 141
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->y:Ljava/lang/String;

    .line 142
    iput-object v6, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->z:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 143
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->A:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 144
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->B:Ljava/lang/String;

    const/4 v0, -0x1

    .line 148
    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->C:I

    const-string/jumbo v0, ""

    .line 152
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->D:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 158
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->E:Ljava/lang/String;

    .line 160
    iput-boolean v2, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->F:Z

    .line 162
    iput-boolean v2, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->G:Z

    .line 183
    iput-object v6, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->H:Lorg/json/JSONObject;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j:I

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->g:F

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f:F

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->e:F

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b:D

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c:D

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d:D

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h:J

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->u:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->v:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->w:Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->x:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->y:Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->z:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->A:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->B:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->D:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->C:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l:I

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->E:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->F:Z

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->G:Z

    .line 223
    return-void

    :cond_0
    move v0, v2

    .line 220
    goto :goto_0

    :cond_1
    move v1, v2

    .line 221
    goto :goto_1
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    .line 28
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a:Ljava/lang/String;

    .line 29
    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b:D

    .line 30
    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c:D

    .line 31
    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d:D

    .line 32
    iput v1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->e:F

    .line 33
    iput v1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f:F

    .line 34
    iput v1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->g:F

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h:J

    const-string/jumbo v0, "new"

    .line 36
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i:Ljava/lang/String;

    .line 37
    iput v2, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j:I

    const-string/jumbo v0, "success"

    .line 38
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    .line 42
    iput v2, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l:I

    const-string/jumbo v0, ""

    .line 121
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 130
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 131
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 132
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 133
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 134
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 135
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 136
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 137
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->u:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 138
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->v:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 139
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->w:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 140
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->x:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 141
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->y:Ljava/lang/String;

    .line 142
    iput-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->z:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 143
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->A:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 144
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->B:Ljava/lang/String;

    const/4 v0, -0x1

    .line 148
    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->C:I

    const-string/jumbo v0, ""

    .line 152
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->D:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 158
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->E:Ljava/lang/String;

    .line 160
    iput-boolean v6, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->F:Z

    .line 162
    iput-boolean v6, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->G:Z

    .line 183
    iput-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->H:Lorg/json/JSONObject;

    .line 259
    if-nez p1, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string/jumbo v0, "provider"

    .line 261
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    const-string/jumbo v0, "lon"

    .line 265
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    const-string/jumbo v0, "lat"

    .line 268
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_3
    const-string/jumbo v0, "altitude"

    .line 271
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_4
    const-string/jumbo v0, "acc"

    .line 275
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_5
    const-string/jumbo v0, "accuracy"

    .line 278
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    const-string/jumbo v0, "speed"

    .line 281
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    const-string/jumbo v0, "dir"

    .line 287
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    const-string/jumbo v0, "bearing"

    .line 290
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    const-string/jumbo v0, "type"

    .line 293
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    const-string/jumbo v0, "retype"

    .line 296
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    :goto_b
    const-string/jumbo v0, "citycode"

    .line 299
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    :goto_c
    const-string/jumbo v0, "desc"

    .line 302
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    :goto_d
    const-string/jumbo v0, "adcode"

    .line 305
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    :goto_e
    const-string/jumbo v0, "country"

    .line 308
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    :goto_f
    const-string/jumbo v0, "province"

    .line 311
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    :goto_10
    const-string/jumbo v0, "city"

    .line 314
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    :goto_11
    const-string/jumbo v0, "road"

    .line 317
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    :goto_12
    const-string/jumbo v0, "street"

    .line 320
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    :goto_13
    const-string/jumbo v0, "number"

    .line 323
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    :goto_14
    const-string/jumbo v0, "poiname"

    .line 326
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    :goto_15
    const-string/jumbo v0, "errorCode"

    .line 329
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    :goto_16
    const-string/jumbo v0, "errorInfo"

    .line 332
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    :goto_17
    const-string/jumbo v0, "locationType"

    .line 335
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    :goto_18
    const-string/jumbo v0, "locationDetail"

    .line 338
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    :goto_19
    const-string/jumbo v0, "cens"

    .line 341
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    :goto_1a
    const-string/jumbo v0, "poiid"

    .line 344
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    :goto_1b
    const-string/jumbo v0, "pid"

    .line 348
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    :goto_1c
    const-string/jumbo v0, "floor"

    .line 351
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    :goto_1d
    const-string/jumbo v0, "flr"

    .line 355
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    :goto_1e
    const-string/jumbo v0, "coord"

    .line 358
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    :goto_1f
    const-string/jumbo v0, "mcell"

    .line 361
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    :goto_20
    const-string/jumbo v0, "time"

    .line 364
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    :goto_21
    const-string/jumbo v0, "district"

    .line 367
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    :goto_22
    const-string/jumbo v0, "isOffset"

    .line 370
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    :goto_23
    const-string/jumbo v0, "isReversegeo"

    .line 373
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "isReversegeo"

    .line 374
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Z)V

    goto/16 :goto_0

    .line 380
    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v0, "provider"

    .line 262
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v0, "lon"

    .line 266
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(D)V

    goto/16 :goto_2

    :cond_4
    const-string/jumbo v0, "lat"

    .line 269
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(D)V

    goto/16 :goto_3

    :cond_5
    const-string/jumbo v0, "altitude"

    .line 272
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c(D)V

    goto/16 :goto_4

    :cond_6
    const-string/jumbo v0, "acc"

    .line 276
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->y(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_7
    const-string/jumbo v0, "accuracy"

    .line 279
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(F)V

    goto/16 :goto_6

    :cond_8
    const-string/jumbo v0, "speed"

    .line 282
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(F)V

    goto/16 :goto_7

    :cond_9
    const-string/jumbo v0, "dir"

    .line 288
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c(F)V

    goto/16 :goto_8

    :cond_a
    const-string/jumbo v0, "bearing"

    .line 291
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c(F)V

    goto/16 :goto_9

    :cond_b
    const-string/jumbo v0, "type"

    .line 294
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_c
    const-string/jumbo v0, "retype"

    .line 297
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->g(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_d
    const-string/jumbo v0, "citycode"

    .line 300
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_e
    const-string/jumbo v0, "desc"

    .line 303
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_f
    const-string/jumbo v0, "adcode"

    .line 306
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_10
    const-string/jumbo v0, "country"

    .line 309
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_11
    const-string/jumbo v0, "province"

    .line 312
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_12
    const-string/jumbo v0, "city"

    .line 315
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_13
    const-string/jumbo v0, "road"

    .line 318
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p(Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_14
    const-string/jumbo v0, "street"

    .line 321
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_15
    const-string/jumbo v0, "number"

    .line 324
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r(Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_16
    const-string/jumbo v0, "poiname"

    .line 327
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s(Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_17
    const-string/jumbo v0, "errorCode"

    .line 330
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    goto/16 :goto_16

    :cond_18
    const-string/jumbo v0, "errorInfo"

    .line 333
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_19
    const-string/jumbo v0, "locationType"

    .line 336
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(I)V

    goto/16 :goto_18

    :cond_1a
    const-string/jumbo v0, "locationDetail"

    .line 339
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    goto/16 :goto_19

    :cond_1b
    const-string/jumbo v0, "cens"

    .line 342
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t(Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_1c
    const-string/jumbo v0, "poiid"

    .line 345
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->u(Ljava/lang/String;)V

    goto/16 :goto_1b

    :cond_1d
    const-string/jumbo v0, "pid"

    .line 349
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->u(Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_1e
    const-string/jumbo v0, "floor"

    .line 352
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->v(Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_1f
    const-string/jumbo v0, "flr"

    .line 356
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->v(Ljava/lang/String;)V

    goto/16 :goto_1e

    :cond_20
    const-string/jumbo v0, "coord"

    .line 359
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->w(Ljava/lang/String;)V

    goto/16 :goto_1f

    :cond_21
    const-string/jumbo v0, "mcell"

    .line 362
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->x(Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_22
    const-string/jumbo v0, "time"

    .line 365
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(J)V

    goto/16 :goto_21

    :cond_23
    const-string/jumbo v0, "district"

    .line 368
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o(Ljava/lang/String;)V

    goto/16 :goto_22

    :cond_24
    const-string/jumbo v0, "isOffset"

    .line 371
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_23
.end method

.method private A(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 493
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->g:F

    .line 494
    return-void
.end method

.method private y(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 466
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->e:F

    .line 467
    return-void
.end method

.method private z(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 478
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f:F

    .line 479
    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 480
    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f:F

    .line 482
    :cond_0
    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    .prologue
    .line 683
    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->C:I

    return v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->D:Ljava/lang/String;

    return-object v0
.end method

.method public C()Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 709
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->B()Ljava/lang/String;

    move-result-object v0

    .line 710
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ","

    .line 713
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 714
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 720
    new-instance v1, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    .line 721
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c(Ljava/lang/String;)V

    .line 722
    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 723
    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->e(Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 724
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(F)V

    .line 725
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i(Ljava/lang/String;)V

    .line 726
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k(Ljava/lang/String;)V

    .line 727
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m(Ljava/lang/String;)V

    .line 729
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(J)V

    .line 731
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f(Ljava/lang/String;)V

    .line 732
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->A()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->w(Ljava/lang/String;)V

    .line 733
    invoke-static {v1}, Lcom/loc/bw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 736
    return-object v1

    .line 711
    :cond_0
    return-object v4

    .line 718
    :cond_1
    return-object v4

    .line 734
    :cond_2
    return-object v4
.end method

.method public D()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->H:Lorg/json/JSONObject;

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 775
    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j:I

    return v0
.end method

.method public a(D)V
    .locals 3

    .prologue
    .line 430
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string/jumbo v1, "#.000000"

    invoke-static {v0, v1}, Lcom/loc/bw;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d(Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 462
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->y(Ljava/lang/String;)V

    .line 463
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l:I

    .line 50
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 501
    iput-wide p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h:J

    .line 502
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 749
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->H:Lorg/json/JSONObject;

    .line 750
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->F:Z

    .line 170
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l:I

    return v0
.end method

.method public b(D)V
    .locals 3

    .prologue
    .line 442
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string/jumbo v1, "#.000000"

    invoke-static {v0, v1}, Lcom/loc/bw;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->e(Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method public b(F)V
    .locals 2

    .prologue
    .line 474
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "#.0"

    invoke-static {v0, v1}, Lcom/loc/bw;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->z(Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j:I

    if-nez v0, :cond_0

    .line 56
    packed-switch p1, :pswitch_data_0

    .line 99
    :goto_0
    iput p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j:I

    .line 100
    return-void

    .line 54
    :cond_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "success"

    .line 58
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "\u91cd\u8981\u53c2\u6570\u4e3a\u7a7a"

    .line 61
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "WIFI\u4fe1\u606f\u4e0d\u8db3"

    .line 64
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "\u8bf7\u6c42\u53c2\u6570\u83b7\u53d6\u51fa\u73b0\u5f02\u5e38"

    .line 67
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"

    .line 70
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "\u89e3\u6790XML\u51fa\u9519"

    .line 73
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "\u5b9a\u4f4d\u7ed3\u679c\u9519\u8bef"

    .line 76
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    const-string/jumbo v0, "KEY\u9519\u8bef"

    .line 79
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    const-string/jumbo v0, "\u5176\u4ed6\u9519\u8bef"

    .line 82
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    const-string/jumbo v0, "\u521d\u59cb\u5316\u5f02\u5e38"

    .line 85
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    goto :goto_0

    :pswitch_a
    const-string/jumbo v0, "\u5b9a\u4f4d\u670d\u52a1\u542f\u52a8\u5931\u8d25"

    .line 88
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    goto :goto_0

    :pswitch_b
    const-string/jumbo v0, "\u7f3a\u5c11\u5b9a\u4f4d\u6743\u9650"

    .line 91
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    goto :goto_0

    :pswitch_c
    const-string/jumbo v0, "\u9519\u8bef\u7684\u57fa\u7ad9\u4fe1\u606f\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u63d2\u5165SIM\u5361"

    .line 94
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 118
    :cond_0
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m:Ljava/lang/String;

    .line 119
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->G:Z

    .line 178
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 787
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    packed-switch p1, :pswitch_data_0

    .line 839
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :pswitch_0
    :try_start_1
    const-string/jumbo v2, "altitude"

    .line 790
    iget-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d:D

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "speed"

    .line 791
    iget v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f:F

    float-to-double v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "bearing"

    .line 792
    iget v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->g:F

    float-to-double v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "retype"

    .line 793
    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "citycode"

    .line 794
    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "desc"

    .line 795
    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "adcode"

    .line 796
    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "country"

    .line 797
    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "province"

    .line 798
    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "city"

    .line 799
    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->u:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "district"

    .line 800
    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->v:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "road"

    .line 801
    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->w:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "street"

    .line 802
    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->x:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "number"

    .line 803
    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->E:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "poiname"

    .line 804
    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->y:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "cens"

    .line 805
    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->z:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "poiid"

    .line 806
    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->A:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "floor"

    .line 807
    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->B:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "coord"

    .line 808
    iget v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->C:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "mcell"

    .line 809
    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->D:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "errorCode"

    .line 810
    iget v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "errorInfo"

    .line 811
    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "locationType"

    .line 812
    iget v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "locationDetail"

    .line 813
    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 814
    iget-object v2, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->H:Lorg/json/JSONObject;

    if-nez v2, :cond_2

    :cond_1
    :goto_1
    :pswitch_1
    const-string/jumbo v2, "time"

    .line 820
    iget-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :pswitch_2
    const-string/jumbo v2, "provider"

    .line 822
    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "lon"

    .line 823
    iget-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b:D

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "lat"

    .line 824
    iget-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c:D

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "accuracy"

    .line 825
    iget v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->e:F

    float-to-double v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "type"

    .line 826
    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "isOffset"

    .line 827
    iget-boolean v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->F:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v2, "isReversegeo"

    .line 828
    iget-boolean v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->G:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 838
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 834
    goto/16 :goto_0

    :cond_2
    const-string/jumbo v2, "offpct"

    .line 815
    invoke-static {v1, v2}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "offpct"

    .line 816
    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->H:Lorg/json/JSONObject;

    const-string/jumbo v4, "offpct"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 788
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public c(D)V
    .locals 1

    .prologue
    .line 454
    iput-wide p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d:D

    .line 455
    return-void
.end method

.method public c(F)V
    .locals 2

    .prologue
    .line 489
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "#.0"

    invoke-static {v0, v1}, Lcom/loc/bw;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->A(Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a:Ljava/lang/String;

    .line 423
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 434
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b:D

    .line 435
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 845
    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 446
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c:D

    .line 447
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->F:Z

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i:Ljava/lang/String;

    .line 510
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->G:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n:Ljava/lang/String;

    .line 518
    return-void
.end method

.method public h()D
    .locals 2

    .prologue
    .line 426
    iget-wide v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b:D

    return-wide v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o:Ljava/lang/String;

    .line 526
    return-void
.end method

.method public i()D
    .locals 2

    .prologue
    .line 438
    iget-wide v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c:D

    return-wide v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p:Ljava/lang/String;

    .line 534
    return-void
.end method

.method public j()F
    .locals 1

    .prologue
    .line 458
    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->e:F

    return v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q:Ljava/lang/String;

    .line 542
    return-void
.end method

.method public k()J
    .locals 2

    .prologue
    .line 497
    iget-wide v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h:J

    return-wide v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r:Ljava/lang/String;

    .line 550
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s:Ljava/lang/String;

    .line 558
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t:Ljava/lang/String;

    .line 566
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->u:Ljava/lang/String;

    .line 574
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->v:Ljava/lang/String;

    .line 582
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->w:Ljava/lang/String;

    .line 590
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->x:Ljava/lang/String;

    .line 598
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->E:Ljava/lang/String;

    .line 616
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->y:Ljava/lang/String;

    .line 624
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->u:Ljava/lang/String;

    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 631
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "\\*"

    .line 634
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 636
    array-length v3, v2

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_1

    .line 655
    :goto_1
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->z:Ljava/lang/String;

    .line 656
    return-void

    .line 632
    :cond_0
    return-void

    .line 636
    :cond_1
    aget-object v4, v2, v0

    .line 640
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v0, ","

    .line 646
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 647
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(D)V

    const/4 v1, 0x1

    .line 648
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(D)V

    const/4 v1, 0x2

    .line 649
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 650
    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(F)V

    goto :goto_1

    .line 636
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->v:Ljava/lang/String;

    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 663
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->A:Ljava/lang/String;

    .line 664
    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->w:Ljava/lang/String;

    return-object v0
.end method

.method public v(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 671
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    :goto_0
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->B:Ljava/lang/String;

    .line 680
    return-void

    :cond_0
    const-string/jumbo v0, "F"

    const-string/jumbo v1, ""

    .line 672
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 674
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 677
    :catch_0
    move-exception v0

    const/4 p1, 0x0

    .line 676
    goto :goto_0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->x:Ljava/lang/String;

    return-object v0
.end method

.method public w(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 687
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a:Ljava/lang/String;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "0"

    .line 691
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "1"

    .line 693
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 696
    iput v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->C:I

    .line 698
    :goto_0
    return-void

    .line 688
    :cond_0
    iput v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->C:I

    goto :goto_0

    .line 690
    :cond_1
    iput v2, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->C:I

    goto :goto_0

    .line 692
    :cond_2
    iput v2, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->C:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 694
    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->C:I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 849
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 850
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 851
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 852
    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->g:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 854
    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 855
    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->e:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 856
    iget-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 857
    iget-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 858
    iget-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 859
    iget-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 860
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 861
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 862
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 863
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 865
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 868
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 869
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 870
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 873
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 874
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 875
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->D:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 876
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 877
    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->C:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 878
    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 879
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->E:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 880
    iget-boolean v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->F:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 881
    iget-boolean v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->G:Z

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 884
    return-void

    :cond_0
    move v0, v2

    .line 880
    goto :goto_0

    :cond_1
    move v1, v2

    .line 881
    goto :goto_1
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->E:Ljava/lang/String;

    return-object v0
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 740
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->D:Ljava/lang/String;

    .line 741
    return-void
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->y:Ljava/lang/String;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->A:Ljava/lang/String;

    return-object v0
.end method
