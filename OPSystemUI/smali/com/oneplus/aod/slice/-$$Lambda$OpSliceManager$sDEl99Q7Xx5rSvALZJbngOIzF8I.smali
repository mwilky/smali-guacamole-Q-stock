.class public final synthetic Lcom/oneplus/aod/slice/-$$Lambda$OpSliceManager$sDEl99Q7Xx5rSvALZJbngOIzF8I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/slice/-$$Lambda$OpSliceManager$sDEl99Q7Xx5rSvALZJbngOIzF8I;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/slice/-$$Lambda$OpSliceManager$sDEl99Q7Xx5rSvALZJbngOIzF8I;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Lcom/oneplus/aod/slice/OpSlice;

    invoke-static {p0, p1}, Lcom/oneplus/aod/slice/OpSliceManager;->lambda$dump$2(Ljava/io/PrintWriter;Lcom/oneplus/aod/slice/OpSlice;)V

    return-void
.end method
