.class public final synthetic Lcom/oneplus/aod/slice/-$$Lambda$OpSliceManager$bc5FflJJqAJrqqT9q8U1JQ3DSW4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/oneplus/aod/slice/OpSliceManager;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/aod/slice/OpSliceManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/slice/-$$Lambda$OpSliceManager$bc5FflJJqAJrqqT9q8U1JQ3DSW4;->f$0:Lcom/oneplus/aod/slice/OpSliceManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/slice/-$$Lambda$OpSliceManager$bc5FflJJqAJrqqT9q8U1JQ3DSW4;->f$0:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-virtual {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->lambda$refresh$1$OpSliceManager()V

    return-void
.end method
