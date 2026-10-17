import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A369200: Number of unlabeled loop-graphs covering n vertices such that it is possible to choose a different vertex from each edge (choosable).

The programs for A369200, there is no canonical definition to state claims against.
-/

/-! ## A369200.P8401878368986106402

`A322700(n)-A369147(n)`
-/

namespace A369200.P8401878368986106402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322700 n - A369147 n

end

end A369200.P8401878368986106402

/-! ## A369200.P10144126355059691004

`A322700(n)-(A369146(n)-A369146(abs(1-n)))`
-/

namespace A369200.P10144126355059691004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322700 n - (A369146 n - A369146 |1 - (n : ℤ)|.toNat)

end

end A369200.P10144126355059691004

/-! ## A369200.P2427388583550689828

`A183233(A027087(n))`
-/

namespace A369200.P2427388583550689828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183233 (A027087 n).toNat

end

end A369200.P2427388583550689828

/-!
# A369201: Number of unlabeled simple graphs with n vertices and n edges such that it is not possible to choose a different vertex from each edge (non-choosable).

The programs for A369201, there is no canonical definition to state claims against.
-/

/-! ## A369201.P17165186518330146054

`A001434(n)-A137917(n)`
-/

namespace A369201.P17165186518330146054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001434 n - A137917 n

end

end A369201.P17165186518330146054

/-! ## A369201.P11178392168379579960

`∑[∑[A025428(A230951(n))]]`
-/

namespace A369201.P11178392168379579960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A230951 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369201.P11178392168379579960

/-! ## A369201.P791796079322116316

`∑[A105519(∏[A355911(n+1)])]`
-/

namespace A369201.P791796079322116316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355911 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105519 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369201.P791796079322116316

/-! ## A369201.P14397510324471871603

`A034336(n)+A034332(A356331(n))`
-/

namespace A369201.P14397510324471871603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034336 n + A034332 (A356331 n).toNat

end

end A369201.P14397510324471871603

/-! ## A369201.P16956972291720886673

`A088526(A279569(n))-A026814(n)`
-/

namespace A369201.P16956972291720886673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088526 (A279569 n).toNat - A026814 n

end

end A369201.P16956972291720886673

/-!
# A369202: Number of unlabeled simple graphs covering n vertices such that it is not possible to choose a different vertex from each edge (non-choosable).

The programs for A369202, there is no canonical definition to state claims against.
-/

/-! ## A369202.P37886168648785342

`A002494(n)-A368834(n)`
-/

namespace A369202.P37886168648785342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 n - A368834 n

end

end A369202.P37886168648785342

/-! ## A369202.P12912786752940167538

`A217653(∑[n])-A368834(n)`
-/

namespace A369202.P12912786752940167538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217653 (∑ j ∈ Finset.range (n + 1), f1 j) - A368834 n

end

end A369202.P12912786752940167538

/-! ## A369202.P14990772058557312883

`A324693(A028310(n))+A261919(n)-A368834(n)`
-/

namespace A369202.P14990772058557312883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324693 (A028310 n).toNat + A261919 n - A368834 n

end

end A369202.P14990772058557312883

/-!
# A369208: Expansion of (1/x) * Series_Reversion( x * (1-x)^2 / (1+x^2) ).

The programs for A369208, there is no canonical definition to state claims against.
-/

/-! ## A369208.P13716619086508326656

`A234939(n+1)-A046660(A001147(n))`
-/

namespace A369208.P13716619086508326656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234939 (n + 1) - A046660 (A001147 n).toNat

end

end A369208.P13716619086508326656

/-! ## A369208.P15159842072611720340

`A251547(A081671(n)+1)-A026791(3*n+2)`
-/

namespace A369208.P15159842072611720340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251547 (A081671 n + 1).toNat - A026791 (3 * n + 2)

end

end A369208.P15159842072611720340

/-!
# A369209: Numbers whose number of divisors has the largest prime factor 3.

The programs for A369209, the canonical program `A369209.P4800567984806134755` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369209 has offset 1).

The definition of A369209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369209.P4800567984806134755

`eq[3, A006530(A000005(n+1))]+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A369209

/-- `eq[3, A006530(A000005(n+1))]+1` -/
def P4800567984806134755.Spec : Prop :=
  ∀ n, (P4800567984806134755.a n : ℤ) = A369209 (n + 1)

theorem P4800567984806134755.correct : P4800567984806134755.Spec := by
  intro n
  simp only [A369209, Nat.add_sub_cancel]

end A369209

/-! ## A369209.P17300555589148136593

`eq[3, A071188(n+1)]+1`
-/

namespace A369209.P17300555589148136593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A369209.P17300555589148136593

namespace A369209

/-- `eq[3, A071188(n+1)]+1` -/
def P17300555589148136593.Spec : Prop :=
  ∀ n, (P17300555589148136593.a n : ℤ) = A369209 (n + 1)

end A369209

/-! ## A369209.P10072763817855294224

`eq[3, A006530(A145154(n))]`
-/

namespace A369209.P10072763817855294224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A369209.P10072763817855294224

namespace A369209

/-- `eq[3, A006530(A145154(n))]` -/
def P10072763817855294224.Spec : Prop :=
  ∀ n, (P10072763817855294224.a n : ℤ) = A369209 (n + 1)

end A369209

/-! ## A369209.P11035418023950561265

`eq[1, A252735(A032741(n)+1)]`
-/

namespace A369209.P11035418023950561265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A032741 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A369209.P11035418023950561265

namespace A369209

/-- `eq[1, A252735(A032741(n)+1)]` -/
def P11035418023950561265.Spec : Prop :=
  ∀ n, (P11035418023950561265.a n : ℤ) = A369209 (n + 1)

end A369209

/-! ## A369209.P4288296577663174229

`eq[3, A006530(A032741(n)+1)]`
-/

namespace A369209.P4288296577663174229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A032741 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A369209.P4288296577663174229

namespace A369209

/-- `eq[3, A006530(A032741(n)+1)]` -/
def P4288296577663174229.Spec : Prop :=
  ∀ n, (P4288296577663174229.a n : ℤ) = A369209 (n + 1)

end A369209

/-! ## A369209.P2056469642199367079

`A059269(A273058(n+1)%A113274(n+1))`
-/

namespace A369209.P2056469642199367079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059269 (Int.tmod (A273058 (n + 1)) (A113274 (n + 1))).toNat

end

end A369209.P2056469642199367079

namespace A369209

/-- `A059269(A273058(n+1)%A113274(n+1))` -/
def P2056469642199367079.Spec : Prop :=
  ∀ n, P2056469642199367079.a n = A369209 (n + 1)

end A369209

/-! ## A369209.P18300292572535137994

`A059269(A273058(n+1))%A270337(n+1)`
-/

namespace A369209.P18300292572535137994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059269 (A273058 (n + 1)).toNat) (A270337 (n + 1))

end

end A369209.P18300292572535137994

namespace A369209

/-- `A059269(A273058(n+1))%A270337(n+1)` -/
def P18300292572535137994.Spec : Prop :=
  ∀ n, P18300292572535137994.a n = A369209 (n + 1)

end A369209

/-!
# A369210: 

The programs for A369210, there is no canonical definition to state claims against.
-/

/-! ## A369210.P16202558520290753070

`filter[A366762(n+1), A353519(#)]`
-/

namespace A369210.P16202558520290753070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A369210.P16202558520290753070

/-! ## A369210.P12233020405138631609

`filter[A000452(n+1), A355825(#)]`
-/

namespace A369210.P12233020405138631609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355825 (f1 j).toNat = 1) n)

end

end A369210.P12233020405138631609

/-! ## A369210.P9538995056568014605

`∩[A000452(n+1), A270428(n+1)]`
-/

namespace A369210.P9538995056568014605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369210.P9538995056568014605

/-!
# A369212: Expansion of (1/x) * Series_Reversion( x / ((1+x)^2+x^3) ).

The programs for A369212, there is no canonical definition to state claims against.
-/

/-! ## A369212.P10598145142176718315

`A258239(A121897(n+1))+A024718(n)`
-/

namespace A369212.P10598145142176718315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258239 (A121897 (n + 1)).toNat + A024718 n

end

end A369212.P10598145142176718315

/-! ## A369212.P1628406838533483775

`∑[A349841(∑[4*n])]`
-/

namespace A369212.P1628406838533483775
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349841 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369212.P1628406838533483775

/-!
# A369213: Expansion of (1/x) * Series_Reversion( x / ((1+x)^4+x^2) ).

The programs for A369213, there is no canonical definition to state claims against.
-/

/-! ## A369213.P16544689847651613443

`∑[A275330(∑[A275320(n+1)])]`
-/

namespace A369213.P16544689847651613443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275320 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275330 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369213.P16544689847651613443

/-!
# A369214: Expansion of (1/x) * Series_Reversion( x * ((1-x)^2-x^3) ).

The programs for A369214, there is no canonical definition to state claims against.
-/

/-! ## A369214.P1164834165965058078

`A389549(n)+A122841(A052161(n))`
-/

namespace A369214.P1164834165965058078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389549 n + A122841 (A052161 n).toNat

end

end A369214.P1164834165965058078

/-! ## A369214.P13103839061176090975

`A389549(n)+A184974(A000045(n))`
-/

namespace A369214.P13103839061176090975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389549 n + A184974 (A000045 n).toNat

end

end A369214.P13103839061176090975

/-! ## A369214.P17685595296244661586

`A389549(n)+A124761(A063834(n))`
-/

namespace A369214.P17685595296244661586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389549 n + A124761 (A063834 n).toNat

end

end A369214.P17685595296244661586

/-!
# A369215: Expansion of (1/x) * Series_Reversion( x * ((1-x)^3-x) ).

The programs for A369215, there is no canonical definition to state claims against.
-/

/-! ## A369215.P13439366529548378880

`A000378(A265940(2*(n+1))+A007318(n+3))`
-/

namespace A369215.P13439366529548378880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (A265940 (2 * (n + 1)) + A007318 (n + 3)).toNat

end

end A369215.P13439366529548378880

/-!
# A369219: Number of partitions of n into prime power parts (not including 1) not greater than sqrt(n).

The programs for A369219, there is no canonical definition to state claims against.
-/

/-! ## A369219.P16947596604068610327

`A368869(A055645(n))`
-/

namespace A369219.P16947596604068610327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368869 (A055645 n).toNat

end

end A369219.P16947596604068610327

/-! ## A369219.P10839108439042498630

`A326702(A369221(n))`
-/

namespace A369219.P10839108439042498630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 (A369221 n).toNat

end

end A369219.P10839108439042498630

/-! ## A369219.P9010548361717029520

`A368869(A262545(n+1))`
-/

namespace A369219.P9010548361717029520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368869 (A262545 (n + 1)).toNat

end

end A369219.P9010548361717029520

/-! ## A369219.P11933727187930407935

`A368869(n*A368870(n))`
-/

namespace A369219.P11933727187930407935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368869 ((n : ℤ) * A368870 n).toNat

end

end A369219.P11933727187930407935

/-! ## A369219.P18372551702707578213

`A368869(n*A368873(n))`
-/

namespace A369219.P18372551702707578213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368869 ((n : ℤ) * A368873 n).toNat

end

end A369219.P18372551702707578213

/-!
# A369222: Number of compositions (ordered partitions) of n into powers of 2 not greater than sqrt(n).

The programs for A369222, there is no canonical definition to state claims against.
-/

/-! ## A369222.P16740461543604026516

`A083662(A047188(n+2))`
-/

namespace A369222.P16740461543604026516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083662 (A047188 (n + 2)).toNat

end

end A369222.P16740461543604026516

/-! ## A369222.P11933448672773482591

`A053538(∑[n]%A137546(n))`
-/

namespace A369222.P11933448672773482591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A137546 n)).toNat

end

end A369222.P11933448672773482591

/-! ## A369222.P17614648778127964625

`A109906(A000217(n)%A174085(n))`
-/

namespace A369222.P17614648778127964625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109906 (Int.tmod (A000217 n) (A174085 n)).toNat

end

end A369222.P17614648778127964625

/-! ## A369222.P3337187308779918439

`A000045(n+1)-A049084(A001405(n))`
-/

namespace A369222.P3337187308779918439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A049084 (A001405 n).toNat

end

end A369222.P3337187308779918439

/-! ## A369222.P7491225990215110994

`A083662(A335703(n)-A064216(n+1))`
-/

namespace A369222.P7491225990215110994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083662 (A335703 n - A064216 (n + 1)).toNat

end

end A369222.P7491225990215110994

/-!
# A369223: Number of uniquely colorable simple graphs on n nodes.

The programs for A369223, there is no canonical definition to state claims against.
-/

/-! ## A369223.P16841928768856692971

`A088571(n)+A067251(A318895(n))`
-/

namespace A369223.P16841928768856692971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088571 n + A067251 (A318895 n).toNat

end

end A369223.P16841928768856692971

/-! ## A369223.P15662829159681585139

`A358521(A261641(n+1)+A000081(n))`
-/

namespace A369223.P15662829159681585139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358521 (A261641 (n + 1) + A000081 n).toNat

end

end A369223.P15662829159681585139

/-! ## A369223.P13421733741143412836

`A320509(A325389(A325389(A240026(A240026(n)))))`
-/

namespace A369223.P13421733741143412836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320509 (A325389 (A325389 (A240026 (A240026 n).toNat).toNat).toNat).toNat

end

end A369223.P13421733741143412836

/-!
# A369224: Number of semiprimes less than n that do not divide n.

The programs for A369224, there is no canonical definition to state claims against.
-/

