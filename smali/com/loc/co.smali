.class final Lcom/loc/co;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/location/GpsStatus$NmeaListener;


# instance fields
.field private synthetic a:Lcom/loc/cl;


# direct methods
.method private constructor <init>(Lcom/loc/cl;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/loc/co;->a:Lcom/loc/cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/loc/cl;B)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lcom/loc/co;-><init>(Lcom/loc/cl;)V

    return-void
.end method


# virtual methods
.method public final onNmeaReceived(JLjava/lang/String;)V
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/loc/co;->a:Lcom/loc/cl;

    invoke-static {v0, p1, p2}, Lcom/loc/cl;->c(Lcom/loc/cl;J)J

    iget-object v0, p0, Lcom/loc/co;->a:Lcom/loc/cl;

    invoke-static {v0, p3}, Lcom/loc/cl;->a(Lcom/loc/cl;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method
