.class public Lcom/loc/ac;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DB.java"


# instance fields
.field private a:Lcom/loc/z;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/loc/z;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 16
    iput-object p5, p0, Lcom/loc/ac;->a:Lcom/loc/z;

    .line 18
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/loc/ac;->a:Lcom/loc/z;

    invoke-interface {v0, p1}, Lcom/loc/z;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 23
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/loc/ac;->a:Lcom/loc/z;

    invoke-interface {v0, p1, p2, p3}, Lcom/loc/z;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 29
    return-void
.end method