/-! ## A369224.P64905498012295065

`A072000(n+1)-A086971(n+1)`
-/

namespace A369224.P64905498012295065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (n + 1) - A086971 (n + 1)

end

end A369224.P64905498012295065

/-! ## A369224.P16507800490577590439

`A072000(n+1)-A366739(n+1)`
-/

namespace A369224.P16507800490577590439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (n + 1) - A366739 (n + 1)

end

end A369224.P16507800490577590439

/-! ## A369224.P1405588834266590681

`∑[A064911(n+1)]-A086971(n+1)`
-/

namespace A369224.P1405588834266590681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A086971 (n + 1)

end

end A369224.P1405588834266590681

/-! ## A369224.P13770426955580666664

`∑[A064911(n+1)]-A366739(n+1)`
-/

namespace A369224.P13770426955580666664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A366739 (n + 1)

end

end A369224.P13770426955580666664

/-! ## A369224.P3114141223153576824

`∑[val(A105560(n+1), 3)]-A086971(n+1)`
-/

namespace A369224.P3114141223153576824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A105560 (n + 1)).toNat 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A086971 (n + 1)

end

end A369224.P3114141223153576824

/-! ## A369224.P2964309999125573736

`∑[val(A105560(n+1), 3)]-A366739(n+1)`
-/

namespace A369224.P2964309999125573736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A105560 (n + 1)).toNat 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A366739 (n + 1)

end

end A369224.P2964309999125573736

/-!
# A369226: Expansion of (1/x) * Series_Reversion( x * (1-x) / (1+x^2)^2 ).

The programs for A369226, there is no canonical definition to state claims against.
-/

/-! ## A369226.P6289233595872134599

`A194640(A150224(n))`
-/

namespace A369226.P6289233595872134599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A150224 n).toNat

end

end A369226.P6289233595872134599

/-! ## A369226.P6387952936821350532

`A383533(A383519(2*n+3)+1)`
-/

namespace A369226.P6387952936821350532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383533 (A383519 (2 * n + 3) + 1).toNat

end

end A369226.P6387952936821350532

/-!
# A369229: Expansion of (1/x) * Series_Reversion( x * (1-x)^3 / (1-x+x^2)^2 ).

The programs for A369229, there is no canonical definition to state claims against.
-/

/-! ## A369229.P17665119871740385722

`A347656(A192979(n))`
-/

namespace A369229.P17665119871740385722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347656 (A192979 n).toNat

end

end A369229.P17665119871740385722

/-! ## A369229.P8004656732266937434

`A001462(A246383(n))-n`
-/

namespace A369229.P8004656732266937434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A246383 n).toNat - (n : ℤ)

end

end A369229.P8004656732266937434

/-!
# A369231: Expansion of (1/x) * Series_Reversion( x * (1-x)^3 / (1-x+x^3)^2 ).

The programs for A369231, there is no canonical definition to state claims against.
-/

/-! ## A369231.P17041656228034826412

`A187187(A150008(n+1))`
-/

namespace A369231.P17041656228034826412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (A150008 (n + 1)).toNat

end

end A369231.P17041656228034826412

/-! ## A369231.P8637474791033119483

`A278950(A002001(n)+2)`
-/

namespace A369231.P8637474791033119483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278950 (A002001 n + 2).toNat

end

end A369231.P8637474791033119483

/-! ## A369231.P927859225891502467

`A248231(A039963(n)+A002212(n))`
-/

namespace A369231.P927859225891502467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A039963 n + A002212 n).toNat

end

end A369231.P927859225891502467

/-!
# A369233: Smallest base for which the digits expansion of 2^n is palindromic.

The programs for A369233, there is no canonical definition to state claims against.
-/

/-! ## A369233.P5185799612177144744

`A163378(A030494(n+1)+A017077(2*n+1))`
-/

namespace A369233.P5185799612177144744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163378 (A030494 (n + 1) + A017077 (2 * n + 1)).toNat

end

end A369233.P5185799612177144744

/-!
# A369240: Irregular triangle read by rows, where row n lists in ascending order all numbers k whose arithmetic derivative k' is equal to the n-th partial sum of primorials, A143293(n). Rows of length zero are simply omitted, i.e., when A369239(n) = 0.

The programs for A369240, there is no canonical definition to state claims against.
-/

/-! ## A369240.P3227528969541293211

`A328243(A087027(n+1))`
-/

namespace A369240.P3227528969541293211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328243 (A087027 (n + 1)).toNat

end

end A369240.P3227528969541293211

/-! ## A369240.P11941212679846485311

`A328243(A326449(n)+A088472(n+1))`
-/

namespace A369240.P11941212679846485311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328243 (A326449 n + A088472 (n + 1)).toNat

end

end A369240.P11941212679846485311

/-! ## A369240.P3774959757640320755

`A328243(A328279(n+1)+A294234(n))`
-/

namespace A369240.P3774959757640320755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328243 (A328279 (n + 1) + A294234 n).toNat

end

end A369240.P3774959757640320755

/-!
# A369241: Number of representations of 2^n - 1 as a sum (p*q + p*r + q*r) with three odd primes p <= q <= r.

The programs for A369241, there is no canonical definition to state claims against.
-/

/-! ## A369241.P14231477906115608810

`A369055(A171869(n+2))`
-/

namespace A369241.P14231477906115608810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369055 (A171869 (n + 2)).toNat

end

end A369241.P14231477906115608810

/-! ## A369241.P13124159257832373005

`A369055(∪[A191458(n+1), A000079(n)])`
-/

namespace A369241.P13124159257832373005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369055 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A369241.P13124159257832373005

/-!
# A369243: a(n) is the least integer k whose arithmetic derivative is equal to the n-th partial sum of primorials, and 0 if no such k exists.

The programs for A369243, there is no canonical definition to state claims against.
-/

/-! ## A369243.P13363769162753925346

`A098699(A143293(n))`
-/

namespace A369243.P13363769162753925346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098699 (A143293 n).toNat

end

end A369243.P13363769162753925346

/-! ## A369243.P15095416792668575304

`A098699(∑[A002110(n)])`
-/

namespace A369243.P15095416792668575304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098699 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A369243.P15095416792668575304

/-!
# A369245: Number of representations of the n-th Euclid number, A002110(n) + 1, as a sum (p*q + p*r + q*r) with three odd primes p <= q <= r. (Definition implies that p=3 and q > 3).

The programs for A369245, there is no canonical definition to state claims against.
-/

/-! ## A369245.P14447061920424677056

`A124761(A353862(n+1)+A026147(3*n+3))`
-/

namespace A369245.P14447061920424677056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A353862 (n + 1) + A026147 (3 * n + 3)).toNat

end

end A369245.P14447061920424677056

/-! ## A369245.P15931655179500634202

`A203618(n+3)%A347123(A000120(2*n+1))`
-/

namespace A369245.P15931655179500634202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203618 (n + 3)) (A347123 (A000120 (2 * n + 1)).toNat)

end

end A369245.P15931655179500634202

/-!
# A369247: Number of representations of 3*A057588(n) as a sum (p*q + p*r + q*r) with three odd primes p <= q <= r, where A057588 is Kummer numbers, one less than primorials.

The programs for A369247, there is no canonical definition to state claims against.
-/

/-! ## A369247.P17405900946711698033

`A230040(A148712(n))`
-/

namespace A369247.P17405900946711698033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230040 (A148712 n).toNat

end

end A369247.P17405900946711698033

/-! ## A369247.P7182445037957533875

`A066955(A273902(n+2)+A094193(n+1))`
-/

namespace A369247.P7182445037957533875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066955 (A273902 (n + 2) + A094193 (n + 1)).toNat

end

end A369247.P7182445037957533875

/-!
# A369248: Numbers of the form 12*m+3 for which there is no representation as a sum (p*q + p*r + q*r) with three odd primes p <= q <= r.

The programs for A369248, there is no canonical definition to state claims against.
-/

/-! ## A369248.P8451927225283167107

`∩[A369056(n+1), A017557(n)]`
-/

namespace A369248.P8451927225283167107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017557 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369248.P8451927225283167107

/-! ## A369248.P1179228819254371852

`∩[A253790(n+1), A369056(n+1)]`
-/

namespace A369248.P1179228819254371852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369248.P1179228819254371852

/-! ## A369248.P13384222104533692720

`∩[A369056(n+1), A016945(n)]`
-/

namespace A369248.P13384222104533692720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369248.P13384222104533692720

/-! ## A369248.P14349449555810800577

`∩[A091361(n+1), A369056(n+1)]`
-/

namespace A369248.P14349449555810800577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369248.P14349449555810800577

/-! ## A369248.P15619920657302800940

`∩[A146512(n+1), A369056(n+1)]`
-/

namespace A369248.P15619920657302800940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369248.P15619920657302800940

/-! ## A369248.P9835503099495977740

`∩[A357779(n+1), A369056(n+1)]`
-/

namespace A369248.P9835503099495977740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369248.P9835503099495977740

/-! ## A369248.P10535998258795257478

`∩[A369056(n+1), A016969(n)-2]`
-/

namespace A369248.P10535998258795257478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369248.P10535998258795257478

/-! ## A369248.P4106289624234890124

`∩[A091998(n+1)+2, A369056(n+1)]`
-/

namespace A369248.P4106289624234890124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091998 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369248.P4106289624234890124

/-! ## A369248.P13630435208724299682

`∩[A369056(n+1), A101328(n+2)-2]`
-/

namespace A369248.P13630435208724299682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101328 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369248.P13630435208724299682

/-! ## A369248.P5482162268743879049

`∩[A277569(n+1), A369056(n+1)]`
-/

namespace A369248.P5482162268743879049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369248.P5482162268743879049

/-! ## A369248.P5965663561289308242

`∩[A277571(n+1)-2, A369056(n+1)]`
-/

namespace A369248.P5965663561289308242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277571 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369248.P5965663561289308242

/-! ## A369248.P609880042592080418

`∩[A259754(n+1), A369056(n+1)]`
-/

namespace A369248.P609880042592080418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369248.P609880042592080418

/-! ## A369248.P11119219128634341054

`∩[A084088(n+1)-2, A369056(n+1)]`
-/

namespace A369248.P11119219128634341054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084088 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369248.P11119219128634341054

/-! ## A369248.P4445439158533940652

`∩[A369056(n+1), A319451(n)]`
-/

namespace A369248.P4445439158533940652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319451 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369248.P4445439158533940652

/-! ## A369248.P13018517477929052506

`∩[A347838(n+1)+1, A369056(n+1)]`
-/

namespace A369248.P13018517477929052506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347838 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369248.P13018517477929052506

/-! ## A369248.P1175631686872561309

`∩[A369056(n+1), A136290(n)]`
-/

namespace A369248.P1175631686872561309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136290 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369248.P1175631686872561309

/-! ## A369248.P5252615491890012701

`∩[A072557(n+1)-2, A369056(n+1)]`
-/

namespace A369248.P5252615491890012701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072557 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369248.P5252615491890012701

/-! ## A369248.P1234710094972516300

`∩[A369056(n+1), A008486(n)]`
-/

namespace A369248.P1234710094972516300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369248.P1234710094972516300

/-! ## A369248.P17651569301678458059

`∩[A369056(n+1), A008585(n)]`
-/

namespace A369248.P17651569301678458059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369248.P17651569301678458059

/-! ## A369248.P9532440393966201667

`∩[A369056(n+1), A016789(n)+1]`
-/

namespace A369248.P9532440393966201667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369248.P9532440393966201667

/-!
# A369249: Primes of the form 4*m+3 for which there is no representation as a sum (p*q + p*r + q*r) with three odd primes p <= q <= r.

The programs for A369249, there is no canonical definition to state claims against.
-/

/-! ## A369249.P5134017774161045687

`p?[A369056(n+1)]`
-/

namespace A369249.P5134017774161045687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A369249.P5134017774161045687

/-! ## A369249.P204329547024373355

`∩[A002145(n+1), A369056(n+1)]`
-/

namespace A369249.P204329547024373355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369249.P204329547024373355

/-! ## A369249.P6233202956808101260

`∩[A045326(n+1), A369056(n+1)]`
-/

namespace A369249.P6233202956808101260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369249.P6233202956808101260

/-! ## A369249.P9345564944309674185

`∩[A049098(n+1), A369056(n+1)]`
-/

namespace A369249.P9345564944309674185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369249.P9345564944309674185

/-! ## A369249.P6652205857091732471

`∩[A369056(n+1), A380468(n+1)]`
-/

namespace A369249.P6652205857091732471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369249.P6652205857091732471

/-! ## A369249.P3495993030438718792

`∩[A045419(n+1), A369056(n+1)]`
-/

namespace A369249.P3495993030438718792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369249.P3495993030438718792

/-! ## A369249.P18017724805302616968

`∩[A045323(n+1), A369056(n+1)]`
-/

namespace A369249.P18017724805302616968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369249.P18017724805302616968

/-! ## A369249.P18183096943972850564

`∩[A040116(n+1), A369056(n+1)]`
-/

namespace A369249.P18183096943972850564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369249.P18183096943972850564

/-! ## A369249.P3382495717511653203

`∩[A045395(n+1), A369056(n+1)]`
-/

namespace A369249.P3382495717511653203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369249.P3382495717511653203

/-! ## A369249.P18006253889948022932

`∩[A042987(n+1), A369056(n+1)]`
-/

namespace A369249.P18006253889948022932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369249.P18006253889948022932

/-! ## A369249.P3869537371328593581

`∩[A009087(n+1), A369056(n+1)]`
-/

