.class Lorg/bouncycastle/jce/provider/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/zta;->this$0:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/zta;->this$0:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->zta(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;)V

    const/4 p0, 0x0

    return-object p0
.end method
