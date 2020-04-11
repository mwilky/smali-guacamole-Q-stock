.class Lorg/bouncycastle/crypto/bio/sis$zta;
.super Ljava/io/ByteArrayOutputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/bio/sis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/crypto/bio/sis;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/bio/sis;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/bio/sis$zta;->this$0:Lorg/bouncycastle/crypto/bio/sis;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 0

    iget-object p0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    return-object p0
.end method