namespace A369249.P3869537371328593581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369249.P3869537371328593581

/-! ## A369249.P16025656112497837563

`∩[A339819(n+1), A369056(n+1)]`
-/

namespace A369249.P16025656112497837563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369249.P16025656112497837563

/-! ## A369249.P3970272798700288183

`∩[A339817(n+1), A369056(n+1)]`
-/

namespace A369249.P3970272798700288183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369249.P3970272798700288183

/-! ## A369249.P2123796342928478494

`∩[A216285(n+1), A369056(n+1)]`
-/

namespace A369249.P2123796342928478494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369249.P2123796342928478494

/-! ## A369249.P16926277947567702456

`∩[A004139(n+1), A369056(n+1)]`
-/

namespace A369249.P16926277947567702456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369249.P16926277947567702456

/-! ## A369249.P9018417838402115387

`∩[A045319(n+1), A369056(n+1)]`
-/

namespace A369249.P9018417838402115387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369249.P9018417838402115387

/-! ## A369249.P15427605245893003299

`∩[A000040(n+1), A369056(n+1)]`
-/

namespace A369249.P15427605245893003299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369249.P15427605245893003299

/-! ## A369249.P15404503462217036152

`∩[A006005(n+1), A369056(n+1)]`
-/

namespace A369249.P15404503462217036152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369249.P15404503462217036152

/-! ## A369249.P2685338423165388981

`∩[A008578(n+1), A369056(n+1)]`
-/

namespace A369249.P2685338423165388981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369249.P2685338423165388981

/-! ## A369249.P18284829608831346174

`∩[A033946(n+1), A369056(n+1)]`
-/

namespace A369249.P18284829608831346174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369249.P18284829608831346174

/-!
# A369250: Primes for which there is at least one representation as a sum (p*q + p*r + q*r) with three odd primes p <= q <= r.

The programs for A369250, there is no canonical definition to state claims against.
-/

/-! ## A369250.P5498047566625930459

`p?[A369251(n+1)]`
-/

namespace A369250.P5498047566625930459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A369250.P5498047566625930459

/-! ## A369250.P11720779117602704917

`∩[A093515(n+1), A369251(n+1)]`
-/

namespace A369250.P11720779117602704917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369250.P11720779117602704917

/-! ## A369250.P7205427861518363869

`∩[A339817(n+1), A369251(n+1)]`
-/

namespace A369250.P7205427861518363869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369250.P7205427861518363869

/-! ## A369250.P10810241293211035097

`∩[A009087(n+1), A369251(n+1)]`
-/

namespace A369250.P10810241293211035097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369250.P10810241293211035097

/-! ## A369250.P5729504139777269902

`filter[A369251(n+1), A010051(#)]`
-/

namespace A369250.P5729504139777269902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A369250.P5729504139777269902

/-! ## A369250.P3655584563081591453

`filter[A369251(n+1), A302777(#)]`
-/

namespace A369250.P3655584563081591453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A369250.P3655584563081591453

/-! ## A369250.P16551998258543235970

`filter[A369251(n+1), A323152(#)]`
-/

namespace A369250.P16551998258543235970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A369250.P16551998258543235970

/-! ## A369250.P11710370285335522154

`filter[A369251(n+1), A323153(#)]`
-/

namespace A369250.P11710370285335522154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A369250.P11710370285335522154

/-! ## A369250.P4607194025255015007

`filter[A369251(n+1), A340371(#)]`
-/

namespace A369250.P4607194025255015007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A369250.P4607194025255015007

/-! ## A369250.P18176772100415724944

`filter[A369251(n+1), A353499(#)]`
-/

namespace A369250.P18176772100415724944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A369250.P18176772100415724944

/-! ## A369250.P8185992798526105038

`filter[A369251(n+1), A353670(#)]`
-/

namespace A369250.P8185992798526105038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A369250.P8185992798526105038

/-! ## A369250.P9909717251608256926

`filter[A369251(n+1), A355937(#)]`
-/

namespace A369250.P9909717251608256926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A369250.P9909717251608256926

/-! ## A369250.P2021936125933075301

`∩[A369251(n+1), A222030(n)]`
-/

namespace A369250.P2021936125933075301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222030 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369250.P2021936125933075301

/-! ## A369250.P7420493709842991344

`∩[A000040(n+1), A369251(n+1)]`
-/

namespace A369250.P7420493709842991344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369250.P7420493709842991344

/-! ## A369250.P3623978521410151172

`∩[A000430(n+1), A369251(n+1)]`
-/

namespace A369250.P3623978521410151172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369250.P3623978521410151172

/-! ## A369250.P1361789011657490043

`∩[A001751(n+1), A369251(n+1)]`
-/

namespace A369250.P1361789011657490043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369250.P1361789011657490043

/-! ## A369250.P10733557348614698352

`∩[A002145(n+1), A369251(n+1)]`
-/

namespace A369250.P10733557348614698352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369250.P10733557348614698352

/-! ## A369250.P10433411306825921054

`∩[A004139(n+1), A369251(n+1)]`
-/

namespace A369250.P10433411306825921054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369250.P10433411306825921054

/-! ## A369250.P18199967537890316396

`∩[A006005(n+1), A369251(n+1)]`
-/

namespace A369250.P18199967537890316396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369250.P18199967537890316396

/-! ## A369250.P11109230229333697733

`∩[A008578(n+1), A369251(n+1)]`
-/

namespace A369250.P11109230229333697733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369250.P11109230229333697733

/-!
# A369251: Numbers that have at least one representation as a sum (p*q + p*r + q*r) with three odd primes p <= q <= r.

The programs for A369251, there is no canonical definition to state claims against.
-/

/-! ## A369251.P3175043152878812941

`lt[0, A369054(n)]`
-/

namespace A369251.P3175043152878812941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A369251.P3175043152878812941

/-! ## A369251.P14924863734265832150

`eq[1, A185782(A292603(n)^A369054(n)+1)]`
-/

namespace A369251.P14924863734265832150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (SequenceMachineLib.roundAway ((A292603 n : ℚ) ^ (A369054 n : ℤ) + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A369251.P14924863734265832150

/-! ## A369251.P7840075806941019342

`eq[A057427(A369054(n)), A057427(n+1)]`
-/

namespace A369251.P7840075806941019342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A369054 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369251.P7840075806941019342

/-! ## A369251.P12941025172864898563

`eq[A040306(2*n+1), A040306(A369054(n))]`
-/

namespace A369251.P12941025172864898563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040306 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040306 (A369054 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369251.P12941025172864898563

/-! ## A369251.P4743713723178841141

`eq[A000007(2*n+3), A000007(A369054(n))]`
-/

namespace A369251.P4743713723178841141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A369054 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369251.P4743713723178841141

/-!
# A369252: Arithmetic derivative applied to the numbers of the form p*q*r where p,q,r are (not necessarily distinct) odd primes.

The programs for A369252, the canonical program `A369252.P4904178596976423146` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369252 has offset 1).

The definition of A369252 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A046316, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369252.P4904178596976423146

`A003415(A046316(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A369252

/-- `A003415(A046316(n+1))` -/
def P4904178596976423146.Spec : Prop :=
  ∀ n, P4904178596976423146.a n = A369252 (n + 1)

theorem P4904178596976423146.correct : P4904178596976423146.Spec := by
  intro n
  simp only [A369252, Nat.add_sub_cancel]

end A369252

/-! ## A369252.P1908822051304744161

`A003415(∩[A014076(n+1), A014612(n+1)])`
-/

namespace A369252.P1908822051304744161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A369252.P1908822051304744161

namespace A369252

/-- `A003415(∩[A014076(n+1), A014612(n+1)])` -/
def P1908822051304744161.Spec : Prop :=
  ∀ n, P1908822051304744161.a n = A369252 (n + 1)

end A369252

/-! ## A369252.P6684602361733038352

`A003415(∩[A014612(n+1), A071904(n+1)])`
-/

namespace A369252.P6684602361733038352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A369252.P6684602361733038352

namespace A369252

/-- `A003415(∩[A014612(n+1), A071904(n+1)])` -/
def P6684602361733038352.Spec : Prop :=
  ∀ n, P6684602361733038352.a n = A369252 (n + 1)

end A369252

/-! ## A369252.P14240452124802545897

`A003415(∩[A000027(2*n+3), A014612(n+1)])`
-/

namespace A369252.P14240452124802545897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A369252.P14240452124802545897

namespace A369252

/-- `A003415(∩[A000027(2*n+3), A014612(n+1)])` -/
def P14240452124802545897.Spec : Prop :=
  ∀ n, P14240452124802545897.a n = A369252 (n + 1)

end A369252

/-! ## A369252.P5366286166495441839

`A319703(2*∩[A014076(n+1), A014612(n+1)])`
-/

namespace A369252.P5366286166495441839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A369252.P5366286166495441839

namespace A369252

/-- `A319703(2*∩[A014076(n+1), A014612(n+1)])` -/
def P5366286166495441839.Spec : Prop :=
  ∀ n, P5366286166495441839.a n = A369252 (n + 1)

end A369252

/-! ## A369252.P7743614940341036355

`A319703(2*∩[A014612(n+1), A067019(n+1)])`
-/

namespace A369252.P7743614940341036355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067019 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A369252.P7743614940341036355

namespace A369252

/-- `A319703(2*∩[A014612(n+1), A067019(n+1)])` -/
def P7743614940341036355.Spec : Prop :=
  ∀ n, P7743614940341036355.a n = A369252 (n + 1)

end A369252

/-!
# A369253: Parity of A038548, where A038548(n) is the number of divisors of n that are at most sqrt(n).

The programs for A369253, the canonical program `A369253.P11097286628827511262` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369253 has offset 1).

The definition of A369253 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038548, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369253.P11097286628827511262

`A000035(A038548(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A369253

/-- `A000035(A038548(n+1))` -/
def P11097286628827511262.Spec : Prop :=
  ∀ n, P11097286628827511262.a n = A369253 (n + 1)

theorem P11097286628827511262.correct : P11097286628827511262.Spec := by
  intro n
  simp only [A369253, Nat.add_sub_cancel]

end A369253

/-! ## A369253.P14226059633785045848

`ceil(∏{e}[n+1, #+1]/2)%2`
-/

namespace A369253.P14226059633785045848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌉ 2

end

end A369253.P14226059633785045848

namespace A369253

/-- `ceil(∏{e}[n+1, #+1]/2)%2` -/
def P14226059633785045848.Spec : Prop :=
  ∀ n, P14226059633785045848.a n = A369253 (n + 1)

end A369253

/-! ## A369253.P12790724681573834291

`and(1, ceil(∏{e}[n+1, #+1]/2))`
-/

namespace A369253.P12790724681573834291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌉

end

end A369253.P12790724681573834291

namespace A369253

/-- `and(1, ceil(∏{e}[n+1, #+1]/2))` -/
def P12790724681573834291.Spec : Prop :=
  ∀ n, P12790724681573834291.a n = A369253 (n + 1)

end A369253

/-! ## A369253.P12789732245527038979

`A184389(n+1)%2`
-/

namespace A369253.P12789732245527038979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184389 (n + 1)) 2

end

end A369253.P12789732245527038979

namespace A369253

/-- `A184389(n+1)%2` -/
def P12789732245527038979.Spec : Prop :=
  ∀ n, P12789732245527038979.a n = A369253 (n + 1)

end A369253

/-! ## A369253.P14280401859732910217

`A330571(n+1)%2`
-/

namespace A369253.P14280401859732910217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330571 (n + 1)) 2

end

end A369253.P14280401859732910217

namespace A369253

/-- `A330571(n+1)%2` -/
def P14280401859732910217.Spec : Prop :=
  ∀ n, P14280401859732910217.a n = A369253 (n + 1)

end A369253

/-! ## A369253.P17641184922176311689

`gcd(2, A072670(n))-1`
-/

namespace A369253.P17641184922176311689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A072670 n) : ℤ) - 1

end

end A369253.P17641184922176311689

namespace A369253

/-- `gcd(2, A072670(n))-1` -/
def P17641184922176311689.Spec : Prop :=
  ∀ n, P17641184922176311689.a n = A369253 (n + 1)

end A369253

/-! ## A369253.P11779745935146736864

`and(1, A305152(n+1))`
-/

namespace A369253.P11779745935146736864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A305152 (n + 1))

end

end A369253.P11779745935146736864

namespace A369253

/-- `and(1, A305152(n+1))` -/
def P11779745935146736864.Spec : Prop :=
  ∀ n, P11779745935146736864.a n = A369253 (n + 1)

end A369253

/-! ## A369253.P567871673916333742

`and(1, A333781(n+1))`
-/

namespace A369253.P567871673916333742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A333781 (n + 1))

end

end A369253.P567871673916333742

namespace A369253

/-- `and(1, A333781(n+1))` -/
def P567871673916333742.Spec : Prop :=
  ∀ n, P567871673916333742.a n = A369253 (n + 1)

end A369253

/-! ## A369253.P956713999067281105

`and(1, A348515(n+1))`
-/

namespace A369253.P956713999067281105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A348515 (n + 1))

end

end A369253.P956713999067281105

namespace A369253

/-- `and(1, A348515(n+1))` -/
def P956713999067281105.Spec : Prop :=
  ∀ n, P956713999067281105.a n = A369253 (n + 1)

end A369253

/-! ## A369253.P17602724099959896671

`A133872(A032741(n+1))`
-/

namespace A369253.P17602724099959896671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A032741 (n + 1)).toNat

end

end A369253.P17602724099959896671

namespace A369253

