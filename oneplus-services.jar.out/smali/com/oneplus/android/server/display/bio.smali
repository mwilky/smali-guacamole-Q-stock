.class public Lcom/oneplus/android/server/display/bio;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final Zaa:[I


# instance fields
.field private Yaa:Lsis/you/you/zta/zta/zta;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/android/server/display/bio;->Zaa:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xff
        0xff
        0xff
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsis/you/you/zta/zta/zta;

    invoke-direct {v0}, Lsis/you/you/zta/zta/zta;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/display/bio;->Yaa:Lsis/you/you/zta/zta/zta;

    return-void
.end method

.method private Vb(I)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const-string p1, "%02X"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Ae()Lsis/you/you/zta/zta/zta;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/bio;->Yaa:Lsis/you/you/zta/zta/zta;

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 6

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "------------Parameter----------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "current parameters:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/display/bio;->Yaa:Lsis/you/you/zta/zta/zta;

    iget-object v2, v2, Lsis/you/you/zta/zta/zta;->red:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/display/bio;->Vb(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/display/bio;->Yaa:Lsis/you/you/zta/zta/zta;

    iget-object v2, v2, Lsis/you/you/zta/zta/zta;->red:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/display/bio;->Vb(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/display/bio;->Yaa:Lsis/you/you/zta/zta/zta;

    iget-object v2, v2, Lsis/you/you/zta/zta/zta;->red:[I

    const/4 v5, 0x2

    aget v2, v2, v5

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/display/bio;->Vb(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/display/bio;->Yaa:Lsis/you/you/zta/zta/zta;

    iget-object v2, v2, Lsis/you/you/zta/zta/zta;->green:[I

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/display/bio;->Vb(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/display/bio;->Yaa:Lsis/you/you/zta/zta/zta;

    iget-object v2, v2, Lsis/you/you/zta/zta/zta;->green:[I

    aget v2, v2, v4

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/display/bio;->Vb(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/display/bio;->Yaa:Lsis/you/you/zta/zta/zta;

    iget-object v2, v2, Lsis/you/you/zta/zta/zta;->green:[I

    aget v2, v2, v5

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/display/bio;->Vb(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/display/bio;->Yaa:Lsis/you/you/zta/zta/zta;

    iget-object v2, v2, Lsis/you/you/zta/zta/zta;->blue:[I

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/display/bio;->Vb(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/display/bio;->Yaa:Lsis/you/you/zta/zta/zta;

    iget-object v2, v2, Lsis/you/you/zta/zta/zta;->blue:[I

    aget v2, v2, v4

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/display/bio;->Vb(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/display/bio;->Yaa:Lsis/you/you/zta/zta/zta;

    iget-object v2, v2, Lsis/you/you/zta/zta/zta;->blue:[I

    aget v2, v2, v5

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/display/bio;->Vb(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/display/bio;->Yaa:Lsis/you/you/zta/zta/zta;

    iget-object v2, v2, Lsis/you/you/zta/zta/zta;->mHa:[I

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/display/bio;->Vb(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/display/bio;->Yaa:Lsis/you/you/zta/zta/zta;

    iget-object v2, v2, Lsis/you/you/zta/zta/zta;->mHa:[I

    aget v2, v2, v4

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/display/bio;->Vb(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/display/bio;->Yaa:Lsis/you/you/zta/zta/zta;

    iget-object v2, v2, Lsis/you/you/zta/zta/zta;->mHa:[I

    aget v2, v2, v5

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/display/bio;->Vb(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/display/bio;->Yaa:Lsis/you/you/zta/zta/zta;

    iget-object v2, v2, Lsis/you/you/zta/zta/zta;->nHa:[I

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/display/bio;->Vb(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/display/bio;->Yaa:Lsis/you/you/zta/zta/zta;

    iget-object v2, v2, Lsis/you/you/zta/zta/zta;->nHa:[I

    aget v2, v2, v4

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/display/bio;->Vb(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/display/bio;->Yaa:Lsis/you/you/zta/zta/zta;

    iget-object v2, v2, Lsis/you/you/zta/zta/zta;->nHa:[I

    aget v2, v2, v5

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/display/bio;->Vb(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/display/bio;->Yaa:Lsis/you/you/zta/zta/zta;

    iget-object v2, v2, Lsis/you/you/zta/zta/zta;->oHa:[I

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/display/bio;->Vb(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/display/bio;->Yaa:Lsis/you/you/zta/zta/zta;

    iget-object v2, v2, Lsis/you/you/zta/zta/zta;->oHa:[I

    aget v2, v2, v4

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/display/bio;->Vb(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/display/bio;->Yaa:Lsis/you/you/zta/zta/zta;

    iget-object v2, v2, Lsis/you/you/zta/zta/zta;->oHa:[I

    aget v2, v2, v5

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/display/bio;->Vb(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/display/bio;->Yaa:Lsis/you/you/zta/zta/zta;

    iget-object v2, v2, Lsis/you/you/zta/zta/zta;->pHa:[I

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/display/bio;->Vb(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/display/bio;->Yaa:Lsis/you/you/zta/zta/zta;

    iget-object v2, v2, Lsis/you/you/zta/zta/zta;->pHa:[I

    aget v2, v2, v4

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/display/bio;->Vb(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/display/bio;->Yaa:Lsis/you/you/zta/zta/zta;

    iget-object v1, v1, Lsis/you/you/zta/zta/zta;->pHa:[I

    aget v1, v1, v5

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/display/bio;->Vb(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public zta([[I[I)V
    .locals 6

    iget-object p0, p0, Lcom/oneplus/android/server/display/bio;->Yaa:Lsis/you/you/zta/zta/zta;

    iget-object v0, p0, Lsis/you/you/zta/zta/zta;->red:[I

    const/4 v1, 0x0

    aget-object v2, p1, v1

    aget v2, v2, v1

    aput v2, v0, v1

    aget-object v2, p1, v1

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v0, v3

    aget-object v2, p1, v1

    const/4 v4, 0x2

    aget v2, v2, v4

    aput v2, v0, v4

    iget-object v0, p0, Lsis/you/you/zta/zta/zta;->green:[I

    aget-object v2, p1, v3

    aget v2, v2, v1

    aput v2, v0, v1

    aget-object v2, p1, v3

    aget v2, v2, v3

    aput v2, v0, v3

    aget-object v2, p1, v3

    aget v2, v2, v4

    aput v2, v0, v4

    iget-object v0, p0, Lsis/you/you/zta/zta/zta;->blue:[I

    aget-object v2, p1, v4

    aget v2, v2, v1

    aput v2, v0, v1

    aget-object v2, p1, v4

    aget v2, v2, v3

    aput v2, v0, v3

    aget-object v2, p1, v4

    aget v2, v2, v4

    aput v2, v0, v4

    iget-object v0, p0, Lsis/you/you/zta/zta/zta;->mHa:[I

    const/4 v2, 0x3

    aget-object v5, p1, v2

    aget v5, v5, v1

    aput v5, v0, v1

    aget-object v5, p1, v2

    aget v5, v5, v3

    aput v5, v0, v3

    aget-object v2, p1, v2

    aget v2, v2, v4

    aput v2, v0, v4

    iget-object v0, p0, Lsis/you/you/zta/zta/zta;->nHa:[I

    const/4 v2, 0x4

    aget-object v5, p1, v2

    aget v5, v5, v1

    aput v5, v0, v1

    aget-object v5, p1, v2

    aget v5, v5, v3

    aput v5, v0, v3

    aget-object v2, p1, v2

    aget v2, v2, v4

    aput v2, v0, v4

    iget-object v0, p0, Lsis/you/you/zta/zta/zta;->oHa:[I

    const/4 v2, 0x5

    aget-object v5, p1, v2

    aget v5, v5, v1

    aput v5, v0, v1

    aget-object v5, p1, v2

    aget v5, v5, v3

    aput v5, v0, v3

    aget-object p1, p1, v2

    aget p1, p1, v4

    aput p1, v0, v4

    iget-object p0, p0, Lsis/you/you/zta/zta/zta;->pHa:[I

    aget p1, p2, v1

    aput p1, p0, v1

    aget p1, p2, v3

    aput p1, p0, v3

    aget p1, p2, v4

    aput p1, p0, v4

    return-void
.end method

.method public zta([[I[[I[I)V
    .locals 5

    iget-object p0, p0, Lcom/oneplus/android/server/display/bio;->Yaa:Lsis/you/you/zta/zta/zta;

    iget-object v0, p0, Lsis/you/you/zta/zta/zta;->red:[I

    const/4 v1, 0x0

    aget-object v2, p1, v1

    aget v2, v2, v1

    aput v2, v0, v1

    aget-object v2, p1, v1

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v0, v3

    aget-object v2, p1, v1

    const/4 v4, 0x2

    aget v2, v2, v4

    aput v2, v0, v4

    iget-object v0, p0, Lsis/you/you/zta/zta/zta;->green:[I

    aget-object v2, p1, v3

    aget v2, v2, v1

    aput v2, v0, v1

    aget-object v2, p1, v3

    aget v2, v2, v3

    aput v2, v0, v3

    aget-object v2, p1, v3

    aget v2, v2, v4

    aput v2, v0, v4

    iget-object v0, p0, Lsis/you/you/zta/zta/zta;->blue:[I

    aget-object v2, p1, v4

    aget v2, v2, v1

    aput v2, v0, v1

    aget-object v2, p1, v4

    aget v2, v2, v3

    aput v2, v0, v3

    aget-object p1, p1, v4

    aget p1, p1, v4

    aput p1, v0, v4

    iget-object p1, p0, Lsis/you/you/zta/zta/zta;->mHa:[I

    aget-object v0, p2, v1

    aget v0, v0, v1

    aput v0, p1, v1

    aget-object v0, p2, v1

    aget v0, v0, v3

    aput v0, p1, v3

    aget-object v0, p2, v1

    aget v0, v0, v4

    aput v0, p1, v4

    iget-object p1, p0, Lsis/you/you/zta/zta/zta;->nHa:[I

    aget-object v0, p2, v3

    aget v0, v0, v1

    aput v0, p1, v1

    aget-object v0, p2, v3

    aget v0, v0, v3

    aput v0, p1, v3

    aget-object v0, p2, v3

    aget v0, v0, v4

    aput v0, p1, v4

    iget-object p1, p0, Lsis/you/you/zta/zta/zta;->oHa:[I

    aget-object v0, p2, v4

    aget v0, v0, v1

    aput v0, p1, v1

    aget-object v0, p2, v4

    aget v0, v0, v3

    aput v0, p1, v3

    aget-object p2, p2, v4

    aget p2, p2, v4

    aput p2, p1, v4

    iget-object p0, p0, Lsis/you/you/zta/zta/zta;->pHa:[I

    aget p1, p3, v1

    aput p1, p0, v1

    aget p1, p3, v3

    aput p1, p0, v3

    aget p1, p3, v4

    aput p1, p0, v4

    return-void
.end method
