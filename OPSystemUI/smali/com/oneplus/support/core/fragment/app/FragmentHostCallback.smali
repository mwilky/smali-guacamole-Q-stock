.class public abstract Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;
.super Lcom/oneplus/support/core/fragment/app/FragmentContainer;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oneplus/support/core/fragment/app/FragmentContainer;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mContext:Landroid/content/Context;

.field final mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

.field private final mHandler:Landroid/os/Handler;

.field private final mWindowAnimations:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/support/core/fragment/app/FragmentContainer;-><init>()V

    new-instance v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-direct {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    const-string p1, "context == null"

    invoke-static {p2, p1}, Lcom/oneplus/support/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    const-string p1, "handler == null"

    invoke-static {p3, p1}, Lcom/oneplus/support/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Landroid/os/Handler;

    iput-object p3, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    iput p4, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mWindowAnimations:I

    return-void
.end method

.method constructor <init>(Lcom/oneplus/support/core/fragment/app/FragmentActivity;)V
    .locals 2

    iget-object v0, p1, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method getFragmentManagerImpl()Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mFragmentManager:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    return-object p0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method abstract onAttachFragment(Lcom/oneplus/support/core/fragment/app/Fragment;)V
.end method

.method public abstract onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract onGetLayoutInflater()Landroid/view/LayoutInflater;
.end method

.method public abstract onGetWindowAnimations()I
.end method

.method public abstract onHasWindowAnimations()Z
.end method

.method public abstract onShouldSaveFragmentState(Lcom/oneplus/support/core/fragment/app/Fragment;)Z
.end method

.method public abstract onSupportInvalidateOptionsMenu()V
.end method