/-- `A133872(A032741(n+1))` -/
def P17602724099959896671.Spec : Prop :=
  ∀ n, P17602724099959896671.a n = A369253 (n + 1)

end A369253

/-! ## A369253.P7881710361716800587

`A014577(A161840(n+1))`
-/

namespace A369253.P7881710361716800587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (A161840 (n + 1)).toNat

end

end A369253.P7881710361716800587

namespace A369253

/-- `A014577(A161840(n+1))` -/
def P7881710361716800587.Spec : Prop :=
  ∀ n, P7881710361716800587.a n = A369253 (n + 1)

end A369253

/-! ## A369253.P11961903829295652126

`A000035(A305152(n+1)²)`
-/

namespace A369253.P11961903829295652126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A305152 (n + 1) ^ 2).toNat

end

end A369253.P11961903829295652126

namespace A369253

/-- `A000035(A305152(n+1)²)` -/
def P11961903829295652126.Spec : Prop :=
  ∀ n, P11961903829295652126.a n = A369253 (n + 1)

end A369253

/-! ## A369253.P17880569086224201657

`A353557(A038548(n+1)²)`
-/

namespace A369253.P17880569086224201657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (A038548 (n + 1) ^ 2).toNat

end

end A369253.P17880569086224201657

namespace A369253

/-- `A353557(A038548(n+1)²)` -/
def P17880569086224201657.Spec : Prop :=
  ∀ n, P17880569086224201657.a n = A369253 (n + 1)

end A369253

/-! ## A369253.P9351759079014467765

`A359160(A038548(n+1)²)`
-/

namespace A369253.P9351759079014467765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359160 (A038548 (n + 1) ^ 2).toNat

end

end A369253.P9351759079014467765

namespace A369253

/-- `A359160(A038548(n+1)²)` -/
def P9351759079014467765.Spec : Prop :=
  ∀ n, P9351759079014467765.a n = A369253 (n + 1)

end A369253

/-! ## A369253.P11828685949436027077

`A359770(A038548(n+1)²)`
-/

namespace A369253.P11828685949436027077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359770 (A038548 (n + 1) ^ 2).toNat

end

end A369253.P11828685949436027077

namespace A369253

/-- `A359770(A038548(n+1)²)` -/
def P11828685949436027077.Spec : Prop :=
  ∀ n, P11828685949436027077.a n = A369253 (n + 1)

end A369253

/-! ## A369253.P186563515919774064

`A361024(A038548(n+1)²)`
-/

namespace A369253.P186563515919774064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361024 (A038548 (n + 1) ^ 2).toNat

end

end A369253.P186563515919774064

namespace A369253

/-- `A361024(A038548(n+1)²)` -/
def P186563515919774064.Spec : Prop :=
  ∀ n, P186563515919774064.a n = A369253 (n + 1)

end A369253

/-! ## A369253.P12374551093088357935

`A014695(A000005(n+1))-1`
-/

namespace A369253.P12374551093088357935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (A000005 (n + 1)).toNat - 1

end

end A369253.P12374551093088357935

namespace A369253

/-- `A014695(A000005(n+1))-1` -/
def P12374551093088357935.Spec : Prop :=
  ∀ n, P12374551093088357935.a n = A369253 (n + 1)

end A369253

/-! ## A369253.P6006380119484695964

`A082410(2*A038548(n+1))`
-/

namespace A369253.P6006380119484695964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082410 (2 * A038548 (n + 1)).toNat

end

end A369253.P6006380119484695964

namespace A369253

/-- `A082410(2*A038548(n+1))` -/
def P6006380119484695964.Spec : Prop :=
  ∀ n, P6006380119484695964.a n = A369253 (n + 1)

end A369253

/-! ## A369253.P5243576942606608612

`A038548(n+1)%A118136(n)`
-/

namespace A369253.P5243576942606608612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038548 (n + 1)) (A118136 n)

end

end A369253.P5243576942606608612

namespace A369253

/-- `A038548(n+1)%A118136(n)` -/
def P5243576942606608612.Spec : Prop :=
  ∀ n, P5243576942606608612.a n = A369253 (n + 1)

end A369253

/-!
# A369254: Numbers k that have an odd number of divisors that are at most sqrt(k).

The programs for A369254, the canonical program `A369254.P14967059013545152487` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369254 has offset 1).

The definition of A369254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369254.P14967059013545152487

`eq[1, A369253(n+1)]+1`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A369254

/-- `eq[1, A369253(n+1)]+1` -/
def P14967059013545152487.Spec : Prop :=
  ∀ n, (P14967059013545152487.a n : ℤ) = A369254 (n + 1)

theorem P14967059013545152487.correct : P14967059013545152487.Spec := by
  intro n
  simp only [A369254, Nat.add_sub_cancel]

end A369254

/-! ## A369254.P18029674374381025342

`filter[A265640(n+1), A369253(#)]`
-/

namespace A369254.P18029674374381025342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A369254.P18029674374381025342

namespace A369254

/-- `filter[A265640(n+1), A369253(#)]` -/
def P18029674374381025342.Spec : Prop :=
  ∀ n, P18029674374381025342.a n = A369254 (n + 1)

end A369254

/-! ## A369254.P3368896313037412731

`filter[A285801(n+1), A369253(#)]`
-/

namespace A369254.P3368896313037412731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A369254.P3368896313037412731

namespace A369254

/-- `filter[A285801(n+1), A369253(#)]` -/
def P3368896313037412731.Spec : Prop :=
  ∀ n, P3368896313037412731.a n = A369254 (n + 1)

end A369254

/-! ## A369254.P1185201884720358221

`filter[A363597(n+1), A369253(#)]`
-/

namespace A369254.P1185201884720358221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A369254.P1185201884720358221

namespace A369254

/-- `filter[A363597(n+1), A369253(#)]` -/
def P1185201884720358221.Spec : Prop :=
  ∀ n, P1185201884720358221.a n = A369254 (n + 1)

end A369254

/-! ## A369254.P15870375828964900441

`filter[A344609(n+1), A369253(#)]`
-/

namespace A369254.P15870375828964900441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A369254.P15870375828964900441

namespace A369254

/-- `filter[A344609(n+1), A369253(#)]` -/
def P15870375828964900441.Spec : Prop :=
  ∀ n, P15870375828964900441.a n = A369254 (n + 1)

end A369254

/-! ## A369254.P8277563263456076498

`filter[A100959(n+1), A369253(#)]`
-/

namespace A369254.P8277563263456076498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A369254.P8277563263456076498

namespace A369254

/-- `filter[A100959(n+1), A369253(#)]` -/
def P8277563263456076498.Spec : Prop :=
  ∀ n, P8277563263456076498.a n = A369254 (n + 1)

end A369254

/-! ## A369254.P17029550189981868241

`filter[A210994(n+1), A369253(#)]`
-/

namespace A369254.P17029550189981868241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A369254.P17029550189981868241

namespace A369254

/-- `filter[A210994(n+1), A369253(#)]` -/
def P17029550189981868241.Spec : Prop :=
  ∀ n, P17029550189981868241.a n = A369254 (n + 1)

end A369254

/-! ## A369254.P10765579206889718653

`filter[A246716(n+1), A369253(#)]`
-/

namespace A369254.P10765579206889718653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A369254.P10765579206889718653

namespace A369254

/-- `filter[A246716(n+1), A369253(#)]` -/
def P10765579206889718653.Spec : Prop :=
  ∀ n, P10765579206889718653.a n = A369254 (n + 1)

end A369254

/-! ## A369254.P8406835364508874085

`filter[A253567(n+1), A369253(#)]`
-/

namespace A369254.P8406835364508874085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A369254.P8406835364508874085

namespace A369254

/-- `filter[A253567(n+1), A369253(#)]` -/
def P8406835364508874085.Spec : Prop :=
  ∀ n, P8406835364508874085.a n = A369254 (n + 1)

end A369254

/-! ## A369254.P10413219721684855337

`filter[A263715(n+2), A369253(#)]`
-/

namespace A369254.P10413219721684855337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263715 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A369254.P10413219721684855337

namespace A369254

/-- `filter[A263715(n+2), A369253(#)]` -/
def P10413219721684855337.Spec : Prop :=
  ∀ n, P10413219721684855337.a n = A369254 (n + 1)

end A369254

/-! ## A369254.P5397073547550610259

`filter[A079298(n+2), A369253(#)]`
-/

namespace A369254.P5397073547550610259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079298 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A369254.P5397073547550610259

namespace A369254

/-- `filter[A079298(n+2), A369253(#)]` -/
def P5397073547550610259.Spec : Prop :=
  ∀ n, P5397073547550610259.a n = A369254 (n + 1)

end A369254

/-! ## A369254.P11352990093903282441

`filter[A129657(n+1), A369253(#)]`
-/

namespace A369254.P11352990093903282441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A369254.P11352990093903282441

namespace A369254

/-- `filter[A129657(n+1), A369253(#)]` -/
def P11352990093903282441.Spec : Prop :=
  ∀ n, P11352990093903282441.a n = A369254 (n + 1)

end A369254

/-! ## A369254.P5197789155671600098

`filter[A047595(n+2), A369253(#)]`
-/

namespace A369254.P5197789155671600098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047595 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A369254.P5197789155671600098

namespace A369254

/-- `filter[A047595(n+2), A369253(#)]` -/
def P5197789155671600098.Spec : Prop :=
  ∀ n, P5197789155671600098.a n = A369254 (n + 1)

end A369254

/-! ## A369254.P8702680883865916767

`filter[A336592(n+1), A369253(#)]`
-/

namespace A369254.P8702680883865916767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A369254.P8702680883865916767

namespace A369254

/-- `filter[A336592(n+1), A369253(#)]` -/
def P8702680883865916767.Spec : Prop :=
  ∀ n, P8702680883865916767.a n = A369254 (n + 1)

end A369254

/-! ## A369254.P2761122793465744327

`filter[A386799(n+1), A369253(#)]`
-/

namespace A369254.P2761122793465744327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A369254.P2761122793465744327

namespace A369254

/-- `filter[A386799(n+1), A369253(#)]` -/
def P2761122793465744327.Spec : Prop :=
  ∀ n, P2761122793465744327.a n = A369254 (n + 1)

end A369254

/-! ## A369254.P8547670198135550170

`filter[A000401(n+2), A369253(#)]`
-/

namespace A369254.P8547670198135550170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A369254.P8547670198135550170

namespace A369254

/-- `filter[A000401(n+2), A369253(#)]` -/
def P8547670198135550170.Spec : Prop :=
  ∀ n, P8547670198135550170.a n = A369254 (n + 1)

end A369254

/-! ## A369254.P18071462568327172881

`filter[A028964(n+2), A369253(#)]`
-/

namespace A369254.P18071462568327172881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028964 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A369254.P18071462568327172881

namespace A369254

/-- `filter[A028964(n+2), A369253(#)]` -/
def P18071462568327172881.Spec : Prop :=
  ∀ n, P18071462568327172881.a n = A369254 (n + 1)

end A369254

/-! ## A369254.P18286646454696859946

`filter[A129487(n+1), A369253(#)]`
-/

namespace A369254.P18286646454696859946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A369254.P18286646454696859946

namespace A369254

/-- `filter[A129487(n+1), A369253(#)]` -/
def P18286646454696859946.Spec : Prop :=
  ∀ n, P18286646454696859946.a n = A369254 (n + 1)

end A369254

/-! ## A369254.P6655518536675507901

`filter[A213367(n+1), A369253(#)]`
-/

namespace A369254.P6655518536675507901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A369254.P6655518536675507901

namespace A369254

/-- `filter[A213367(n+1), A369253(#)]` -/
def P6655518536675507901.Spec : Prop :=
  ∀ n, P6655518536675507901.a n = A369254 (n + 1)

end A369254

/-! ## A369254.P14212309715819065058

`filter[n+1, A369253(#)]`
-/

namespace A369254.P14212309715819065058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j) = 1) n)

end

end A369254.P14212309715819065058

namespace A369254

/-- `filter[n+1, A369253(#)]` -/
def P14212309715819065058.Spec : Prop :=
  ∀ n, (P14212309715819065058.a n : ℤ) = A369254 (n + 1)

end A369254

/-!
# A369255: Parity of A140773, where A140773 is the inverse Möbius transform of A038548.

The programs for A369255, the canonical program `A369255.P8598601348355343696` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369255 has offset 1).

The definition of A369255 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140773, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369255.P8598601348355343696

`A000035(A140773(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A369255

/-- `A000035(A140773(n+1))` -/
def P8598601348355343696.Spec : Prop :=
  ∀ n, P8598601348355343696.a n = A369255 (n + 1)

theorem P8598601348355343696.correct : P8598601348355343696.Spec := by
  intro n
  simp only [A369255, Nat.add_sub_cancel]

end A369255

/-! ## A369255.P7657012931228143947

`char[n*A219009(n+1)]`
-/

namespace A369255.P7657012931228143947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A219009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A369255.P7657012931228143947

namespace A369255

/-- `char[n*A219009(n+1)]` -/
def P7657012931228143947.Spec : Prop :=
  ∀ n, (P7657012931228143947.a n : ℤ) = A369255 (n + 1)

end A369255

/-! ## A369255.P4063905730286861666

`∑{d}[n+1, A038548(#)]%2`
-/

namespace A369255.P4063905730286861666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), A038548 d) 2

end

end A369255.P4063905730286861666

namespace A369255

/-- `∑{d}[n+1, A038548(#)]%2` -/
def P4063905730286861666.Spec : Prop :=
  ∀ n, P4063905730286861666.a n = A369255 (n + 1)

end A369255

