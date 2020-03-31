.class public final synthetic Lcom/oneplus/aod/slice/-$$Lambda$OpSliceManager$uEI6V7m4r8KzqBNTTRNzRj3G2Ac;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/oneplus/aod/slice/-$$Lambda$OpSliceManager$uEI6V7m4r8KzqBNTTRNzRj3G2Ac;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/aod/slice/-$$Lambda$OpSliceManager$uEI6V7m4r8KzqBNTTRNzRj3G2Ac;->f$0:Z

    check-cast p1, Lcom/oneplus/aod/slice/OpSlice;

    invoke-static {p0, p1}, Lcom/oneplus/aod/slice/OpSliceManager;->lambda$setListening$0(ZLcom/oneplus/aod/slice/OpSlice;)V

    return-void
.end method
