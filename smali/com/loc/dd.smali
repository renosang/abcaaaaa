.class public final Lcom/loc/dd;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field a:Ljava/util/List;

.field b:Landroid/location/Location;


# direct methods
.method protected constructor <init>(Lcom/loc/cz;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/dd;->a:Ljava/util/List;

    return-void
.end method