/-! ## A369255.P5258794312833980861

`and(A060576(n), A140773(n+1))`
-/

namespace A369255.P5258794312833980861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A140773 (n + 1))

end

end A369255.P5258794312833980861

namespace A369255

/-- `and(A060576(n), A140773(n+1))` -/
def P5258794312833980861.Spec : Prop :=
  ∀ n, P5258794312833980861.a n = A369255 (n + 1)

end A369255

/-! ## A369255.P12842580320946991649

`A065043(n+1)*A219009(n+1)`
-/

namespace A369255.P12842580320946991649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) * A219009 (n + 1)

end

end A369255.P12842580320946991649

namespace A369255

/-- `A065043(n+1)*A219009(n+1)` -/
def P12842580320946991649.Spec : Prop :=
  ∀ n, P12842580320946991649.a n = A369255 (n + 1)

end A369255

/-! ## A369255.P552591374070912984

`A065043(n+1)*A353519(n+1)`
-/

namespace A369255.P552591374070912984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) * A353519 (n + 1)

end

end A369255.P552591374070912984

namespace A369255

/-- `A065043(n+1)*A353519(n+1)` -/
def P552591374070912984.Spec : Prop :=
  ∀ n, P552591374070912984.a n = A369255 (n + 1)

end A369255

/-! ## A369255.P3872039033618059588

`A007425(n+1)%A007421(n+1)`
-/

namespace A369255.P3872039033618059588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007425 (n + 1)) (A007421 (n + 1))

end

end A369255.P3872039033618059588

namespace A369255

/-- `A007425(n+1)%A007421(n+1)` -/
def P3872039033618059588.Spec : Prop :=
  ∀ n, P3872039033618059588.a n = A369255 (n + 1)

end A369255

/-! ## A369255.P17961675775212364186

`A034773(n+1)%A007421(n+1)`
-/

namespace A369255.P17961675775212364186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034773 (n + 1)) (A007421 (n + 1))

end

end A369255.P17961675775212364186

namespace A369255

/-- `A034773(n+1)%A007421(n+1)` -/
def P17961675775212364186.Spec : Prop :=
  ∀ n, P17961675775212364186.a n = A369255 (n + 1)

end A369255

/-! ## A369255.P8986614774680564746

`A046951(n+1)%A007421(n+1)`
-/

namespace A369255.P8986614774680564746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046951 (n + 1)) (A007421 (n + 1))

end

end A369255.P8986614774680564746

namespace A369255

/-- `A046951(n+1)%A007421(n+1)` -/
def P8986614774680564746.Spec : Prop :=
  ∀ n, P8986614774680564746.a n = A369255 (n + 1)

end A369255

/-! ## A369255.P5172179421316621494

`A061391(n+1)%A007421(n+1)`
-/

namespace A369255.P5172179421316621494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061391 (n + 1)) (A007421 (n + 1))

end

end A369255.P5172179421316621494

namespace A369255

/-- `A061391(n+1)%A007421(n+1)` -/
def P5172179421316621494.Spec : Prop :=
  ∀ n, P5172179421316621494.a n = A369255 (n + 1)

end A369255

/-! ## A369255.P5804122425150860198

`A062367(n+1)%A007421(n+1)`
-/

namespace A369255.P5804122425150860198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062367 (n + 1)) (A007421 (n + 1))

end

end A369255.P5804122425150860198

namespace A369255

/-- `A062367(n+1)%A007421(n+1)` -/
def P5804122425150860198.Spec : Prop :=
  ∀ n, P5804122425150860198.a n = A369255 (n + 1)

end A369255

/-! ## A369255.P400492162964364662

`A062368(n+1)%A007421(n+1)`
-/

namespace A369255.P400492162964364662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062368 (n + 1)) (A007421 (n + 1))

end

end A369255.P400492162964364662

namespace A369255

/-- `A062368(n+1)%A007421(n+1)` -/
def P400492162964364662.Spec : Prop :=
  ∀ n, P400492162964364662.a n = A369255 (n + 1)

end A369255

/-! ## A369255.P4755108774314110633

`A097988(n+1)%A007421(n+1)`
-/

namespace A369255.P4755108774314110633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097988 (n + 1)) (A007421 (n + 1))

end

end A369255.P4755108774314110633

namespace A369255

/-- `A097988(n+1)%A007421(n+1)` -/
def P4755108774314110633.Spec : Prop :=
  ∀ n, P4755108774314110633.a n = A369255 (n + 1)

end A369255

/-! ## A369255.P5230479358099930069

`A140773(n+1)%A007421(n+1)`
-/

namespace A369255.P5230479358099930069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140773 (n + 1)) (A007421 (n + 1))

end

end A369255.P5230479358099930069

namespace A369255

/-- `A140773(n+1)%A007421(n+1)` -/
def P5230479358099930069.Spec : Prop :=
  ∀ n, P5230479358099930069.a n = A369255 (n + 1)

end A369255

/-! ## A369255.P18134456831303340669

`A219009(n+1)%A007421(n+1)`
-/

namespace A369255.P18134456831303340669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219009 (n + 1)) (A007421 (n + 1))

end

end A369255.P18134456831303340669

namespace A369255

/-- `A219009(n+1)%A007421(n+1)` -/
def P18134456831303340669.Spec : Prop :=
  ∀ n, P18134456831303340669.a n = A369255 (n + 1)

end A369255

/-! ## A369255.P10975812339200563315

`∑{d}[n+1, A007875(#)*A219009((n+1)/#)]`
-/

namespace A369255.P10975812339200563315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007875 d * A219009 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369255.P10975812339200563315

namespace A369255

/-- `∑{d}[n+1, A007875(#)*A219009((n+1)/#)]` -/
def P10975812339200563315.Spec : Prop :=
  ∀ n, P10975812339200563315.a n = A369255 (n + 1)

end A369255

/-! ## A369255.P4745536402768643464

`∑{d}[n+1, A140773(#)*A355837((n+1)/#)]`
-/

namespace A369255.P4745536402768643464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A140773 d * A355837 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369255.P4745536402768643464

namespace A369255

/-- `∑{d}[n+1, A140773(#)*A355837((n+1)/#)]` -/
def P4745536402768643464.Spec : Prop :=
  ∀ n, P4745536402768643464.a n = A369255 (n + 1)

end A369255

/-! ## A369255.P9628186867320446300

`and(A048578(n), A140773(n+1))`
-/

namespace A369255.P9628186867320446300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A140773 (n + 1))

end

end A369255.P9628186867320446300

namespace A369255

/-- `and(A048578(n), A140773(n+1))` -/
def P9628186867320446300.Spec : Prop :=
  ∀ n, P9628186867320446300.a n = A369255 (n + 1)

end A369255

/-! ## A369255.P5750679792172658826

`and(A020737(n), A140773(n+1))`
-/

namespace A369255.P5750679792172658826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A140773 (n + 1))

end

end A369255.P5750679792172658826

namespace A369255

/-- `and(A020737(n), A140773(n+1))` -/
def P5750679792172658826.Spec : Prop :=
  ∀ n, P5750679792172658826.a n = A369255 (n + 1)

end A369255

/-! ## A369255.P13276871407132038898

`and(A140773(n+1), A195744(n))`
-/

namespace A369255.P13276871407132038898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140773 (n + 1)) (A195744 n)

end

end A369255.P13276871407132038898

namespace A369255

/-- `and(A140773(n+1), A195744(n))` -/
def P13276871407132038898.Spec : Prop :=
  ∀ n, P13276871407132038898.a n = A369255 (n + 1)

end A369255

/-!
# A369256: Positions of odd terms in A140773.

The programs for A369256, the canonical program `A369256.P13230337286755965464` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369256 has offset 1).

The definition of A369256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6607 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369256.P17665774606699367727

`lt[0, A369255(n+1)]+1`
-/

namespace A369256.P17665774606699367727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369255 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A369256.P17665774606699367727

namespace A369256

/-- `lt[0, A369255(n+1)]+1` -/
def P17665774606699367727.Spec : Prop :=
  ∀ n, (P17665774606699367727.a n : ℤ) = A369256 (n + 1)

end A369256

/-! ## A369256.P13230337286755965464

`filter[A028260(n+1), A353519(#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A369256

/-- `filter[A028260(n+1), A353519(#)]` -/
def P13230337286755965464.Spec : Prop :=
  ∀ n, P13230337286755965464.a n = A369256 (n + 1)

theorem P13230337286755965464.correct : P13230337286755965464.Spec := by
  intro n
  simp only [A369256, Nat.add_sub_cancel]

end A369256

/-! ## A369256.P11739441081482427783

`filter[A028260(n+1), A369255(#)]`
-/

namespace A369256.P11739441081482427783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369255 (f1 j).toNat = 1) n)

end

end A369256.P11739441081482427783

namespace A369256

/-- `filter[A028260(n+1), A369255(#)]` -/
def P11739441081482427783.Spec : Prop :=
  ∀ n, P11739441081482427783.a n = A369256 (n + 1)

end A369256

/-! ## A369256.P15523416292230343650

`filter[A347450(n+1), A369255(#)]`
-/

namespace A369256.P15523416292230343650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369255 (f1 j).toNat = 1) n)

end

end A369256.P15523416292230343650

namespace A369256

/-- `filter[A347450(n+1), A369255(#)]` -/
def P15523416292230343650.Spec : Prop :=
  ∀ n, P15523416292230343650.a n = A369256 (n + 1)

end A369256

/-! ## A369256.P14014753295817781092

`filter[A252895(n+1), A065043(#)]`
-/

namespace A369256.P14014753295817781092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A369256.P14014753295817781092

namespace A369256

/-- `filter[A252895(n+1), A065043(#)]` -/
def P14014753295817781092.Spec : Prop :=
  ∀ n, P14014753295817781092.a n = A369256 (n + 1)

end A369256

/-! ## A369256.P3103353404396829846

`filter[A252895(n+1), A369255(#)]`
-/

namespace A369256.P3103353404396829846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369255 (f1 j).toNat = 1) n)

end

end A369256.P3103353404396829846

namespace A369256

/-- `filter[A252895(n+1), A369255(#)]` -/
def P3103353404396829846.Spec : Prop :=
  ∀ n, P3103353404396829846.a n = A369256 (n + 1)

end A369256

/-! ## A369256.P8575851169924915427

`∩[A028260(n+1), A252895(n+1)]`
-/

namespace A369256.P8575851169924915427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369256.P8575851169924915427

namespace A369256

/-- `∩[A028260(n+1), A252895(n+1)]` -/
def P8575851169924915427.Spec : Prop :=
  ∀ n, (P8575851169924915427.a n : ℤ) = A369256 (n + 1)

end A369256

/-! ## A369256.P5050974781980237700

`filter[A390441(n+1), A369255(#)]`
-/

namespace A369256.P5050974781980237700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369255 (f1 j).toNat = 1) n)

end

end A369256.P5050974781980237700

namespace A369256

/-- `filter[A390441(n+1), A369255(#)]` -/
def P5050974781980237700.Spec : Prop :=
  ∀ n, P5050974781980237700.a n = A369256 (n + 1)

end A369256

/-! ## A369256.P10617064488784282986

`filter[A174891(n+1), A369255(#)]`
-/

namespace A369256.P10617064488784282986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369255 (f1 j).toNat = 1) n)

end

end A369256.P10617064488784282986

namespace A369256

/-- `filter[A174891(n+1), A369255(#)]` -/
def P10617064488784282986.Spec : Prop :=
  ∀ n, P10617064488784282986.a n = A369256 (n + 1)

end A369256

/-! ## A369256.P15137109491103704480

`filter[A336222(n+1), A369255(#)]`
-/

namespace A369256.P15137109491103704480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369255 (f1 j).toNat = 1) n)

end

end A369256.P15137109491103704480

namespace A369256

/-- `filter[A336222(n+1), A369255(#)]` -/
def P15137109491103704480.Spec : Prop :=
  ∀ n, P15137109491103704480.a n = A369256 (n + 1)

end A369256

/-! ## A369256.P985023976337547206

`filter[A239289(n+1), A369255(#)]`
-/

namespace A369256.P985023976337547206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369255 (f1 j).toNat = 1) n)

end

end A369256.P985023976337547206

namespace A369256

/-- `filter[A239289(n+1), A369255(#)]` -/
def P985023976337547206.Spec : Prop :=
  ∀ n, P985023976337547206.a n = A369256 (n + 1)

end A369256

/-! ## A369256.P10145407884747804359

`filter[A337050(n+1), A369255(#)]`
-/

namespace A369256.P10145407884747804359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369255 (f1 j).toNat = 1) n)

end

end A369256.P10145407884747804359

namespace A369256

/-- `filter[A337050(n+1), A369255(#)]` -/
def P10145407884747804359.Spec : Prop :=
  ∀ n, P10145407884747804359.a n = A369256 (n + 1)

end A369256

/-! ## A369256.P11431560195677527755

`filter[A048943(n+1), A369255(#)]`
-/

namespace A369256.P11431560195677527755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369255 (f1 j).toNat = 1) n)

end

end A369256.P11431560195677527755

namespace A369256

/-- `filter[A048943(n+1), A369255(#)]` -/
def P11431560195677527755.Spec : Prop :=
  ∀ n, P11431560195677527755.a n = A369256 (n + 1)

end A369256

/-! ## A369256.P9929540297643012583

`filter[A233182(n+1), A369255(#)]`
-/

namespace A369256.P9929540297643012583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369255 (f1 j).toNat = 1) n)

end

end A369256.P9929540297643012583

namespace A369256

