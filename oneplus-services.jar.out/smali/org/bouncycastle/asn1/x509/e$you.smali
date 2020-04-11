.class Lorg/bouncycastle/asn1/x509/e$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/x509/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/asn1/x509/e;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/x509/e;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/e$you;->this$0:Lorg/bouncycastle/asn1/x509/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/asn1/x509/e;Lorg/bouncycastle/asn1/x509/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x509/e$you;-><init>(Lorg/bouncycastle/asn1/x509/e;)V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Empty Enumeration"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
