.class public Lorg/bouncycastle/jcajce/you/tsu/bio$vdb;
.super Lorg/bouncycastle/jcajce/you/tsu/bio$tsu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/tsu/bio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "vdb"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "PBKDF2WithHmacSHA256"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/you/tsu/bio$tsu;-><init>(Ljava/lang/String;I)V

    return-void
.end method