/-- `filter[A233182(n+1), A369255(#)]` -/
def P9929540297643012583.Spec : Prop :=
  ∀ n, P9929540297643012583.a n = A369256 (n + 1)

end A369256

/-! ## A369256.P14462163570254829500

`filter[A018252(n+1), A369255(#)]`
-/

namespace A369256.P14462163570254829500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369255 (f1 j).toNat = 1) n)

end

end A369256.P14462163570254829500

namespace A369256

/-- `filter[A018252(n+1), A369255(#)]` -/
def P14462163570254829500.Spec : Prop :=
  ∀ n, P14462163570254829500.a n = A369256 (n + 1)

end A369256

/-! ## A369256.P12554450157615486526

`filter[A056653(n+1), A369255(#)]`
-/

namespace A369256.P12554450157615486526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369255 (f1 j).toNat = 1) n)

end

end A369256.P12554450157615486526

namespace A369256

/-- `filter[A056653(n+1), A369255(#)]` -/
def P12554450157615486526.Spec : Prop :=
  ∀ n, P12554450157615486526.a n = A369256 (n + 1)

end A369256

/-! ## A369256.P4867245979634180920

`filter[A065090(n+1), A369255(#)]`
-/

namespace A369256.P4867245979634180920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369255 (f1 j).toNat = 1) n)

end

end A369256.P4867245979634180920

namespace A369256

/-- `filter[A065090(n+1), A369255(#)]` -/
def P4867245979634180920.Spec : Prop :=
  ∀ n, P4867245979634180920.a n = A369256 (n + 1)

end A369256

/-! ## A369256.P14809405715053734899

`filter[A171581(n+1), A369255(#)]`
-/

namespace A369256.P14809405715053734899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369255 (f1 j).toNat = 1) n)

end

end A369256.P14809405715053734899

namespace A369256

/-- `filter[A171581(n+1), A369255(#)]` -/
def P14809405715053734899.Spec : Prop :=
  ∀ n, P14809405715053734899.a n = A369256 (n + 1)

end A369256

/-! ## A369256.P18222132052186926836

`filter[A141468(n+2), A369255(#)]`
-/

namespace A369256.P18222132052186926836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369255 (f1 j).toNat = 1) n)

end

end A369256.P18222132052186926836

namespace A369256

/-- `filter[A141468(n+2), A369255(#)]` -/
def P18222132052186926836.Spec : Prop :=
  ∀ n, P18222132052186926836.a n = A369256 (n + 1)

end A369256

/-! ## A369256.P13017902124539578006

`filter[A222307(2*n+1), A369255(#)]`
-/

namespace A369256.P13017902124539578006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369255 (f1 j).toNat = 1) n)

end

end A369256.P13017902124539578006

namespace A369256

/-- `filter[A222307(2*n+1), A369255(#)]` -/
def P13017902124539578006.Spec : Prop :=
  ∀ n, P13017902124539578006.a n = A369256 (n + 1)

end A369256

/-!
# A369257: a(n) = number of odd divisors of n that have an even number of prime factors with multiplicity.

The programs for A369257, the canonical program `A369257.P15625440583035575775` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369257 has offset 1).

The definition of A369257 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001227, A053866, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369257.P17941038695529138755

`A001227(n+1)-A369258(n+1)`
-/

namespace A369257.P17941038695529138755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A369258 (n + 1)

end

end A369257.P17941038695529138755

namespace A369257

/-- `A001227(n+1)-A369258(n+1)` -/
def P17941038695529138755.Spec : Prop :=
  ∀ n, P17941038695529138755.a n = A369257 (n + 1)

end A369257

/-! ## A369257.P15625440583035575775

`(A001227(n+1)+A053866(n+1))/2`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A369257

/-- `(A001227(n+1)+A053866(n+1))/2` -/
def P15625440583035575775.Spec : Prop :=
  ∀ n, P15625440583035575775.a n = (A369257 (n + 1) : ℚ)

end A369257

/-! ## A369257.P8199230258111554359

`∑{d}[n+1, A353557(#)]`
-/

namespace A369257.P8199230258111554359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353557 d

end

end A369257.P8199230258111554359

namespace A369257

/-- `∑{d}[n+1, A353557(#)]` -/
def P8199230258111554359.Spec : Prop :=
  ∀ n, P8199230258111554359.a n = A369257 (n + 1)

end A369257

/-! ## A369257.P8204678246979563730

`round(A001227(n+1)/2)`
-/

namespace A369257.P8204678246979563730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001227 (n + 1) : ℚ) / 2)

end

end A369257.P8204678246979563730

namespace A369257

/-- `round(A001227(n+1)/2)` -/
def P8204678246979563730.Spec : Prop :=
  ∀ n, P8204678246979563730.a n = A369257 (n + 1)

end A369257

/-! ## A369257.P9785849775347383825

`A193773(A025480(n))`
-/

namespace A369257.P9785849775347383825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193773 (A025480 n).toNat

end

end A369257.P9785849775347383825

namespace A369257

/-- `A193773(A025480(n))` -/
def P9785849775347383825.Spec : Prop :=
  ∀ n, P9785849775347383825.a n = A369257 (n + 1)

end A369257

/-! ## A369257.P491264148836019572

`A008619(Δ[A248517(n)])`
-/

namespace A369257.P491264148836019572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (n + 1) - f1 n).toNat

end

end A369257.P491264148836019572

namespace A369257

/-- `A008619(Δ[A248517(n)])` -/
def P491264148836019572.Spec : Prop :=
  ∀ n, P491264148836019572.a n = A369257 (n + 1)

end A369257

/-! ## A369257.P11743379359345372319

`A034178(A000265(n+1))`
-/

namespace A369257.P11743379359345372319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (A000265 (n + 1)).toNat

end

end A369257.P11743379359345372319

namespace A369257

/-- `A034178(A000265(n+1))` -/
def P11743379359345372319.Spec : Prop :=
  ∀ n, P11743379359345372319.a n = A369257 (n + 1)

end A369257

/-! ## A369257.P10527108861124513050

`A008619(A069283(n+1))`
-/

namespace A369257.P10527108861124513050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A069283 (n + 1)).toNat

end

end A369257.P10527108861124513050

namespace A369257

/-- `A008619(A069283(n+1))` -/
def P10527108861124513050.Spec : Prop :=
  ∀ n, P10527108861124513050.a n = A369257 (n + 1)

end A369257

/-! ## A369257.P7556979721485021615

`A038548(A064989(n+1))`
-/

namespace A369257.P7556979721485021615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A064989 (n + 1)).toNat

end

end A369257.P7556979721485021615

namespace A369257

/-- `A038548(A064989(n+1))` -/
def P7556979721485021615.Spec : Prop :=
  ∀ n, P7556979721485021615.a n = A369257 (n + 1)

end A369257

/-! ## A369257.P326321215019014129

`A034178(A171435(n+1))`
-/

namespace A369257.P326321215019014129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (A171435 (n + 1)).toNat

end

end A369257.P326321215019014129

namespace A369257

/-- `A034178(A171435(n+1))` -/
def P326321215019014129.Spec : Prop :=
  ∀ n, P326321215019014129.a n = A369257 (n + 1)

end A369257

/-! ## A369257.P6723607214138809076

`A072670(A153733(n))+1`
-/

namespace A369257.P6723607214138809076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (A153733 n).toNat + 1

end

end A369257.P6723607214138809076

namespace A369257

/-- `A072670(A153733(n))+1` -/
def P6723607214138809076.Spec : Prop :=
  ∀ n, P6723607214138809076.a n = A369257 (n + 1)

end A369257

/-! ## A369257.P13434562477170376053

`A193773(A101279(n+1))`
-/

namespace A369257.P13434562477170376053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193773 (A101279 (n + 1)).toNat

end

end A369257.P13434562477170376053

namespace A369257

/-- `A193773(A101279(n+1))` -/
def P13434562477170376053.Spec : Prop :=
  ∀ n, P13434562477170376053.a n = A369257 (n + 1)

end A369257

/-! ## A369257.P16558110203571865366

`A353236(A259445(n+1))`
-/

namespace A369257.P16558110203571865366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353236 (A259445 (n + 1)).toNat

end

end A369257.P16558110203571865366

namespace A369257

/-- `A353236(A259445(n+1))` -/
def P16558110203571865366.Spec : Prop :=
  ∀ n, P16558110203571865366.a n = A369257 (n + 1)

end A369257

/-! ## A369257.P4446829725604972521

`A004526(A001227(n+1)+1)`
-/

namespace A369257.P4446829725604972521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001227 (n + 1) + 1).toNat

end

end A369257.P4446829725604972521

namespace A369257

/-- `A004526(A001227(n+1)+1)` -/
def P4446829725604972521.Spec : Prop :=
  ∀ n, P4446829725604972521.a n = A369257 (n + 1)

end A369257

/-! ## A369257.P2503688943149660596

`A110654(A069283(n+1)+1)`
-/

namespace A369257.P2503688943149660596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A069283 (n + 1) + 1).toNat

end

end A369257.P2503688943149660596

namespace A369257

/-- `A110654(A069283(n+1)+1)` -/
def P2503688943149660596.Spec : Prop :=
  ∀ n, P2503688943149660596.a n = A369257 (n + 1)

end A369257

/-! ## A369257.P13168730356930748979

`A008619(A001227(n+1)-1)`
-/

namespace A369257.P13168730356930748979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A001227 (n + 1) - 1).toNat

end

end A369257.P13168730356930748979

namespace A369257

/-- `A008619(A001227(n+1)-1)` -/
def P13168730356930748979.Spec : Prop :=
  ∀ n, P13168730356930748979.a n = A369257 (n + 1)

end A369257

/-! ## A369257.P13756393785522629297

`A353376(n+1)/A115362(n)`
-/

namespace A369257.P13756393785522629297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353376 (n + 1) : ℚ) / (A115362 n : ℚ)

end

end A369257.P13756393785522629297

namespace A369257

/-- `A353376(n+1)/A115362(n)` -/
def P13756393785522629297.Spec : Prop :=
  ∀ n, P13756393785522629297.a n = (A369257 (n + 1) : ℚ)

end A369257

/-! ## A369257.P5621995748330686929

`A369258(n+1)+A053866(n+1)`
-/

namespace A369257.P5621995748330686929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369258 (n + 1) + A053866 (n + 1)

end

end A369257.P5621995748330686929

namespace A369257

/-- `A369258(n+1)+A053866(n+1)` -/
def P5621995748330686929.Spec : Prop :=
  ∀ n, P5621995748330686929.a n = A369257 (n + 1)

end A369257

/-! ## A369257.P11509895699958740825

`A069733(n+1)-A353235(n+1)`
-/

namespace A369257.P11509895699958740825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069733 (n + 1) - A353235 (n + 1)

end

end A369257.P11509895699958740825

namespace A369257

/-- `A069733(n+1)-A353235(n+1)` -/
def P11509895699958740825.Spec : Prop :=
  ∀ n, P11509895699958740825.a n = A369257 (n + 1)

end A369257

/-! ## A369257.P1570111431385538423

`A368582(n+1)-A086670(n+1)`
-/

namespace A369257.P1570111431385538423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368582 (n + 1) - A086670 (n + 1)

end

end A369257.P1570111431385538423

namespace A369257

/-- `A368582(n+1)-A086670(n+1)` -/
def P1570111431385538423.Spec : Prop :=
  ∀ n, P1570111431385538423.a n = A369257 (n + 1)

end A369257

/-!
# A369258: a(n) = number of odd divisors of n that have an odd number of prime factors with multiplicity.

The programs for A369258, the canonical program `A369258.P16975426313700226545` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369258 has offset 1).

The definition of A369258 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001227, A369257, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369258.P16975426313700226545

`A001227(n+1)-A369257(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A369258

/-- `A001227(n+1)-A369257(n+1)` -/
def P16975426313700226545.Spec : Prop :=
  ∀ n, P16975426313700226545.a n = A369258 (n + 1)

theorem P16975426313700226545.correct : P16975426313700226545.Spec := by
  intro n
  simp only [A369258, Nat.add_sub_cancel]

end A369258

/-! ## A369258.P4904229152749134420

`∑{d}[n+1, A353558(#)]`
-/

namespace A369258.P4904229152749134420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353558 d

end

end A369258.P4904229152749134420

namespace A369258

/-- `∑{d}[n+1, A353558(#)]` -/
def P4904229152749134420.Spec : Prop :=
  ∀ n, P4904229152749134420.a n = A369258 (n + 1)

end A369258

/-! ## A369258.P9864596647938188626

`floor(A001227(n+1)/2)`
-/

namespace A369258.P9864596647938188626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001227 (n + 1) : ℚ) / 2⌋

end

end A369258.P9864596647938188626

namespace A369258

/-- `floor(A001227(n+1)/2)` -/
def P9864596647938188626.Spec : Prop :=
  ∀ n, P9864596647938188626.a n = A369258 (n + 1)

end A369258

/-! ## A369258.P6613355799304519305

`ceil(A069283(n+1)/2)`
-/

namespace A369258.P6613355799304519305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A069283 (n + 1) : ℚ) / 2⌉

end

end A369258.P6613355799304519305

namespace A369258

/-- `ceil(A069283(n+1)/2)` -/
def P6613355799304519305.Spec : Prop :=
  ∀ n, P6613355799304519305.a n = A369258 (n + 1)

end A369258

/-! ## A369258.P4031035105377251313

`A004526(A001227(n+1))`
-/

namespace A369258.P4031035105377251313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001227 (n + 1)).toNat

end

end A369258.P4031035105377251313

namespace A369258

