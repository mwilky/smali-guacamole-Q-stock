.class public Lorg/bouncycastle/jcajce/you/tsu/sis$sis;
.super Lorg/bouncycastle/jcajce/provider/util/zta;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/tsu/sis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "sis"
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/bouncycastle/jcajce/you/tsu/sis;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/you/tsu/sis$sis;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/util/zta;-><init>()V

    return-void
.end method


# virtual methods
.method public zta(Lorg/bouncycastle/jcajce/provider/config/zta;)V
    .locals 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lorg/bouncycastle/jcajce/you/tsu/sis$sis;->PREFIX:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$Base"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Cipher.ARC4"

    invoke-interface {p1, v0, p0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lorg/bouncycastle/asn1/dma/gwm;->rc4:Lorg/bouncycastle/asn1/bvj;

    const-string v0, "Alg.Alias.Cipher"

    const-string v1, "ARC4"

    invoke-interface {p1, v0, p0, v1}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.Cipher.ARCFOUR"

    invoke-interface {p1, p0, v1}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.Cipher.RC4"

    invoke-interface {p1, p0, v1}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/bouncycastle/jcajce/you/tsu/sis$sis;->PREFIX:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$KeyGen"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "KeyGenerator.ARC4"

    invoke-interface {p1, v2, p0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.KeyGenerator.RC4"

    invoke-interface {p1, p0, v1}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.KeyGenerator.1.2.840.113549.3.4"

    invoke-interface {p1, p0, v1}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/bouncycastle/jcajce/you/tsu/sis$sis;->PREFIX:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$PBEWithSHAAnd128BitKeyFactory"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SecretKeyFactory.PBEWITHSHAAND128BITRC4"

    invoke-interface {p1, v1, p0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/bouncycastle/jcajce/you/tsu/sis$sis;->PREFIX:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$PBEWithSHAAnd40BitKeyFactory"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SecretKeyFactory.PBEWITHSHAAND40BITRC4"

    invoke-interface {p1, v1, p0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.AlgorithmParameters."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/bouncycastle/asn1/dma/gwm;->pbeWithSHAAnd128BitRC4:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "PKCS12PBE"

    invoke-interface {p1, p0, v2}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->pbeWithSHAAnd40BitRC4:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v2}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND40BITRC4"

    invoke-interface {p1, p0, v2}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITRC4"

    invoke-interface {p1, p0, v2}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDRC4"

    invoke-interface {p1, p0, v2}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/bouncycastle/jcajce/you/tsu/sis$sis;->PREFIX:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$PBEWithSHAAnd128Bit"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Cipher.PBEWITHSHAAND128BITRC4"

    invoke-interface {p1, v1, p0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/bouncycastle/jcajce/you/tsu/sis$sis;->PREFIX:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$PBEWithSHAAnd40Bit"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Cipher.PBEWITHSHAAND40BITRC4"

    invoke-interface {p1, v1, p0}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lorg/bouncycastle/asn1/dma/gwm;->pbeWithSHAAnd128BitRC4:Lorg/bouncycastle/asn1/bvj;

    const-string v1, "Alg.Alias.SecretKeyFactory"

    const-string v2, "PBEWITHSHAAND128BITRC4"

    invoke-interface {p1, v1, p0, v2}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;)V

    sget-object p0, Lorg/bouncycastle/asn1/dma/gwm;->pbeWithSHAAnd40BitRC4:Lorg/bouncycastle/asn1/bvj;

    const-string v3, "PBEWITHSHAAND40BITRC4"

    invoke-interface {p1, v1, p0, v3}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.Cipher.PBEWITHSHA1AND128BITRC4"

    invoke-interface {p1, p0, v2}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Alg.Alias.Cipher.PBEWITHSHA1AND40BITRC4"

    invoke-interface {p1, p0, v3}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lorg/bouncycastle/asn1/dma/gwm;->pbeWithSHAAnd128BitRC4:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {p1, v0, p0, v2}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;)V

    sget-object p0, Lorg/bouncycastle/asn1/dma/gwm;->pbeWithSHAAnd40BitRC4:Lorg/bouncycastle/asn1/bvj;

    invoke-interface {p1, v0, p0, v3}, Lorg/bouncycastle/jcajce/provider/config/zta;->zta(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;)V

    return-void
.end method
