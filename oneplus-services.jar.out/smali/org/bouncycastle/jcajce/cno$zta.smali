.class public Lorg/bouncycastle/jcajce/cno$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/cno;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zta"
.end annotation


# instance fields
.field private final aCa:Ljava/security/cert/CertSelector;


# direct methods
.method public constructor <init>(Ljava/security/cert/CertSelector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/security/cert/CertSelector;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/CertSelector;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/cno$zta;->aCa:Ljava/security/cert/CertSelector;

    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/jcajce/cno;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/jcajce/cno<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/jcajce/cno;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/cno$zta;->aCa:Ljava/security/cert/CertSelector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/jcajce/cno;-><init>(Ljava/security/cert/CertSelector;Lorg/bouncycastle/jcajce/ssp;)V

    return-object v0
.end method