/-- `A004526(A001227(n+1))` -/
def P4031035105377251313.Spec : Prop :=
  ∀ n, P4031035105377251313.a n = A369258 (n + 1)

end A369258

/-! ## A369258.P18291244854432787970

`A033831(A000265(n+1))`
-/

namespace A369258.P18291244854432787970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033831 (A000265 (n + 1)).toNat

end

end A369258.P18291244854432787970

namespace A369258

/-- `A033831(A000265(n+1))` -/
def P18291244854432787970.Spec : Prop :=
  ∀ n, P18291244854432787970.a n = A369258 (n + 1)

end A369258

/-! ## A369258.P14149234298431530505

`A056924(A064989(n+1))`
-/

namespace A369258.P14149234298431530505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (A064989 (n + 1)).toNat

end

end A369258.P14149234298431530505

namespace A369258

/-- `A056924(A064989(n+1))` -/
def P14149234298431530505.Spec : Prop :=
  ∀ n, P14149234298431530505.a n = A369258 (n + 1)

end A369258

/-! ## A369258.P12045535156093758319

`A110654(A069283(n+1))`
-/

namespace A369258.P12045535156093758319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A069283 (n + 1)).toNat

end

end A369258.P12045535156093758319

namespace A369258

/-- `A110654(A069283(n+1))` -/
def P12045535156093758319.Spec : Prop :=
  ∀ n, P12045535156093758319.a n = A369258 (n + 1)

end A369258

/-! ## A369258.P2681378886963685297

`A337101(A001227(n+1)²)`
-/

namespace A369258.P2681378886963685297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (A001227 (n + 1) ^ 2).toNat

end

end A369258.P2681378886963685297

namespace A369258

/-- `A337101(A001227(n+1)²)` -/
def P2681378886963685297.Spec : Prop :=
  ∀ n, P2681378886963685297.a n = A369258 (n + 1)

end A369258

/-! ## A369258.P5706324284694751494

`A004526(A069283(n+1)+1)`
-/

namespace A369258.P5706324284694751494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A069283 (n + 1) + 1).toNat

end

end A369258.P5706324284694751494

namespace A369258

/-- `A004526(A069283(n+1)+1)` -/
def P5706324284694751494.Spec : Prop :=
  ∀ n, P5706324284694751494.a n = A369258 (n + 1)

end A369258

/-! ## A369258.P7135383339034204745

`A110654(A001227(n+1)-1)`
-/

namespace A369258.P7135383339034204745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A001227 (n + 1) - 1).toNat

end

end A369258.P7135383339034204745

namespace A369258

/-- `A110654(A001227(n+1)-1)` -/
def P7135383339034204745.Spec : Prop :=
  ∀ n, P7135383339034204745.a n = A369258 (n + 1)

end A369258

/-! ## A369258.P14659715100025590183

`A274576(2*A001227(n+1))`
-/

namespace A369258.P14659715100025590183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274576 (2 * A001227 (n + 1)).toNat

end

end A369258.P14659715100025590183

namespace A369258

/-- `A274576(2*A001227(n+1))` -/
def P14659715100025590183.Spec : Prop :=
  ∀ n, P14659715100025590183.a n = A369258 (n + 1)

end A369258

/-! ## A369258.P3016320017792911338

`A211261(n+1)-A072670(n)`
-/

namespace A369258.P3016320017792911338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211261 (n + 1) - A072670 n

end

end A369258.P3016320017792911338

namespace A369258

/-- `A211261(n+1)-A072670(n)` -/
def P3016320017792911338.Spec : Prop :=
  ∀ n, P3016320017792911338.a n = A369258 (n + 1)

end A369258

/-! ## A369258.P7981472186259062498

`A369257(n+1)-A053866(n+1)`
-/

namespace A369258.P7981472186259062498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369257 (n + 1) - A053866 (n + 1)

end

end A369258.P7981472186259062498

namespace A369258

/-- `A369257(n+1)-A053866(n+1)` -/
def P7981472186259062498.Spec : Prop :=
  ∀ n, P7981472186259062498.a n = A369258 (n + 1)

end A369258

/-! ## A369258.P9213122686365596310

`A079247(n+1)-A368582(n+1)`
-/

namespace A369258.P9213122686365596310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079247 (n + 1) - A368582 (n + 1)

end

end A369258.P9213122686365596310

namespace A369258

/-- `A079247(n+1)-A368582(n+1)` -/
def P9213122686365596310.Spec : Prop :=
  ∀ n, P9213122686365596310.a n = A369258 (n + 1)

end A369258

/-! ## A369258.P9557660502317673892

`A320111(n+1)-A353236(n+1)`
-/

namespace A369258.P9557660502317673892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (n + 1) - A353236 (n + 1)

end

end A369258.P9557660502317673892

namespace A369258

/-- `A320111(n+1)-A353236(n+1)` -/
def P9557660502317673892.Spec : Prop :=
  ∀ n, P9557660502317673892.a n = A369258 (n + 1)

end A369258

/-! ## A369258.P12302358365634946818

`A353235(n+1)%A001227(n+1)`
-/

namespace A369258.P12302358365634946818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353235 (n + 1)) (A001227 (n + 1))

end

end A369258.P12302358365634946818

namespace A369258

/-- `A353235(n+1)%A001227(n+1)` -/
def P12302358365634946818.Spec : Prop :=
  ∀ n, P12302358365634946818.a n = A369258 (n + 1)

end A369258

/-! ## A369258.P5736156423460243646

`A000005(n+1)-A353236(2*(n+1))`
-/

namespace A369258.P5736156423460243646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A353236 (2 * (n + 1))

end

end A369258.P5736156423460243646

namespace A369258

/-- `A000005(n+1)-A353236(2*(n+1))` -/
def P5736156423460243646.Spec : Prop :=
  ∀ n, P5736156423460243646.a n = A369258 (n + 1)

end A369258

/-! ## A369258.P12695612158367293940

`floor(Δ[A060831(n)/2])`
-/

namespace A369258.P12695612158367293940
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060831 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A369258.P12695612158367293940

namespace A369258

/-- `floor(Δ[A060831(n)/2])` -/
def P12695612158367293940.Spec : Prop :=
  ∀ n, P12695612158367293940.a n = A369258 (n + 1)

end A369258

/-! ## A369258.P419738642593173544

`floor(A091954(2*(n+1))/2)`
-/

namespace A369258.P419738642593173544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A091954 (2 * (n + 1)) : ℚ) / 2⌋

end

end A369258.P419738642593173544

namespace A369258

/-- `floor(A091954(2*(n+1))/2)` -/
def P419738642593173544.Spec : Prop :=
  ∀ n, P419738642593173544.a n = A369258 (n + 1)

end A369258

/-!
# A369262: Expansion of (1/x) * Series_Reversion( x * (1-x) / (1+x^2)^3 ).

The programs for A369262, there is no canonical definition to state claims against.
-/

/-! ## A369262.P7472406300290117608

`A053418(n)-A083892(A143968(n))`
-/

namespace A369262.P7472406300290117608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053418 n - A083892 (A143968 n).toNat

end

end A369262.P7472406300290117608

/-!
# A369263: Expansion of (1/x) * Series_Reversion( x * (1-x)^2 / (1+x^2)^3 ).

The programs for A369263, there is no canonical definition to state claims against.
-/

/-! ## A369263.P6132251379472234140

`A005206(A317133(n))+A003415(n)`
-/

namespace A369263.P6132251379472234140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A317133 n).toNat + A003415 n

end

end A369263.P6132251379472234140

/-!
# A369264: Expansion of (1/x) * Series_Reversion( x * (1-x)^3 / (1+x^2)^3 ).

The programs for A369264, there is no canonical definition to state claims against.
-/

/-! ## A369264.P6870669583905239850

`A186760(n)+A046523(A217799(n))`
-/

namespace A369264.P6870669583905239850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186760 n + A046523 (A217799 n).toNat

end

end A369264.P6870669583905239850

/-!
# A369265: Expansion of (1/x) * Series_Reversion( x * (1-x)^2 / (1+x^3) ).

The programs for A369265, there is no canonical definition to state claims against.
-/

/-! ## A369265.P12318889249242385858

`A369297(n)-A122841(A052161(n))`
-/

namespace A369265.P12318889249242385858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369297 n - A122841 (A052161 n).toNat

end

end A369265.P12318889249242385858

/-! ## A369265.P5156482247379834004

`A369297(n)-A188037(A055824(n))`
-/

namespace A369265.P5156482247379834004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369297 n - A188037 (A055824 n).toNat

end

end A369265.P5156482247379834004

/-! ## A369265.P8351874357965376487

`A369297(n)-A083890(A200731(n))`
-/

namespace A369265.P8351874357965376487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369297 n - A083890 (A200731 n).toNat

end

end A369265.P8351874357965376487

/-!
# A369266: Expansion of (1/x) * Series_Reversion( x * (1-x) / (1+x^3)^2 ).

The programs for A369266, there is no canonical definition to state claims against.
-/

/-! ## A369266.P1304325709601378259

`A108954(A150781(n))`
-/

namespace A369266.P1304325709601378259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A150781 n).toNat

end

end A369266.P1304325709601378259

/-! ## A369266.P102440518153603992

`A226762(A150807(n))`
-/

namespace A369266.P102440518153603992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A150807 n).toNat

end

end A369266.P102440518153603992

/-! ## A369266.P9481427866807455494

`A226762(A150813(n))`
-/

namespace A369266.P9481427866807455494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A150813 n).toNat

end

end A369266.P9481427866807455494

/-!
# A369267: Expansion of (1/x) * Series_Reversion( x * (1-x)^2 / (1+x^3)^2 ).

The programs for A369267, there is no canonical definition to state claims against.
-/

/-! ## A369267.P7512405636545558163

`xor(A050602(A001147(n)), A369298(n))`
-/

namespace A369267.P7512405636545558163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A050602 (A001147 n).toNat) (A369298 n)

end

end A369267.P7512405636545558163

/-! ## A369267.P11960136150157312266

`A369298(n)-A086079(A030662(n+1))`
-/

namespace A369267.P11960136150157312266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369298 n - A086079 (A030662 (n + 1)).toNat

end

end A369267.P11960136150157312266

/-! ## A369267.P3485115900837231235

`A369298(n)-A350251(A015768(n+1))`
-/

namespace A369267.P3485115900837231235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369298 n - A350251 (A015768 (n + 1)).toNat

end

end A369267.P3485115900837231235

/-!
# A369268: Expansion of (1/x) * Series_Reversion( x * (1-x) / (1+x^3)^3 ).

The programs for A369268, there is no canonical definition to state claims against.
-/

/-! ## A369268.P15642971532981069310

`A358993(n)+A059995(A158879(n))`
-/

namespace A369268.P15642971532981069310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358993 n + A059995 (A158879 n).toNat

end

end A369268.P15642971532981069310

/-! ## A369268.P14342387976088467208

`A279568(n)+A249871(A271269(n+1))`
-/

namespace A369268.P14342387976088467208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279568 n + A249871 (A271269 (n + 1)).toNat

end

end A369268.P14342387976088467208

/-! ## A369268.P5816256141988990358

`A369299(n)-A356735(A051708(n+1))`
-/

namespace A369268.P5816256141988990358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369299 n - A356735 (A051708 (n + 1)).toNat

end

end A369268.P5816256141988990358

/-!
# A369269: Expansion of (1/x) * Series_Reversion( x * (1-x)^2 / (1+x^3)^3 ).

The programs for A369269, there is no canonical definition to state claims against.
-/

/-! ## A369269.P10584763700612991235

`∏{p}[A369300(n)², #]`
-/

namespace A369269.P10584763700612991235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369300 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A369269.P10584763700612991235

/-! ## A369269.P5563721221158286677

`A369300(n^C(n, floor(n/6)))`
-/

namespace A369269.P5563721221158286677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369300 (n ^ Nat.choose n ⌊(n : ℚ) / 6⌋.toNat)

end

end A369269.P5563721221158286677

/-!
# A369270: Expansion of (1/x) * Series_Reversion( x * (1-x)^3 / (1+x^3)^3 ).

The programs for A369270, there is no canonical definition to state claims against.
-/

/-! ## A369270.P1284724284605824045

`A369301(n)-A275672(A241688(n+1))`
-/

namespace A369270.P1284724284605824045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369301 n - A275672 (A241688 (n + 1)).toNat

end

end A369270.P1284724284605824045

/-! ## A369270.P1342447790499945536

`A028310(A369301(n))`
-/

namespace A369270.P1342447790499945536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A369301 n).toNat

end

end A369270.P1342447790499945536

/-!
# A369273: Nonnegative numbers k satisfying sin(k) < sin(k+1) < sin(k+2).

The programs for A369273, there is no canonical definition to state claims against.
-/

/-! ## A369273.P15181522664471872170

`lt[ϕ, exp(cos(n+1))]`
-/

