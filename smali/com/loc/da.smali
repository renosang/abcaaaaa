.class public final Lcom/loc/da;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field a:Lcom/loc/db;

.field b:Landroid/location/Location;


# direct methods
.method protected constructor <init>(Lcom/loc/cz;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/loc/db;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/loc/db;-><init>(Landroid/telephony/CellLocation;)V

    iput-object v0, p0, Lcom/loc/da;->a:Lcom/loc/db;

    return-void
.end method
