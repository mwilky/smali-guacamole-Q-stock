.class Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$1;
.super Ljava/security/InvalidKeyException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis;->engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$1;->this$0:Lorg/bouncycastle/jcajce/provider/asymmetric/ec/sis;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$1;->val$e:Ljava/lang/Exception;

    return-object p0
.end method