namespace A369273.P15181522664471872170
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (Real.cos (n + 1 : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A369273.P15181522664471872170

/-! ## A369273.P10261421375035175438

`lt[log(ϕ), cos(n+1)]`
-/

namespace A369273.P10261421375035175438
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log Real.goldenRatio

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A369273.P10261421375035175438

/-! ## A369273.P15991489206263168075

`lt[0, round(sinh(cos(n+1)))]`
-/

namespace A369273.P15991489206263168075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.cos (n + 1 : ℝ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A369273.P15991489206263168075

/-! ## A369273.P2617832454087317085

`eq[1, round(sinh(cos(n+1)))]`
-/

namespace A369273.P2617832454087317085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.cos (n + 1 : ℝ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A369273.P2617832454087317085

/-! ## A369273.P6334084635438201964

`lt[3, cot(cot(2/(n+1)))²]`
-/

namespace A369273.P6334084635438201964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (Real.cot (2 / (n + 1 : ℚ) : ℝ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A369273.P6334084635438201964

/-! ## A369273.P6318175505291388003

`lt[n-1, (2*n+1)*cos(n+1)]`
-/

namespace A369273.P6318175505291388003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℝ) * Real.cos (n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A369273.P6318175505291388003

/-! ## A369273.P4928200580997916054

`∪[A246295(n+1), A277095(n+1)]`
-/

namespace A369273.P4928200580997916054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369273.P4928200580997916054

/-! ## A369273.P5183384312816151962

`∪[A246295(n+1), A369274(n+1)]`
-/

namespace A369273.P5183384312816151962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369273.P5183384312816151962

/-! ## A369273.P17851217624957081932

`∩[A026309(n+1)-1, A026309(n+1)]`
-/

namespace A369273.P17851217624957081932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026309 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369273.P17851217624957081932

/-!
# A369274: Nonnegative numbers k satisfying sin(k) < sin(k+1) < sin(k+2) < sin(k+3).

The programs for A369274, there is no canonical definition to state claims against.
-/

/-! ## A369274.P13893280325171523832

`∪[A246296(n+1), A369275(n+1)]`
-/

namespace A369274.P13893280325171523832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369274.P13893280325171523832

/-! ## A369274.P11394092323783967376

`∩[A026309(n+1)-2, A026309(n+1)]`
-/

namespace A369274.P11394092323783967376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026309 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369274.P11394092323783967376

/-! ## A369274.P15676169859514189960

`∩[A369273(n+1)-1, A369273(n+1)]`
-/

namespace A369274.P15676169859514189960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369273 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369274.P15676169859514189960

/-! ## A369274.P3373696166963997947

`∪[A276889(A225240(n+2)), A246296(n+2)]`
-/

namespace A369274.P3373696166963997947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276889 (A225240 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246296 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369274.P3373696166963997947

/-! ## A369274.P16559662348663876641

`A276889(A225240(n+2))`
-/

namespace A369274.P16559662348663876641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276889 (A225240 (n + 2)).toNat

end

end A369274.P16559662348663876641

/-!
# A369275: Nonnegative numbers k satisfying sin(k) < sin(k+1) < sin(k+2) < sin(k+3) < sin(k+4).

The programs for A369275, there is no canonical definition to state claims against.
-/

/-! ## A369275.P15079178287682384531

`∩[A369274(n+1)-1, A369274(n+1)]`
-/

namespace A369275.P15079178287682384531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369274 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369275.P15079178287682384531

/-! ## A369275.P3976210333803971717

`∩[A026314(n+1), A369274(n+1)]`
-/

namespace A369275.P3976210333803971717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369275.P3976210333803971717

/-! ## A369275.P17354936017919873157

`∩[A026309(n+1)-3, A026309(n+1)]`
-/

namespace A369275.P17354936017919873157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026309 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369275.P17354936017919873157

/-! ## A369275.P7710101301595844121

`A246444(A246412(n+1))-A246412(n+1)`
-/

namespace A369275.P7710101301595844121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246444 (A246412 (n + 1)).toNat - A246412 (n + 1)

end

end A369275.P7710101301595844121

/-!
# A369279: Triangle read by rows: T(n,k) is the number of simple graphs on n unlabeled nodes with cooling number k = 1..n.

The programs for A369279, there is no canonical definition to state claims against.
-/

/-! ## A369279.P13611968259172411021

`A285189(A029600(n)*A048993(n))`
-/

namespace A369279.P13611968259172411021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A029600 n * A048993 n).toNat

end

end A369279.P13611968259172411021

/-! ## A369279.P4209337725113034204

`A048993(n)*A356229(A002878(n))`
-/

namespace A369279.P4209337725113034204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A356229 (A002878 n).toNat

end

end A369279.P4209337725113034204

/-! ## A369279.P4557590439972038488

`A329362(A329860(n)^A292030(n))`
-/

namespace A369279.P4557590439972038488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329362 (SequenceMachineLib.roundAway ((A329860 n : ℚ) ^ (A292030 n : ℤ))).toNat

end

end A369279.P4557590439972038488

/-! ## A369279.P8552129669470097966

`lcm(A105899(A261840(n)), A291684(n))`
-/

namespace A369279.P8552129669470097966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A105899 (A261840 n).toNat) (A291684 n)

end

end A369279.P8552129669470097966

/-! ## A369279.P5342703144866443085

`A048993(n)*A124765(A247647(n+1))`
-/

namespace A369279.P5342703144866443085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A124765 (A247647 (n + 1)).toNat

end

end A369279.P5342703144866443085

/-!
# A369284: Number of point-determining graphs on n unlabeled nodes with no isolated vertices.

The programs for A369284, there is no canonical definition to state claims against.
-/

/-! ## A369284.P1368298275641665617

`A004110(n)-a(n-1)` with `a(0)=1`
-/

namespace A369284.P1368298275641665617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004110 n - a (n - 1)

end

end A369284.P1368298275641665617

/-! ## A369284.P2183946979417277165

`A327371(A000217(n))*A328570(2*(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A369284.P2183946979417277165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A327371 (A000217 n).toNat * A328570 (2 * (n + 1)) - a (n - 1)

end

end A369284.P2183946979417277165

/-!
# A369287: Triangle read by rows: T(n,k) is the number of non-isomorphic multiset partitions of weight n with k parts and no singletons or vertices that appear only once, 0 <= k <= floor(n/2).

The programs for A369287, there is no canonical definition to state claims against.
-/

/-! ## A369287.P14825467709348695307

`A098489(A174269(n+1))`
-/

namespace A369287.P14825467709348695307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098489 (A174269 (n + 1)).toNat

end

end A369287.P14825467709348695307

/-! ## A369287.P3184379241308719174

`A098489(A285929(n+1))`
-/

namespace A369287.P3184379241308719174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098489 (A285929 (n + 1)).toNat

end

end A369287.P3184379241308719174

/-! ## A369287.P13867850012931872110

`A034799(n)%A340966(A350452(n))`
-/

namespace A369287.P13867850012931872110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034799 n) (A340966 ((A350452 n).toNat + 20))

end

end A369287.P13867850012931872110

/-! ## A369287.P10439158044249007857

`A322435(n+1)+A072769(A372957(n))`
-/

namespace A369287.P10439158044249007857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322435 (n + 1) + A072769 (A372957 n).toNat

end

end A369287.P10439158044249007857

/-! ## A369287.P2142182565771354827

`and(A229037(A290131(2*(n+2))), A275803(n))`
-/

namespace A369287.P2142182565771354827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A229037 (A290131 (2 * (n + 2))).toNat) (A275803 n)

end

end A369287.P2142182565771354827

/-!
# A369289: Number of connected graphs with loops (symmetric relations) on n unlabeled vertices with at most n edges.

The programs for A369289, there is no canonical definition to state claims against.
-/

/-! ## A369289.P9223798604919185552

`A005703(n)+A000081(n)`
-/

namespace A369289.P9223798604919185552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005703 n + A000081 n

end

end A369289.P9223798604919185552

/-! ## A369289.P8452775008883203378

`A005703(n)+∑[A174145(abs(1-n))]`
-/

namespace A369289.P8452775008883203378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005703 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369289.P8452775008883203378

/-! ## A369289.P866234539625840107

`A005703(n)+A222380(n)+A222379(n)`
-/

namespace A369289.P866234539625840107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005703 n + (A222380 n + A222379 n)

end

end A369289.P866234539625840107

/-! ## A369289.P14434835913906371796

`A005703(n)+2*A222380(n)-A211192(n)`
-/

namespace A369289.P14434835913906371796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005703 n + (2 * A222380 n - A211192 n)

end

end A369289.P14434835913906371796

/-! ## A369289.P17274750324316453608

`A005703(n)+A038001(2*n+1)-A174145(n)`
-/

namespace A369289.P17274750324316453608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005703 n + (A038001 (2 * n + 1) - A174145 n)

end

end A369289.P17274750324316453608

/-! ## A369289.P6317684295918065435

`A005703(n)+A038001(A004280(n+1))-A000007(n)`
-/

namespace A369289.P6317684295918065435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005703 n + (A038001 (A004280 (n + 1)).toNat - A000007 n)

end

end A369289.P6317684295918065435

/-! ## A369289.P13204281285359285630

`A005703(n)+A213674(n)-A213683(n)`
-/

namespace A369289.P13204281285359285630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005703 n + (A213674 n - A213683 n)

end

end A369289.P13204281285359285630

/-! ## A369289.P6708466908789764792

`A106234(∑[n]+2)+A005703(n)`
-/

namespace A369289.P6708466908789764792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A005703 n

end

end A369289.P6708466908789764792

/-! ## A369289.P13902542182459013910

`A005703(n)+A033185(A000124(n))-A174145(n)`
-/

namespace A369289.P13902542182459013910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005703 n + (A033185 (A000124 n).toNat - A174145 n)

end

end A369289.P13902542182459013910

/-!
# A369290: Number of unlabeled simple graphs without endpoints with n edges.

The programs for A369290, there is no canonical definition to state claims against.
-/

/-! ## A369290.P17745740390680064899

`A123551(A180415(n+1))`
-/

namespace A369290.P17745740390680064899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123551 (A180415 (n + 1)).toNat

end

end A369290.P17745740390680064899

/-! ## A369290.P536305240877809411

`A123551(∑[∑[n]+2])`
-/

namespace A369290.P536305240877809411
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123551 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A369290.P536305240877809411

/-!
# A369292: Array read by downward antidiagonals: A(n,k) = -A(n-1,k) + (k+1)*A(n-1,k+1) + A(n-1,k+2) with A(0,k) = 1, n >= 0, k >= 0.

The programs for A369292, there is no canonical definition to state claims against.
-/

/-! ## A369292.P5077723202369232178

`A206767(A181511(n+1))`
-/

namespace A369292.P5077723202369232178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206767 (A181511 (n + 1)).toNat

end

end A369292.P5077723202369232178

/-! ## A369292.P387770397098707935

`A091863(A258219(n))`
-/

namespace A369292.P387770397098707935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091863 (A258219 n).toNat

end

end A369292.P387770397098707935

/-!
# A369296: Expansion of (1/x) * Series_Reversion( x * (1-x) * (1-x^3)^2 ).

The programs for A369296, there is no canonical definition to state claims against.
-/

/-! ## A369296.P8888827641631185206

`A226762(A150811(n))`
-/

namespace A369296.P8888827641631185206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A150811 n).toNat

end

end A369296.P8888827641631185206

/-! ## A369296.P5549448428073917984

`A247832(A148488(n))`
-/

namespace A369296.P5549448428073917984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247832 (A148488 n).toNat

end

end A369296.P5549448428073917984

/-! ## A369296.P9163960948408204594

`A247832(A148489(n))`
-/

namespace A369296.P9163960948408204594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247832 (A148489 n).toNat

end

end A369296.P9163960948408204594

/-!
# A369297: Expansion of (1/x) * Series_Reversion( x * (1-x)^2 * (1-x^3) ).

The programs for A369297, there is no canonical definition to state claims against.
-/

/-! ## A369297.P10963325910924779799

`A369265(n)+A011661(A000272(n))`
-/

namespace A369297.P10963325910924779799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369265 n + A011661 (A000272 n).toNat

end

end A369297.P10963325910924779799

/-! ## A369297.P8699575878344378397

`A369265(n)+A083890(A200731(n))`
-/

namespace A369297.P8699575878344378397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369265 n + A083890 (A200731 n).toNat

end

end A369297.P8699575878344378397

/-! ## A369297.P17206587710355856472

`A369265(n)+A079978(A389549(n))`
-/

namespace A369297.P17206587710355856472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369265 n + A079978 (A389549 n).toNat

end

end A369297.P17206587710355856472

/-!
# A369298: Expansion of (1/x) * Series_Reversion( x * (1-x)^2 * (1-x^3)^2 ).

The programs for A369298, there is no canonical definition to state claims against.
-/

/-! ## A369298.P11250022742706821415

`A369267(n)+A050602(A001147(n))`
-/

namespace A369298.P11250022742706821415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369267 n + A050602 (A001147 n).toNat

end

end A369298.P11250022742706821415

/-! ## A369298.P14479642492453384541

`A369267(n)+A007949(A290356(n))`
-/

namespace A369298.P14479642492453384541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369267 n + A007949 (A290356 n).toNat

end

end A369298.P14479642492453384541

/-! ## A369298.P11031869681302408119

`A369267(n)+A357849(A364709(n+1))`
-/

namespace A369298.P11031869681302408119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369267 n + A357849 (A364709 (n + 1)).toNat

end

end A369298.P11031869681302408119

/-!
# A369299: Expansion of (1/x) * Series_Reversion( x * (1-x) * (1-x^3)^3 ).

The programs for A369299, there is no canonical definition to state claims against.
-/

/-! ## A369299.P12734788031217561759

`∑[A111772(n+1)]-floor(Δ[n²/ϕ])`
-/

namespace A369299.P12734788031217561759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111772 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℝ) / Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌊f2 (n + 1) - f2 n⌋

end

end A369299.P12734788031217561759

/-! ## A369299.P7176991162298595906

`A157271(A149488(n))+A070106(A358245(n+1))`
-/

namespace A369299.P7176991162298595906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A149488 n).toNat + A070106 (A358245 (n + 1)).toNat

end

end A369299.P7176991162298595906

