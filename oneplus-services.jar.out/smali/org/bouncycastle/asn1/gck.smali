.class public abstract Lorg/bouncycastle/asn1/gck;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected Qra:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/gck;->Qra:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public abstract getRawOutputStream()Ljava/io/OutputStream;
.end method
