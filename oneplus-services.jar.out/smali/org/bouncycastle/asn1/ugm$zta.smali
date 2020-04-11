.class Lorg/bouncycastle/asn1/ugm$zta;
.super Lorg/bouncycastle/asn1/ugm;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/ugm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field private first:Z

.field final synthetic this$0:Lorg/bouncycastle/asn1/ugm;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ugm;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/ugm$zta;->this$0:Lorg/bouncycastle/asn1/ugm;

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/ugm;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/ugm$zta;->first:Z

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/ugm$zta;->first:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/ugm$zta;->first:Z

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/bouncycastle/asn1/ugm;->write(I)V

    :goto_0
    return-void
.end method
