.class public Lcom/ansca/corona/CoronaEditText;
.super Landroid/widget/EditText;
.source "CoronaEditText.java"


# static fields
.field private static sBorderPaddingBottom:I = -0x1

.field private static sBorderPaddingLeft:I = -0x1

.field private static sBorderPaddingRight:I = -0x1

.field private static sBorderPaddingTop:I = -0x1


# instance fields
.field private editingAfter:I

.field private editingBefore:I

.field private editingNumDeleted:I

.field private editingStart:I

.field private isEditing:Z

.field private myClearingFocus:Z

.field private myCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

.field private myCurrentText:Ljava/lang/String;

.field private myIsPassword:Z

.field private myKeyListener:Landroid/text/method/TextKeyListener;

.field private myPreviousText:Ljava/lang/String;

.field private myTextColor:I

.field private noEmoji:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaEditText;->myIsPassword:Z

    .line 41
    iput p1, p0, Lcom/ansca/corona/CoronaEditText;->myTextColor:I

    .line 42
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaEditText;->myClearingFocus:Z

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/ansca/corona/CoronaEditText;->myPreviousText:Ljava/lang/String;

    const-string v1, ""

    .line 44
    iput-object v1, p0, Lcom/ansca/corona/CoronaEditText;->myCurrentText:Ljava/lang/String;

    .line 45
    iput p1, p0, Lcom/ansca/corona/CoronaEditText;->editingNumDeleted:I

    .line 46
    iput p1, p0, Lcom/ansca/corona/CoronaEditText;->editingStart:I

    .line 47
    iput p1, p0, Lcom/ansca/corona/CoronaEditText;->editingBefore:I

    .line 48
    iput p1, p0, Lcom/ansca/corona/CoronaEditText;->editingAfter:I

    .line 49
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaEditText;->isEditing:Z

    .line 50
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaEditText;->noEmoji:Z

    .line 51
    iput-object v0, p0, Lcom/ansca/corona/CoronaEditText;->myKeyListener:Landroid/text/method/TextKeyListener;

    .line 52
    iput-object v0, p0, Lcom/ansca/corona/CoronaEditText;->myCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    .line 57
    iput-object p2, p0, Lcom/ansca/corona/CoronaEditText;->myCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    const/16 p2, 0xa

    const/4 v0, 0x4

    const/16 v1, 0x8

    .line 65
    invoke-virtual {p0, p2, v0, p2, v1}, Lcom/ansca/corona/CoronaEditText;->setPadding(IIII)V

    .line 67
    new-instance p2, Lcom/ansca/corona/CoronaEditText$1;

    invoke-direct {p2, p0}, Lcom/ansca/corona/CoronaEditText$1;-><init>(Lcom/ansca/corona/CoronaEditText;)V

    invoke-virtual {p0, p2}, Lcom/ansca/corona/CoronaEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 77
    new-instance p2, Lcom/ansca/corona/CoronaEditText$2;

    invoke-direct {p2, p0}, Lcom/ansca/corona/CoronaEditText$2;-><init>(Lcom/ansca/corona/CoronaEditText;)V

    invoke-virtual {p0, p2}, Lcom/ansca/corona/CoronaEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 101
    new-instance p2, Lcom/ansca/corona/CoronaEditText$3;

    invoke-direct {p2, p0}, Lcom/ansca/corona/CoronaEditText$3;-><init>(Lcom/ansca/corona/CoronaEditText;)V

    invoke-virtual {p0, p2}, Lcom/ansca/corona/CoronaEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 169
    new-instance p2, Lcom/ansca/corona/CoronaEditText$4;

    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-direct {p2, p0, v0, p1}, Lcom/ansca/corona/CoronaEditText$4;-><init>(Lcom/ansca/corona/CoronaEditText;Landroid/text/method/TextKeyListener$Capitalize;Z)V

    iput-object p2, p0, Lcom/ansca/corona/CoronaEditText;->myKeyListener:Landroid/text/method/TextKeyListener;

    .line 193
    iget-object p1, p0, Lcom/ansca/corona/CoronaEditText;->myKeyListener:Landroid/text/method/TextKeyListener;

    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 197
    new-instance p1, Lcom/ansca/corona/CoronaEditText$5;

    invoke-direct {p1, p0}, Lcom/ansca/corona/CoronaEditText$5;-><init>(Lcom/ansca/corona/CoronaEditText;)V

    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ansca/corona/CoronaEditText;)Lcom/ansca/corona/CoronaRuntime;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/ansca/corona/CoronaEditText;->myCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ansca/corona/CoronaEditText;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/ansca/corona/CoronaEditText;->isEditing:Z

    return p0
