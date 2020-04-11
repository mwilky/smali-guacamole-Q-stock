.class public Lcom/oneplus/support/core/app/Person$Builder;
.super Ljava/lang/Object;
.source "Person.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/app/Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mIcon:Lcom/oneplus/support/core/graphics/drawable/IconCompat;
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation
.end field

.field private mIsBot:Z

.field private mIsImportant:Z

.field private mKey:Ljava/lang/String;
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation
.end field

.field private mName:Ljava/lang/CharSequence;
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation
.end field

.field private mUri:Ljava/lang/String;
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/oneplus/support/core/app/Person;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/oneplus/support/core/app/Person;->access$700(Lcom/oneplus/support/core/app/Person;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/core/app/Person$Builder;->mName:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/oneplus/support/core/app/Person;->access$800(Lcom/oneplus/support/core/app/Person;)Lcom/oneplus/support/core/graphics/drawable/IconCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/core/app/Person$Builder;->mIcon:Lcom/oneplus/support/core/graphics/drawable/IconCompat;

    invoke-static {p1}, Lcom/oneplus/support/core/app/Person;->access$900(Lcom/oneplus/support/core/app/Person;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/core/app/Person$Builder;->mUri:Ljava/lang/String;

    invoke-static {p1}, Lcom/oneplus/support/core/app/Person;->access$1000(Lcom/oneplus/support/core/app/Person;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/support/core/app/Person$Builder;->mKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/oneplus/support/core/app/Person;->access$1100(Lcom/oneplus/support/core/app/Person;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/support/core/app/Person$Builder;->mIsBot:Z

    invoke-static {p1}, Lcom/oneplus/support/core/app/Person;->access$1200(Lcom/oneplus/support/core/app/Person;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/support/core/app/Person$Builder;->mIsImportant:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/support/core/app/Person;Lcom/oneplus/support/core/app/Person$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/support/core/app/Person$Builder;-><init>(Lcom/oneplus/support/core/app/Person;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/support/core/app/Person$Builder;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/app/Person$Builder;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/support/core/app/Person$Builder;)Lcom/oneplus/support/core/graphics/drawable/IconCompat;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/app/Person$Builder;->mIcon:Lcom/oneplus/support/core/graphics/drawable/IconCompat;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/support/core/app/Person$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/app/Person$Builder;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/support/core/app/Person$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/app/Person$Builder;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/support/core/app/Person$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/support/core/app/Person$Builder;->mIsBot:Z

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/support/core/app/Person$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/support/core/app/Person$Builder;->mIsImportant:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/oneplus/support/core/app/Person;
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/oneplus/support/core/app/Person;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/support/core/app/Person;-><init>(Lcom/oneplus/support/core/app/Person$Builder;Lcom/oneplus/support/core/app/Person$1;)V

    return-object v0
.end method

.method public setBot(Z)Lcom/oneplus/support/core/app/Person$Builder;
    .locals 0
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/oneplus/support/core/app/Person$Builder;->mIsBot:Z

    return-object p0
.end method

.method public setIcon(Lcom/oneplus/support/core/graphics/drawable/IconCompat;)Lcom/oneplus/support/core/app/Person$Builder;
    .locals 0
    .param p1    # Lcom/oneplus/support/core/graphics/drawable/IconCompat;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/oneplus/support/core/app/Person$Builder;->mIcon:Lcom/oneplus/support/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public setImportant(Z)Lcom/oneplus/support/core/app/Person$Builder;
    .locals 0
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/oneplus/support/core/app/Person$Builder;->mIsImportant:Z

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/oneplus/support/core/app/Person$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/oneplus/support/core/app/Person$Builder;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/CharSequence;)Lcom/oneplus/support/core/app/Person$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/oneplus/support/core/app/Person$Builder;->mName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lcom/oneplus/support/core/app/Person$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/oneplus/support/core/app/Person$Builder;->mUri:Ljava/lang/String;

    return-object p0
.end method
