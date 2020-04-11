.class public final Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "MessagingBasicImpl.java"

# interfaces
.implements Landroidx/slice/builders/impl/MessagingBuilder$MessageBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/impl/MessagingBasicImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageBuilder"
.end annotation


# instance fields
.field mIcon:Landroidx/slice/Slice;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation
.end field

.field mText:Ljava/lang/CharSequence;

.field mTimestamp:J


# direct methods
.method private constructor <init>(Landroidx/slice/Slice$Builder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-void
.end method

.method public constructor <init>(Landroidx/slice/builders/impl/MessagingBasicImpl;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/slice/builders/impl/MessagingBasicImpl;->createChildBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;-><init>(Landroidx/slice/Slice$Builder;)V

    return-void
.end method


# virtual methods
.method public addSource(Landroid/graphics/drawable/Icon;)V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    invoke-virtual {p0}, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    const-string v2, "no_tint"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "source"

    invoke-virtual {v0, v1, v3, v2}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    const-string v1, "title"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;->mIcon:Landroidx/slice/Slice;

    return-void
.end method

.method public addText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;->mText:Ljava/lang/CharSequence;

    return-void
.end method

.method public addTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;->mTimestamp:J

    return-void
.end method

.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 0

    return-void
.end method