.end method

.method static synthetic access$102(Lcom/ansca/corona/CoronaEditText;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaEditText;->isEditing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ansca/corona/CoronaEditText;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/ansca/corona/CoronaEditText;->myPreviousText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/ansca/corona/CoronaEditText;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/ansca/corona/CoronaEditText;->myPreviousText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ansca/corona/CoronaEditText;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/ansca/corona/CoronaEditText;->editingNumDeleted:I

    return p0
.end method

.method static synthetic access$302(Lcom/ansca/corona/CoronaEditText;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/ansca/corona/CoronaEditText;->editingNumDeleted:I

    return p1
.end method

.method static synthetic access$400(Lcom/ansca/corona/CoronaEditText;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/ansca/corona/CoronaEditText;->myCurrentText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/ansca/corona/CoronaEditText;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/ansca/corona/CoronaEditText;->myCurrentText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/ansca/corona/CoronaEditText;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/ansca/corona/CoronaEditText;->noEmoji:Z

    return p0
.end method

.method static synthetic access$600(Lcom/ansca/corona/CoronaEditText;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/ansca/corona/CoronaEditText;->editingStart:I

    return p0
.end method

.method static synthetic access$602(Lcom/ansca/corona/CoronaEditText;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/ansca/corona/CoronaEditText;->editingStart:I

    return p1
.end method

.method static synthetic access$700(Lcom/ansca/corona/CoronaEditText;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/ansca/corona/CoronaEditText;->editingAfter:I

    return p0
.end method

.method static synthetic access$702(Lcom/ansca/corona/CoronaEditText;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/ansca/corona/CoronaEditText;->editingAfter:I

    return p1
.end method

.method static synthetic access$802(Lcom/ansca/corona/CoronaEditText;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/ansca/corona/CoronaEditText;->editingBefore:I

    return p1
.end method

.method static synthetic access$900(Lcom/ansca/corona/CoronaEditText;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/ansca/corona/CoronaEditText;->myIsPassword:Z

    return p0
.end method

.method private fetchBorderPadding()V
    .locals 18

    move-object/from16 v0, p0

    .line 464
    sget v1, Lcom/ansca/corona/CoronaEditText;->sBorderPaddingTop:I

    if-ltz v1, :cond_0

    sget v1, Lcom/ansca/corona/CoronaEditText;->sBorderPaddingBottom:I

    if-ltz v1, :cond_0

    sget v1, Lcom/ansca/corona/CoronaEditText;->sBorderPaddingLeft:I

    if-ltz v1, :cond_0

    sget v1, Lcom/ansca/corona/CoronaEditText;->sBorderPaddingRight:I

    if-ltz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 470
    sput v1, Lcom/ansca/corona/CoronaEditText;->sBorderPaddingTop:I

    .line 471
    sput v1, Lcom/ansca/corona/CoronaEditText;->sBorderPaddingBottom:I

    .line 472
    sput v1, Lcom/ansca/corona/CoronaEditText;->sBorderPaddingLeft:I

    .line 473
    sput v1, Lcom/ansca/corona/CoronaEditText;->sBorderPaddingRight:I

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/ansca/corona/CoronaEditText;->getWidth()I

    move-result v2

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/ansca/corona/CoronaEditText;->getHeight()I

    move-result v3

    if-lez v2, :cond_1

    if-gtz v3, :cond_2

    .line 481
    :cond_1
    invoke-virtual {v0, v1, v1}, Lcom/ansca/corona/CoronaEditText;->measure(II)V

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/ansca/corona/CoronaEditText;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/ansca/corona/CoronaEditText;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Lcom/ansca/corona/CoronaEditText;->layout(IIII)V

    .line 483
    invoke-virtual/range {p0 .. p0}, Lcom/ansca/corona/CoronaEditText;->getWidth()I

    move-result v2

    .line 484
    invoke-virtual/range {p0 .. p0}, Lcom/ansca/corona/CoronaEditText;->getHeight()I

    move-result v3

    :cond_2
    const/4 v4, 0x0

    .line 490
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 491
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v5}, Lcom/ansca/corona/CoronaEditText;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-nez v4, :cond_3

    return-void

    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, -0x1

    :goto_1
    if-ge v6, v3, :cond_d

    const/4 v5, -0x1

    const/4 v15, -0x1

    const/16 v16, 0x0

    :goto_2
    if-ge v1, v2, :cond_6

    .line 512
    invoke-virtual {v4, v1, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    move-object/from16 v17, v4

    const/16 v4, 0x40

    if-le v0, v4, :cond_5

    if-nez v16, :cond_4

    move v5, v1

    :cond_4
    move v15, v1

    const/16 v16, 0x1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, v17

    goto :goto_2

    :cond_6
    move-object/from16 v17, v4

    if-eqz v16, :cond_c

    if-nez v7, :cond_7

    move v8, v6

    const/4 v7, 0x1

    :cond_7
    if-nez v11, :cond_8

    const/4 v11, 0x1

    goto :goto_3

    :cond_8
    if-ge v5, v12, :cond_9

    goto :goto_3

    :cond_9
    move v5, v12

    :goto_3
    if-nez v13, :cond_a

    move v12, v5

    move v10, v6

    move v14, v15

    const/4 v9, 0x1

    const/4 v13, 0x1

    goto :goto_4

    :cond_a
    move v12, v5

    move v10, v6

    if-ge v15, v14, :cond_b

    move v14, v15

    :cond_b
    const/4 v9, 0x1

    :cond_c
    :goto_4
    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object/from16 v4, v17

    goto :goto_1

    :cond_d
    if-eqz v7, :cond_e

    .line 549
    sput v8, Lcom/ansca/corona/CoronaEditText;->sBorderPaddingTop:I

    :cond_e
    const/4 v0, 0x1

    if-eqz v9, :cond_f

    add-int/2addr v10, v0

    sub-int/2addr v3, v10

    .line 552
    sput v3, Lcom/ansca/corona/CoronaEditText;->sBorderPaddingBottom:I

    :cond_f
    if-eqz v11, :cond_10

    .line 555
    sput v12, Lcom/ansca/corona/CoronaEditText;->sBorderPaddingLeft:I

    :cond_10
    if-eqz v13, :cond_11

    add-int/2addr v14, v0

    sub-int/2addr v2, v14

    .line 558
    sput v2, Lcom/ansca/corona/CoronaEditText;->sBorderPaddingRight:I

    :cond_11
    return-void
.end method


# virtual methods
.method public clearFocus()V
    .locals 1

    const/4 v0, 0x1

    .line 220
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaEditText;->myClearingFocus:Z

    .line 222
    invoke-super {p0}, Landroid/widget/EditText;->clearFocus()V

    const/4 v0, 0x0

    .line 224
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaEditText;->myClearingFocus:Z

    return-void
.end method

.method public getBorderPaddingBottom()I
    .locals 1

    .line 448
    invoke-direct {p0}, Lcom/ansca/corona/CoronaEditText;->fetchBorderPadding()V

    .line 449
    sget v0, Lcom/ansca/corona/CoronaEditText;->sBorderPaddingBottom:I

    return v0
.end method

.method public getBorderPaddingLeft()I
    .locals 1

    .line 453
    invoke-direct {p0}, Lcom/ansca/corona/CoronaEditText;->fetchBorderPadding()V

    .line 454
    sget v0, Lcom/ansca/corona/CoronaEditText;->sBorderPaddingLeft:I

    return v0
.end method

.method public getBorderPaddingRight()I
    .locals 1

    .line 458
    invoke-direct {p0}, Lcom/ansca/corona/CoronaEditText;->fetchBorderPadding()V

    .line 459
    sget v0, Lcom/ansca/corona/CoronaEditText;->sBorderPaddingRight:I

    return v0
.end method

.method public getBorderPaddingTop()I
    .locals 1

    .line 443
    invoke-direct {p0}, Lcom/ansca/corona/CoronaEditText;->fetchBorderPadding()V

    .line 444
    sget v0, Lcom/ansca/corona/CoronaEditText;->sBorderPaddingTop:I

    return v0
.end method

.method public getTextString()Ljava/lang/String;
    .locals 2

    .line 421
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 422
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 427
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 423
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText;->myCurrentText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextViewAlign()Ljava/lang/String;
    .locals 2

    .line 353
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaEditText;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v0, "unknown"

    goto :goto_0

    :cond_0
    const-string v0, "right"

    goto :goto_0

    :cond_1
    const-string v0, "left"

    goto :goto_0

    :cond_2
    const-string v0, "center"

    :goto_0
    return-object v0
.end method

.method public getTextViewColor()I
    .locals 1

    .line 379
    iget v0, p0, Lcom/ansca/corona/CoronaEditText;->myTextColor:I

    return v0
.end method

.method public getTextViewInputType()Ljava/lang/String;
    .locals 4

    .line 273
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaEditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    const-string v1, "default"

    if-eqz v0, :cond_5

    .line 276
    invoke-interface {v0}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v0

    and-int/lit8 v2, v0, 0xf

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v0, 0x2

    if-eq v2, v0, :cond_1

    const/4 v0, 0x3

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "phone"

    goto :goto_0

    :cond_1
    const-string v1, "number"

    goto :goto_0

    :cond_2
    and-int/lit16 v0, v0, 0xff0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_4

    const/16 v2, 0x20

    if-eq v0, v2, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "email"

    goto :goto_0

    :cond_4
    const-string v1, "url"

    goto :goto_0

    :cond_5
    const-string v1, "unknown"

    :goto_0
    return-object v1
.end method

.method public getTextViewPassword()Z
    .locals 1

    .line 326
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaEditText;->myIsPassword:Z

    return v0
.end method

.method public getTextViewSize()F
    .locals 1

    .line 389
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaEditText;->getTextSize()F

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 439
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaEditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaEditText;->myClearingFocus:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 235
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public setReadOnly(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaEditText;->myKeyListener:Landroid/text/method/TextKeyListener;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 432
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/ansca/corona/CoronaEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaEditText;->setScroller(Landroid/widget/Scroller;)V

    .line 433
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaEditText;->setVerticalScrollBarEnabled(Z)V

    if-eqz p1, :cond_1

    .line 434
    new-instance p1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {p1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaEditText;->getDefaultMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaEditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 435
    new-instance p1, Landroid/text/method/HideReturnsTransformationMethod;

    invoke-direct {p1}, Landroid/text/method/HideReturnsTransformationMethod;-><init>()V

    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2

    .line 408
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaEditText;->isEditing:Z

    const/4 v1, 0x0

    .line 409
    iput-boolean v1, p0, Lcom/ansca/corona/CoronaEditText;->isEditing:Z

    .line 412
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 415
    iput-boolean v0, p0, Lcom/ansca/corona/CoronaEditText;->isEditing:Z

    return-void
.end method

.method public setTextViewAlign(Ljava/lang/String;)V
    .locals 2

    const-string v0, "left"

    .line 333
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "center"

    .line 337
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "right"

    .line 341
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x5

    .line 345
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaEditText;->getGravity()I

    move-result p1

    and-int/lit8 p1, p1, 0x70

    or-int/2addr p1, v1

    .line 346
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaEditText;->setGravity(I)V

    return-void
.end method

.method public setTextViewColor(I)V
    .locals 0

    .line 373
    iput p1, p0, Lcom/ansca/corona/CoronaEditText;->myTextColor:I

    .line 374
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaEditText;->setTextColor(I)V

    return-void
.end method

.method public setTextViewFont(Ljava/lang/String;FZ)V
    .locals 1

    .line 394
    new-instance v0, Lcom/ansca/corona/graphics/TypefaceSettings;

    invoke-direct {v0}, Lcom/ansca/corona/graphics/TypefaceSettings;-><init>()V

    .line 395
    invoke-virtual {v0, p1}, Lcom/ansca/corona/graphics/TypefaceSettings;->setName(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0, p3}, Lcom/ansca/corona/graphics/TypefaceSettings;->setIsBold(Z)V

    .line 399
    new-instance p1, Lcom/ansca/corona/graphics/FontServices;

    invoke-virtual {p0}, Lcom/ansca/corona/CoronaEditText;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/ansca/corona/graphics/FontServices;-><init>(Landroid/content/Context;)V

    .line 400
    invoke-virtual {p1, v0}, Lcom/ansca/corona/graphics/FontServices;->fetchTypefaceFor(Lcom/ansca/corona/graphics/TypefaceSettings;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 402
    invoke-virtual {v0}, Lcom/ansca/corona/graphics/TypefaceSettings;->getAndroidTypefaceStyle()I

    move-result p3

    invoke-virtual {p0, p1, p3}, Lcom/ansca/corona/CoronaEditText;->setTypeface(Landroid/graphics/Typeface;I)V

    const/4 p1, 0x0

    .line 403
    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/CoronaEditText;->setTextSize(IF)V

    return-void
.end method

.method public setTextViewInputType(Ljava/lang/String;)V
    .locals 2

    const-string v0, "number"

    .line 242
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const-string v0, "phone"

    .line 244
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const-string v0, "url"

    .line 246
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x11

    goto :goto_0

    :cond_2
    const-string v0, "email"

    .line 248
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x21

    goto :goto_0

    :cond_3
    const-string v0, "decimal"

    .line 250
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0x2002

    goto :goto_0

    :cond_4
    const-string v0, "no-emoji"

    .line 252
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 253
    iput-boolean v1, p0, Lcom/ansca/corona/CoronaEditText;->noEmoji:Z

    const/4 v1, 0x0

    goto :goto_0

    .line 256
    :cond_5
    iget-boolean p1, p0, Lcom/ansca/corona/CoronaEditText;->myIsPassword:Z

    .line 260
    :goto_0
    iget-boolean p1, p0, Lcom/ansca/corona/CoronaEditText;->myIsPassword:Z

    if-eqz p1, :cond_6

    or-int/lit16 v1, v1, 0x80

    .line 263
    :cond_6
    iget-object p1, p0, Lcom/ansca/corona/CoronaEditText;->myCoronaRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getController()Lcom/ansca/corona/Controller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ansca/corona/Controller;->getAndroidVersionSpecific()Lcom/ansca/corona/version/IAndroidVersionSpecific;

    move-result-object p1

    invoke-interface {p1}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->inputTypeFlagsNoSuggestions()I

    move-result p1

    or-int/2addr p1, v1

    if-eqz p1, :cond_7

    .line 266
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaEditText;->setInputType(I)V

    :cond_7
    return-void
.end method

.method public setTextViewPassword(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 312
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    const-string v1, "password"

    .line 313
    invoke-virtual {p0, v1}, Lcom/ansca/corona/CoronaEditText;->setTextViewInputType(Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_0
    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v0

    .line 318
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 320
    iput-boolean p1, p0, Lcom/ansca/corona/CoronaEditText;->myIsPassword:Z

    return-void
.end method

.method public setTextViewSize(F)V
    .locals 1

    const/4 v0, 0x0

    .line 384
    invoke-virtual {p0, v0, p1}, Lcom/ansca/corona/CoronaEditText;->setTextSize(IF)V

    return-void
.end method
