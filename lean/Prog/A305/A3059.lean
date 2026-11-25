import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C036
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import SequenceMachineLib.Triangle

/-!
# A305900: Filter sequence for a(primes > 3) = constant sequences.

The programs for A305900, there is no canonical definition to state claims against.
-/

/-! ## A305900.P11451322386139345291

`A374478(n+1)`
-/

namespace A305900.P11451322386139345291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374478 (n + 1)

end

end A305900.P11451322386139345291

/-! ## A305900.P15469681893158041761

`A374040(n+1)`
-/

namespace A305900.P15469681893158041761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374040 (n + 1)

end

end A305900.P15469681893158041761

/-! ## A305900.P12338223690653774664

`A373594(n+1)`
-/

namespace A305900.P12338223690653774664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373594 (n + 1)

end

end A305900.P12338223690653774664

/-!
# A305905: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305905, there is no canonical definition to state claims against.
-/

/-! ## A305905.P8790525858271762656

`A305911(∑[4*n]+1)`
-/

namespace A305905.P8790525858271762656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305905.P8790525858271762656

/-! ## A305905.P10193782601431791947

`record[A305911(Δ[A235355(n)])]`
-/

namespace A305905.P10193782601431791947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305905.P10193782601431791947

/-! ## A305905.P1693375581412453782

`record[A305911(A330613(n+1))]`
-/

namespace A305905.P1693375581412453782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305905.P1693375581412453782

/-! ## A305905.P9982094008150977397

`record[A305911(Δ[A079824(n+1)])]`
-/

namespace A305905.P9982094008150977397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305905.P9982094008150977397

/-!
# A305906: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305906, there is no canonical definition to state claims against.
-/

/-! ## A305906.P2923989501709552821

`A305911(∑[n+2]+4)`
-/

namespace A305906.P2923989501709552821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305906.P2923989501709552821

/-!
# A305907: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305907, there is no canonical definition to state claims against.
-/

/-! ## A305907.P17397611071285934971

`A305911(∑[n+3]+7)`
-/

namespace A305907.P17397611071285934971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A305907.P17397611071285934971

/-!
# A305908: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305908, there is no canonical definition to state claims against.
-/

/-! ## A305908.P6266071842728693591

`A305911(A167499(n+3))`
-/

namespace A305908.P6266071842728693591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (A167499 (n + 3)).toNat

end

end A305908.P6266071842728693591

/-! ## A305908.P13057429715047631368

`A305911(A374005(n+1))`
-/

namespace A305908.P13057429715047631368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (A374005 (n + 1)).toNat

end

end A305908.P13057429715047631368

/-!
# A305909: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305909, there is no canonical definition to state claims against.
-/

/-! ## A305909.P14730139290629709761

`A305911(A166136(n+4))`
-/

namespace A305909.P14730139290629709761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (A166136 (n + 4)).toNat

end

end A305909.P14730139290629709761

/-! ## A305909.P13800495461915786047

`A305911(A374007(n+1))`
-/

namespace A305909.P13800495461915786047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (A374007 (n + 1)).toNat

end

end A305909.P13800495461915786047

/-!
# A305910: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305910, there is no canonical definition to state claims against.
-/

/-! ## A305910.P3094283256261481431

`A305911(A167487(n+5))`
-/

namespace A305910.P3094283256261481431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (A167487 (n + 5)).toNat

end

end A305910.P3094283256261481431

/-! ## A305910.P1578989378481765686

`A305911(A374008(n+1))`
-/

namespace A305910.P1578989378481765686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (A374008 (n + 1)).toNat

end

end A305910.P1578989378481765686

/-!
# A305911: T(n,k) = Number of n X k 0..1 arrays with every element unequal to 0, 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305911, there is no canonical definition to state claims against.
-/

/-! ## A305911.P5305819476058871704

`A317153(n+1)-A173636(A174545(n))`
-/

namespace A305911.P5305819476058871704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (n + 1) - A173636 (A174545 n).toNat

end

end A305911.P5305819476058871704

/-! ## A305911.P15399952994040410964

`A316883(n+1)-A157685(A260340(n))`
-/

namespace A305911.P15399952994040410964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (n + 1) - A157685 (A260340 n).toNat

end

end A305911.P15399952994040410964

/-! ## A305911.P18390302584510687153

`A317153(n+1)-A186034(A022167(n))²`
-/

namespace A305911.P18390302584510687153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (n + 1) - A186034 (A022167 n).toNat ^ 2

end

end A305911.P18390302584510687153

/-! ## A305911.P4922143479663507284

`A317153(n+1)-A037800(A176791(n))²`
-/

namespace A305911.P4922143479663507284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (n + 1) - A037800 (A176791 n).toNat ^ 2

end

end A305911.P4922143479663507284

/-! ## A305911.P7860711612974175619

`A317153(n+1)-A031298(A282230(n+1))`
-/

namespace A305911.P7860711612974175619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (n + 1) - A031298 (A282230 (n + 1)).toNat

end

end A305911.P7860711612974175619

/-!
# A305912: Number of nXn 0..1 arrays with every element unequal to 0, 1, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305912, there is no canonical definition to state claims against.
-/

/-! ## A305912.P13786682685825476690

`A305918(∑[4*n]+1)`
-/

namespace A305912.P13786682685825476690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305912.P13786682685825476690

/-! ## A305912.P1326636693268238759

`record[A305918(A330613(n+1))]`
-/

namespace A305912.P1326636693268238759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305912.P1326636693268238759

/-! ## A305912.P4507280461216095076

`record[A003982(n)*A305918(n+1)]`
-/

namespace A305912.P4507280461216095076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A305918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305912.P4507280461216095076

/-!
# A305913: Number of nX3 0..1 arrays with every element unequal to 0, 1, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305913, there is no canonical definition to state claims against.
-/

/-! ## A305913.P201085136571976026

`A305918(∑[n+2]+4)`
-/

namespace A305913.P201085136571976026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305913.P201085136571976026

/-! ## A305913.P13448695864662837221

`record[gcd(A073200(n), A305918(n+4))]`
-/

namespace A305913.P13448695864662837221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073200 n) (A305918 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305913.P13448695864662837221

/-!
# A305914: Number of nX4 0..1 arrays with every element unequal to 0, 1, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305914, there is no canonical definition to state claims against.
-/

/-! ## A305914.P14676325615995531916

`A305918(∑[n+3]+7)`
-/

namespace A305914.P14676325615995531916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A305914.P14676325615995531916

/-!
# A305915: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305915, there is no canonical definition to state claims against.
-/

/-! ## A305915.P5311339400512660215

`A305918(A374005(n+1))`
-/

namespace A305915.P5311339400512660215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (A374005 (n + 1)).toNat

end

end A305915.P5311339400512660215

/-!
# A305916: Number of nX6 0..1 arrays with every element unequal to 0, 1, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305916, there is no canonical definition to state claims against.
-/

/-! ## A305916.P7256507804995153659

`A305918(A374007(n+1))`
-/

namespace A305916.P7256507804995153659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (A374007 (n + 1)).toNat

end

end A305916.P7256507804995153659

/-!
# A305917: Number of nX7 0..1 arrays with every element unequal to 0, 1, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305917, there is no canonical definition to state claims against.
-/

/-! ## A305917.P15057030311790964454

`A305918(A374008(n+1))`
-/

namespace A305917.P15057030311790964454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (A374008 (n + 1)).toNat

end

end A305917.P15057030311790964454

/-!
# A305918: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305918, there is no canonical definition to state claims against.
-/

/-! ## A305918.P17186377908864739165

`A309785(A299321(n+1))+A304355(n+1)`
-/

namespace A305918.P17186377908864739165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A299321 (n + 1)).toNat + A304355 (n + 1)

end

end A305918.P17186377908864739165

/-! ## A305918.P2815284088214416073

`A304355(n+1)+A004198(A185044(n))`
-/

namespace A305918.P2815284088214416073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (n + 1) + A004198 (A185044 n).toNat

end

end A305918.P2815284088214416073

/-! ## A305918.P1235714354261293427

`A304355(n+1)+A079208(A285824(n))`
-/

namespace A305918.P1235714354261293427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (n + 1) + A079208 (A285824 n).toNat

end

end A305918.P1235714354261293427

/-! ## A305918.P16452610146791203698

`A304355(n+1)+A230533(A159623(n))`
-/

namespace A305918.P16452610146791203698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (n + 1) + A230533 (A159623 n).toNat

end

end A305918.P16452610146791203698

/-! ## A305918.P10554071271616874401

`A309785(A331562(n))+A304355(n+1)`
-/

namespace A305918.P10554071271616874401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A331562 n).toNat + A304355 (n + 1)

end

end A305918.P10554071271616874401

/-!
# A305919: a(n) = n! * [x^n] 1/(2 - exp(x))^n.

The programs for A305919, there is no canonical definition to state claims against.
-/

/-! ## A305919.P6823118622776886067

`A226513(2*n²)`
-/

namespace A305919.P6823118622776886067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (2 * n ^ 2)

end

end A305919.P6823118622776886067

/-!
# A305920: Inverse Euler transform of A008408.

The programs for A305920, there is no canonical definition to state claims against.
-/

/-! ## A305920.P5669865228816054272

`A305757(n+1)-24`
-/

namespace A305920.P5669865228816054272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305757 (n + 1) - 24

end

end A305920.P5669865228816054272

/-!
# A305922: Expansion of e.g.f. log(1 + 2*x/(exp(x) + 1)).

The programs for A305922, there is no canonical definition to state claims against.
-/

/-! ## A305922.P12134106830537759736

`∑{e}[11^n, A019536(#)]/A033999(3*(n+1))`
-/

namespace A305922.P12134106830537759736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), A019536 (Nat.factorization (f1 n) p) : ℤ) : ℚ) / (A033999 (3 * (n + 1)) : ℚ)

end

end A305922.P12134106830537759736

/-! ## A305922.P839373690126974336

`A009442(n)-A191254(A286819(n))`
-/

namespace A305922.P839373690126974336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009442 n - A191254 (A286819 n).toNat

end

end A305922.P839373690126974336

/-!
# A305923: Expansion of e.g.f. exp(x)/(1 - log(1 + x) - log(1 + x)^2).

The programs for A305923, there is no canonical definition to state claims against.
-/

/-! ## A305923.P13614921519985776660

`A002266(A180677(n))+1+n`
-/

namespace A305923.P13614921519985776660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A180677 n).toNat + 1 + (n : ℤ)

end

end A305923.P13614921519985776660

/-! ## A305923.P9996637973010897841

`A034887(A278095(n+1))+n`
-/

namespace A305923.P9996637973010897841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A278095 (n + 1)).toNat + (n : ℤ)

end

end A305923.P9996637973010897841

/-!
# A305930: Number of digits '0' in 3^n (in base 10).

The programs for A305930, the canonical program `A305930.P16091158982295753828` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305930 has offset 0).

The definition of A305930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305930.P12063744604480072885

`val(A321539(n), 5)`
-/

namespace A305930.P12063744604480072885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A321539 n).toNat 5

end

end A305930.P12063744604480072885

namespace A305930

/-- `val(A321539(n), 5)` -/
def P12063744604480072885.Spec : Prop :=
  ∀ n, (P12063744604480072885.a n : ℤ) = A305930 n

end A305930

/-! ## A305930.P16091158982295753828

`∑{digits}[3^n, A000007(#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A305930

/-- `∑{digits}[3^n, A000007(#)]` -/
def P16091158982295753828.Spec : Prop :=
  ∀ n, P16091158982295753828.a n = A305930 n

theorem P16091158982295753828.correct : P16091158982295753828.Spec := by
  intro n
  simp only [A305930]

end A305930

/-! ## A305930.P14333160511146361129

`∑{digits}[3^n, A008458(#)%3]`
-/

namespace A305930.P14333160511146361129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.tmod (A008458 x) 3).sum

end

end A305930.P14333160511146361129

namespace A305930

/-- `∑{digits}[3^n, A008458(#)%3]` -/
def P14333160511146361129.Spec : Prop :=
  ∀ n, P14333160511146361129.a n = A305930 n

end A305930

/-! ## A305930.P15721408478061400813

`∑{digits}[3^n, A015087(floor(sqrt(#)))]`
-/

namespace A305930.P15721408478061400813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A015087 (Nat.sqrt x)).sum

end

end A305930.P15721408478061400813

namespace A305930

/-- `∑{digits}[3^n, A015087(floor(sqrt(#)))]` -/
def P15721408478061400813.Spec : Prop :=
  ∀ n, P15721408478061400813.a n = A305930 n

end A305930

/-! ## A305930.P14500445153250063853

`∑{digits}[3^n, C(2, A006254(#+1))]`
-/

namespace A305930.P14500445153250063853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose 2 (A006254 (x + 1)).toNat).sum

end

end A305930.P14500445153250063853

namespace A305930

/-- `∑{digits}[3^n, C(2, A006254(#+1))]` -/
def P14500445153250063853.Spec : Prop :=
  ∀ n, (P14500445153250063853.a n : ℤ) = A305930 n

end A305930

/-! ## A305930.P14442173417029315173

`∑{digits}[A000244(n), A055641(#)]`
-/

namespace A305930.P14442173417029315173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055641 x).sum

end

end A305930.P14442173417029315173

namespace A305930

/-- `∑{digits}[A000244(n), A055641(#)]` -/
def P14442173417029315173.Spec : Prop :=
  ∀ n, P14442173417029315173.a n = A305930 n

end A305930

/-! ## A305930.P9720635253411501340

`∑{digits}[A000244(n), A112316(#)]`
-/

namespace A305930.P9720635253411501340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A112316 x).sum

end

end A305930.P9720635253411501340

namespace A305930

/-- `∑{digits}[A000244(n), A112316(#)]` -/
def P9720635253411501340.Spec : Prop :=
  ∀ n, P9720635253411501340.a n = A305930 n

end A305930

/-! ## A305930.P17924140239309585282

`∑{digits}[A000244(n), A151736(#)]`
-/

namespace A305930.P17924140239309585282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A151736 x).sum

end

end A305930.P17924140239309585282

namespace A305930

/-- `∑{digits}[A000244(n), A151736(#)]` -/
def P17924140239309585282.Spec : Prop :=
  ∀ n, P17924140239309585282.a n = A305930 n

end A305930

/-! ## A305930.P16341333869948438312

`∑{digits}[A000244(n), A151878(#)]`
-/

namespace A305930.P16341333869948438312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A151878 x).sum

end

end A305930.P16341333869948438312

namespace A305930

/-- `∑{digits}[A000244(n), A151878(#)]` -/
def P16341333869948438312.Spec : Prop :=
  ∀ n, P16341333869948438312.a n = A305930 n

end A305930

/-! ## A305930.P14232995266303523610

`∑{digits}[A000244(n), A151933(#)]`
-/

namespace A305930.P14232995266303523610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A151933 x).sum

end

end A305930.P14232995266303523610

namespace A305930

/-- `∑{digits}[A000244(n), A151933(#)]` -/
def P14232995266303523610.Spec : Prop :=
  ∀ n, P14232995266303523610.a n = A305930 n

end A305930

/-! ## A305930.P466855254437876687

`∑{digits}[A000244(n), A151934(#)]`
-/

namespace A305930.P466855254437876687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A151934 x).sum

end

end A305930.P466855254437876687

namespace A305930

/-- `∑{digits}[A000244(n), A151934(#)]` -/
def P466855254437876687.Spec : Prop :=
  ∀ n, P466855254437876687.a n = A305930 n

end A305930

/-! ## A305930.P4786724116242608094

`∑{digits}[A000244(n), A247223(#²)]`
-/

namespace A305930.P4786724116242608094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A247223 (x ^ 2)).sum

end

end A305930.P4786724116242608094

namespace A305930

/-- `∑{digits}[A000244(n), A247223(#²)]` -/
def P4786724116242608094.Spec : Prop :=
  ∀ n, P4786724116242608094.a n = A305930 n

end A305930

/-! ## A305930.P17518813728764792456

`∑{digits}[A000244(n), A028310(#)-#]`
-/

namespace A305930.P17518813728764792456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A028310 x - (x : ℤ)).sum

end

end A305930.P17518813728764792456

namespace A305930

/-- `∑{digits}[A000244(n), A028310(#)-#]` -/
def P17518813728764792456.Spec : Prop :=
  ∀ n, P17518813728764792456.a n = A305930 n

end A305930

/-! ## A305930.P14239861091467731421

`∑{digits}[3^n, A101659(A232161(#+1))]`
-/

namespace A305930.P14239861091467731421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A101659 (A232161 (x + 1)).toNat).sum

end

end A305930.P14239861091467731421

namespace A305930

/-- `∑{digits}[3^n, A101659(A232161(#+1))]` -/
def P14239861091467731421.Spec : Prop :=
  ∀ n, P14239861091467731421.a n = A305930 n

end A305930

/-! ## A305930.P16520604987113372747

`∑{digits}[A000244(n), A048993(A014105(#))]`
-/

namespace A305930.P16520604987113372747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A048993 (A014105 x).toNat).sum

end

end A305930.P16520604987113372747

namespace A305930

/-- `∑{digits}[A000244(n), A048993(A014105(#))]` -/
def P16520604987113372747.Spec : Prop :=
  ∀ n, P16520604987113372747.a n = A305930 n

end A305930

/-!
# A305931: Powers of 3 having at least one digit '0' in their decimal representation.

The programs for A305931, there is no canonical definition to state claims against.
-/

/-! ## A305931.P17264319351327045471

`3^comp[lt[0, ∏{digits}[3^n, #]]]`
-/

namespace A305931.P17264319351327045471
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => x).prod

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A305931.P17264319351327045471

/-! ## A305931.P9914293979244713986

`3^comp[A030700(n)]`
-/

namespace A305931.P9914293979244713986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A305931.P9914293979244713986

/-! ## A305931.P15539295010706621307

`3^lt[0, A305930(n)]`
-/

namespace A305931.P15539295010706621307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305930 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A305931.P15539295010706621307

/-! ## A305931.P6842553095226360096

`A000244(comp[A030700(n)])`
-/

namespace A305931.P6842553095226360096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030700 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A305931.P6842553095226360096

/-!
# A305934: Powers of 3 that have exactly one digit '0' in base 10.

The programs for A305934, there is no canonical definition to state claims against.
-/

/-! ## A305934.P17001185435733781451

`3^eq[1, A305930(n)]`
-/

namespace A305934.P17001185435733781451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305930 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A305934.P17001185435733781451

/-! ## A305934.P10841362392507403381

`A000244(eq[1, A305930(n)])`
-/

namespace A305934.P10841362392507403381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305934.P10841362392507403381

/-!
# A305935: Number of labeled spanning intersecting set-systems on n vertices with no singletons.

The programs for A305935, there is no canonical definition to state claims against.
-/

/-! ## A305935.P3363069438685361926

`A039029(2*(a(n-1)+1)²+1)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A305935.P3363069438685361926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A039029 (2 * (a (n - 1) + 1) ^ 2 + 1).toNat

end

end A305935.P3363069438685361926

/-!
# A305936: Irregular triangle whose n-th row is the multiset spanning an initial interval of positive integers with multiplicities equal to the n-th row of A296150 (the prime indices of n in weakly decreasing order).

The programs for A305936, there is no canonical definition to state claims against.
-/

/-! ## A305936.P4367953648794242230

`A001222(or(A000043(n+1), A362746(n+1)))`
-/

namespace A305936.P4367953648794242230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A000043 (n + 1)) (A362746 (n + 1))).toNat

end

end A305936.P4367953648794242230

/-! ## A305936.P15711103400271361856

`A373126(lt[A399032(n+5), A002383(2*n+1)])`
-/

namespace A305936.P15711103400271361856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399032 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002383 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373126 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A305936.P15711103400271361856

/-! ## A305936.P5855318533587768121

`A120336(A091973(n+1)+1)`
-/

namespace A305936.P5855318533587768121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120336 (A091973 (n + 1) + 1).toNat

end

end A305936.P5855318533587768121

/-! ## A305936.P4046313279627409

`A016016(Δ[A065192(n+1)]+8)`
-/

namespace A305936.P4046313279627409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016016 (f1 (n + 1) - f1 n + 8).toNat

end

end A305936.P4046313279627409

/-! ## A305936.P13532179765113280446

`gcd(A148398(n), A269303(A361832(n+2)))`
-/

namespace A305936.P13532179765113280446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A148398 n) (A269303 (A361832 (n + 2)).toNat)

end

end A305936.P13532179765113280446

/-!
# A305937: Number of partitions such that the least positive integer which is not a part of the partition is prime.

The programs for A305937, there is no canonical definition to state claims against.
-/

/-! ## A305937.P2184526535709080926

`A027340(n)-A118759(A339404(n))`
-/

namespace A305937.P2184526535709080926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027340 n - A118759 (A339404 n).toNat

end

end A305937.P2184526535709080926

/-! ## A305937.P5710804983317299082

`A104503(n)-A118759(A339404(n))`
-/

namespace A305937.P5710804983317299082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104503 n - A118759 (A339404 n).toNat

end

end A305937.P5710804983317299082

/-! ## A305937.P1205358061198118134

`A024793(n+8)-A118759(A024793(n+3))`
-/

namespace A305937.P1205358061198118134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024793 (n + 8) - A118759 (A024793 (n + 3)).toNat

end

end A305937.P1205358061198118134

/-! ## A305937.P4345824103976714966

`A027340(n)-A248518(n)`
-/

namespace A305937.P4345824103976714966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027340 n - A248518 n

end

end A305937.P4345824103976714966

/-! ## A305937.P8372200357141462816

`A290821(n+4)-A124767(A392367(3*n+2))`
-/

namespace A305937.P8372200357141462816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290821 (n + 4) - A124767 (A392367 (3 * n + 2)).toNat

end

end A305937.P8372200357141462816

/-!
# A305940: Irregular triangle where T(n,k) is the coefficient of s(y) in p(n), where s is Schur functions, p is power-sum symmetric functions, and y is the integer partition with Heinz number A215366(n,k).

The programs for A305940, there is no canonical definition to state claims against.
-/

/-! ## A305940.P13940119095510057480

`A304438(A215366(1+n))`
-/

namespace A305940.P13940119095510057480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304438 (A215366 (1 + n)).toNat

end

end A305940.P13940119095510057480

/-! ## A305940.P3674555610283936351

`A100047(A126042(n)+A091684(n))`
-/

namespace A305940.P3674555610283936351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100047 (A126042 n + A091684 n).toNat

end

end A305940.P3674555610283936351

/-! ## A305940.P6402225459583632788

`A016287(A064577(n+1)*A279363(n+1))`
-/

namespace A305940.P6402225459583632788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016287 (A064577 (n + 1) * A279363 (n + 1)).toNat

end

end A305940.P6402225459583632788

/-! ## A305940.P15914288781643952532

`A049347(A272033(n+2))`
-/

namespace A305940.P15914288781643952532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A272033 (n + 2)).toNat

end

end A305940.P15914288781643952532

/-! ## A305940.P5388223046620496107

`A008683(A079280(n+2))^A079258(3*n)`
-/

namespace A305940.P5388223046620496107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A079280 (n + 2)).toNat : ℚ) ^ (A079258 (3 * n) : ℤ)

end

end A305940.P5388223046620496107

/-!
# A305941: Smallest power of n having at least one digit 0 (when written in base 10).

The programs for A305941, there is no canonical definition to state claims against.
-/

/-! ## A305941.P14429649158794493583

`(2+n)^A071531(n+2)`
-/

namespace A305941.P14429649158794493583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + n : ℚ) ^ (A071531 (n + 2) : ℤ)

end

end A305941.P14429649158794493583

/-!
# A305948: Number of nXn 0..1 arrays with every element unequal to 0, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305948, there is no canonical definition to state claims against.
-/

/-! ## A305948.P15509429326822856310

`A305954(∑[4*n]+1)`
-/

namespace A305948.P15509429326822856310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305954 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305948.P15509429326822856310

/-! ## A305948.P4083687834340463296

`record[A003982(n)*A305954(n+1)]`
-/

namespace A305948.P4083687834340463296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A305954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305948.P4083687834340463296

/-! ## A305948.P7255314041116170633

`record[gcd(A114327(n), A305954(n+1))]`
-/

namespace A305948.P7255314041116170633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A305954 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305948.P7255314041116170633

/-!
# A305949: Number of nX3 0..1 arrays with every element unequal to 0, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305949, there is no canonical definition to state claims against.
-/

/-! ## A305949.P11495748412968018657

`A305954(∑[n+2]+4)`
-/

namespace A305949.P11495748412968018657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305954 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305949.P11495748412968018657

/-! ## A305949.P11536708772566249465

`A317215(∑[n+2]+4)`
-/

namespace A305949.P11536708772566249465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317215 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305949.P11536708772566249465

/-!
# A305950: Number of nX4 0..1 arrays with every element unequal to 0, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305950, there is no canonical definition to state claims against.
-/

/-! ## A305950.P4674466259234190726

`A305954(A374004(n+1))`
-/

namespace A305950.P4674466259234190726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305954 (A374004 (n + 1)).toNat

end

end A305950.P4674466259234190726

/-! ## A305950.P17694115447344316269

`A317215(A052905(n)+9)`
-/

namespace A305950.P17694115447344316269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317215 (A052905 n + 9).toNat

end

end A305950.P17694115447344316269

/-! ## A305950.P9693831011448051237

`A305954(A141214(n+1))`
-/

namespace A305950.P9693831011448051237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305954 (A141214 (n + 1)).toNat

end

end A305950.P9693831011448051237

/-!
# A305951: Number of nX5 0..1 arrays with every element unequal to 0, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305951, there is no canonical definition to state claims against.
-/

/-! ## A305951.P5069989400250823328

`A305954(A374005(n+1))`
-/

namespace A305951.P5069989400250823328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305954 (A374005 (n + 1)).toNat

end

end A305951.P5069989400250823328

/-!
# A305952: Number of n X 6 0..1 arrays with every element unequal to 0, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305952, there is no canonical definition to state claims against.
-/

/-! ## A305952.P2926407393971057020

`A305954(A374007(n+1))`
-/

namespace A305952.P2926407393971057020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305954 (A374007 (n + 1)).toNat

end

end A305952.P2926407393971057020

/-!
# A305953: Number of nX7 0..1 arrays with every element unequal to 0, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305953, there is no canonical definition to state claims against.
-/

/-! ## A305953.P13572696413963091824

`A305954(A374008(n+1))`
-/

namespace A305953.P13572696413963091824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305954 (A374008 (n + 1)).toNat

end

end A305953.P13572696413963091824

/-!
# A305954: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305954, there is no canonical definition to state claims against.
-/

/-! ## A305954.P6045104979659886805

`A317215(1+n)`
-/

namespace A305954.P6045104979659886805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317215 (1 + n)

end

end A305954.P6045104979659886805

/-!
# A305955: Number of nXn 0..1 arrays with every element unequal to 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305955, there is no canonical definition to state claims against.
-/

/-! ## A305955.P16704732076206104749

`A305961(∑[4*n]+1)`
-/

namespace A305955.P16704732076206104749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305955.P16704732076206104749

/-!
# A305956: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305956, there is no canonical definition to state claims against.
-/

/-! ## A305956.P10642689674356127444

`A305961(∑[n+2]+4)`
-/

namespace A305956.P10642689674356127444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305956.P10642689674356127444

/-! ## A305956.P9924976099410423419

`record[gcd(A303913(n), A305961(n+1))]`
-/

namespace A305956.P9924976099410423419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303913 n) (A305961 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305956.P9924976099410423419

/-!
# A305957: Number of n X 4 0..1 arrays with every element unequal to 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305957, there is no canonical definition to state claims against.
-/

/-! ## A305957.P617806525261252970

`A305961(A374004(n+1))`
-/

namespace A305957.P617806525261252970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (A374004 (n + 1)).toNat

end

end A305957.P617806525261252970

/-! ## A305957.P17393479118040297952

`A305961(A141214(n+1))`
-/

namespace A305957.P17393479118040297952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (A141214 (n + 1)).toNat

end

end A305957.P17393479118040297952

/-!
# A305958: Number of nX5 0..1 arrays with every element unequal to 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305958, there is no canonical definition to state claims against.
-/

/-! ## A305958.P5355706428612551063

`A305961(A374005(n+1))`
-/

namespace A305958.P5355706428612551063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (A374005 (n + 1)).toNat

end

end A305958.P5355706428612551063

/-! ## A305958.P14026641944643011048

`A305961(∑[n+5]+6)`
-/

namespace A305958.P14026641944643011048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A305958.P14026641944643011048

/-!
# A305959: Number of n X 6 0..1 arrays with every element unequal to 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305959, there is no canonical definition to state claims against.
-/

/-! ## A305959.P12450605195233536261

`A305961(A374007(n+1))`
-/

namespace A305959.P12450605195233536261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (A374007 (n + 1)).toNat

end

end A305959.P12450605195233536261

/-!
# A305960: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305960, there is no canonical definition to state claims against.
-/

/-! ## A305960.P16153547039379128062

`A305961(A374008(n+1))`
-/

namespace A305960.P16153547039379128062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (A374008 (n + 1)).toNat

end

end A305960.P16153547039379128062

/-!
# A305961: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305961, there is no canonical definition to state claims against.
-/

/-! ## A305961.P6462502350793944203

`A317222(n+1)-A010894(A003401(n+1))`
-/

namespace A305961.P6462502350793944203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (n + 1) - A010894 ((A003401 (n + 1)).toNat + 21)

end

end A305961.P6462502350793944203

/-! ## A305961.P16765192768407030023

`A317222(n+1)+A016389(A022166(n))`
-/

namespace A305961.P16765192768407030023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (n + 1) + A016389 (A022166 n).toNat

end

end A305961.P16765192768407030023

/-! ## A305961.P15373987644453725317

`A317222(n+1)+A016389(A027336(n))`
-/

namespace A305961.P15373987644453725317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (n + 1) + A016389 (A027336 n).toNat

end

end A305961.P15373987644453725317

/-! ## A305961.P4001917157245688189

`A317222(n+1)+A016389(A176561(n))`
-/

namespace A305961.P4001917157245688189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (n + 1) + A016389 (A176561 n).toNat

end

end A305961.P4001917157245688189

/-! ## A305961.P14078653835559329057

`A317222(n+1)-A101455(A071927(n+1))`
-/

namespace A305961.P14078653835559329057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (n + 1) - A101455 (A071927 (n + 1)).toNat

end

end A305961.P14078653835559329057

/-!
# A305962: Number A(n,k) of length-n restricted growth strings (RGS) with growth <= k and fixed first element; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A305962, there is no canonical definition to state claims against.
-/

/-! ## A305962.P18224156664803573511

`A144150(n)-A144201(A144150(n))`
-/

namespace A305962.P18224156664803573511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 n - A144201 (A144150 n).toNat

end

end A305962.P18224156664803573511

/-! ## A305962.P8581908184126744696

`A144150(n)-A072401(A245397(n))`
-/

namespace A305962.P8581908184126744696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 n - A072401 (A245397 n).toNat

end

end A305962.P8581908184126744696

/-! ## A305962.P5228317954479305278

`A330753(A144150(n)*A164937(n+3))`
-/

namespace A305962.P5228317954479305278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330753 (A144150 n * A164937 (n + 3)).toNat

end

end A305962.P5228317954479305278

/-! ## A305962.P1259986169014308752

`A144150(n)-A212619(A144150(n+1))`
-/

namespace A305962.P1259986169014308752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 n - A212619 (A144150 (n + 1)).toNat

end

end A305962.P1259986169014308752

/-!
# A305963: Number of length-n restricted growth strings (RGS) with growth <= n and fixed first element.

The programs for A305963, there is no canonical definition to state claims against.
-/

/-! ## A305963.P13258161077094450307

`A305962(C(n+n+1, 2)+n)`
-/

namespace A305963.P13258161077094450307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (Nat.choose (n + n + 1) 2 + n)

end

end A305963.P13258161077094450307

/-! ## A305963.P7789467162997182881

`A305962(∑[4*n])`
-/

namespace A305963.P7789467162997182881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A305963.P7789467162997182881

/-!
# A305964: Number of length-n restricted growth strings (RGS) with growth <= four and fixed first element.

The programs for A305964, there is no canonical definition to state claims against.
-/

/-! ## A305964.P709652637033476056

`A305962(∑[n+5]+5)`
-/

namespace A305964.P709652637033476056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A305964.P709652637033476056

/-!
# A305965: Number of length-n restricted growth strings (RGS) with growth <= five and fixed first element.

The programs for A305965, there is no canonical definition to state claims against.
-/

/-! ## A305965.P6197976702347880342

`A305962(eq[6, 1+row(n)-col(n)])`
-/

namespace A305965.P6197976702347880342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305965.P6197976702347880342

/-!
# A305966: Number of length-n restricted growth strings (RGS) with growth <= six and fixed first element.

The programs for A305966, there is no canonical definition to state claims against.
-/

/-! ## A305966.P5016198391079017030

`A305962(eq[3, (row(n)-col(n))/2])`
-/

namespace A305966.P5016198391079017030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A305966.P5016198391079017030

/-!
# A305967: Number of length-n restricted growth strings (RGS) with growth <= seven and fixed first element.

The programs for A305967, there is no canonical definition to state claims against.
-/

/-! ## A305967.P6581311583875955618

`A305962(eq[7, A025581(n)])`
-/

namespace A305967.P6581311583875955618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305967.P6581311583875955618

/-!
# A305968: Number of length-n restricted growth strings (RGS) with growth <= eight and fixed first element.

The programs for A305968, there is no canonical definition to state claims against.
-/

/-! ## A305968.P1970822418503958847

`A305962(eq[7, A116598(n)])`
-/

namespace A305968.P1970822418503958847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305968.P1970822418503958847

/-!
# A305969: Number of length-n restricted growth strings (RGS) with growth <= nine and fixed first element.

The programs for A305969, there is no canonical definition to state claims against.
-/

/-! ## A305969.P5773653409556262289

`A305962(eq[8, A116598(n)])`
-/

namespace A305969.P5773653409556262289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305969.P5773653409556262289

/-!
# A305970: Number of length-n restricted growth strings (RGS) with growth <= ten and fixed first element.

The programs for A305970, there is no canonical definition to state claims against.
-/

/-! ## A305970.P17292902571169528562

`A305962(eq[10, A025581(n)])`
-/

namespace A305970.P17292902571169528562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305970.P17292902571169528562

/-!
# A305971: Antidiagonal sums of A305962.

The programs for A305971, there is no canonical definition to state claims against.
-/

/-! ## A305971.P9752514694240620645

`∑[A289494(∑[n!])]`
-/

namespace A305971.P9752514694240620645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305971.P9752514694240620645

/-! ## A305971.P350387079472560905

`∑[A289494(∑[A000142(n)])]`
-/

namespace A305971.P350387079472560905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305971.P350387079472560905

/-! ## A305971.P10897214699514493314

`∑[A289494(∑[A061602(n)])]`
-/

namespace A305971.P10897214699514493314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305971.P10897214699514493314

/-! ## A305971.P4556945216519197578

`∑[A289494(∑[A154658(n)])]`
-/

namespace A305971.P4556945216519197578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154658 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305971.P4556945216519197578

/-!
# A305973: Filter sequence for the prime signature of 2n-1.

The programs for A305973, there is no canonical definition to state claims against.
-/

/-! ## A305973.P3858533243370320423

`A393258(A101296(Δ[n²]))`
-/

namespace A305973.P3858533243370320423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393258 (A101296 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A305973.P3858533243370320423

/-! ## A305973.P349142435568225336

`A004526(A294337(4*n+2))`
-/

namespace A305973.P349142435568225336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A294337 (4 * n + 2)).toNat

end

end A305973.P349142435568225336

/-! ## A305973.P13540942561810056106

`∏{e}[A321874(2*n+1), #]`
-/

namespace A305973.P13540942561810056106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321874 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A305973.P13540942561810056106

/-! ## A305973.P13947501522510547132

`A368105(Δ[n²]²)`
-/

namespace A305973.P13947501522510547132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368105 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A305973.P13947501522510547132

/-! ## A305973.P13075425238487067576

`A369309(Δ[n²]²)`
-/

namespace A305973.P13075425238487067576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369309 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A305973.P13075425238487067576

/-! ## A305973.P8351151443835164930

`A369310(Δ[n²]²)`
-/

namespace A305973.P8351151443835164930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369310 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A305973.P8351151443835164930

/-! ## A305973.P11371912178530541216

`A295878(A003557((2*n+1)²))`
-/

namespace A305973.P11371912178530541216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295878 (A003557 ((2 * n + 1) ^ 2)).toNat

end

end A305973.P11371912178530541216

/-! ## A305973.P6941391356707790046

`A366763(A350390((2*n+1)²))`
-/

namespace A305973.P6941391356707790046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366763 (A350390 ((2 * n + 1) ^ 2)).toNat

end

end A305973.P6941391356707790046

/-!
# A305975: Lexicographically earliest infinite sequence such that a(i) = a(j) => A305974(i) = A305974(j), for all i, j >= 1, where A305974(1) = 1; and for n > 1, if n = p^k for some prime p and exponent k >= 1, then A305974(n) = -k, otherwise A305974(n) is the position of n in A361102, numbers that are not prime powers.

The programs for A305975, there is no canonical definition to state claims against.
-/

/-! ## A305975.P12153321283096399060

`A318887(lt[A057977(n), A293476(n)])`
-/

namespace A305975.P12153321283096399060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318887 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A305975.P12153321283096399060

/-! ## A305975.P8967085673677485337

`A318887(n+1)`
-/

namespace A305975.P8967085673677485337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318887 (n + 1)

end

end A305975.P8967085673677485337

/-!
# A305976: a(1) = 1, and for n > 1, if n is a prime power, p^k with k >= 1, a(n) = 2, otherwise a(n) is one more than the position of n in A361102, numbers that are not prime powers.

The programs for A305976, there is no canonical definition to state claims against.
-/

/-! ## A305976.P272337629968225389

`A085970(A290480(n+1))+A040000(n)`
-/

namespace A305976.P272337629968225389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085970 (A290480 (n + 1)).toNat + A040000 n

end

end A305976.P272337629968225389

/-! ## A305976.P16373989778562391371

`A305974(A290480(n+1))+A057427(n)`
-/

namespace A305976.P16373989778562391371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (A290480 (n + 1)).toNat + A057427 n

end

end A305976.P16373989778562391371

/-! ## A305976.P12132576607782111734

`A305974(A290480(n+1))+A178334(n)`
-/

namespace A305976.P12132576607782111734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (A290480 (n + 1)).toNat + A178334 n

end

end A305976.P12132576607782111734

/-! ## A305976.P15968841140136230735

`A305974(A290480(n+1))+char[A007318(n)]`
-/

namespace A305976.P15968841140136230735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (A290480 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A305976.P15968841140136230735

/-! ## A305976.P1492096567110133359

`A067003(A290480(n+1))+A001221(n+1)`
-/

namespace A305976.P1492096567110133359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067003 (A290480 (n + 1)).toNat + A001221 (n + 1)

end

end A305976.P1492096567110133359

/-!
# A305978: Filter sequence combining prime signatures of n and 2n+1.

The programs for A305978, there is no canonical definition to state claims against.
-/

/-! ## A305978.P9025822988073024753

`gcd(A106222(A305982(n+1)), A305985(n+1))`
-/

namespace A305978.P9025822988073024753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106222 (A305982 (n + 1)).toNat) (A305985 (n + 1))

end

end A305978.P9025822988073024753

/-! ## A305978.P14859307012231485060

`gcd(A036647(A244120(n)), A305985(n+1))`
-/

namespace A305978.P14859307012231485060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036647 (A244120 n).toNat) (A305985 (n + 1))

end

end A305978.P14859307012231485060

/-! ## A305978.P3669555352529718139

`A305985(n+1)/A181819(A351241(n+1))`
-/

namespace A305978.P3669555352529718139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305985 (n + 1) : ℚ) / (A181819 (A351241 (n + 1)).toNat : ℚ)

end

end A305978.P3669555352529718139

/-! ## A305978.P5977311099614494249

`A305985(n+1)-A003415(A051390(n+1))`
-/

namespace A305978.P5977311099614494249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305985 (n + 1) - A003415 (A051390 (n + 1)).toNat

end

end A305978.P5977311099614494249

/-! ## A305978.P12627320311058814038

`A305985(ceil(A151987(n)/A159721(n+3))+n)`
-/

namespace A305978.P12627320311058814038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305985 (⌈(A151987 n : ℚ) / (A159721 (n + 3) : ℚ)⌉ + (n : ℤ)).toNat

end

end A305978.P12627320311058814038

/-!
# A305979: Filter sequence for a(Fermi-Dirac primes) = constant sequences.

The programs for A305979, there is no canonical definition to state claims against.
-/

/-! ## A305979.P12069040481075196869

`A334868(n+1)`
-/

namespace A305979.P12069040481075196869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334868 (n + 1)

end

end A305979.P12069040481075196869

/-! ## A305979.P18135391302082103147

`A081743(A283015(n))`
-/

namespace A305979.P18135391302082103147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081743 (A283015 n).toNat

end

end A305979.P18135391302082103147

/-! ## A305979.P13285946687446650869

`A062843(A225124(n+1))`
-/

namespace A305979.P13285946687446650869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062843 (A225124 (n + 1)).toNat

end

end A305979.P13285946687446650869

/-! ## A305979.P5938350751263917742

`A369307(A018197(n))`
-/

namespace A305979.P5938350751263917742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369307 (A018197 n).toNat

end

end A305979.P5938350751263917742

/-! ## A305979.P11296838200332659848

`A073093(A363001(n))`
-/

namespace A305979.P11296838200332659848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A363001 n).toNat

end

end A305979.P11296838200332659848

/-!
# A305980: Filter sequence for a(Squarefree numbers > 1) = constant sequences.

The programs for A305980, there is no canonical definition to state claims against.
-/

/-! ## A305980.P12624729115508165757

`A158416(A243352(n+1))%(n+1)+1`
-/

namespace A305980.P12624729115508165757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158416 (A243352 (n + 1)).toNat) (n + 1 : ℤ) + 1

end

end A305980.P12624729115508165757

/-! ## A305980.P942791546795050853

`A158416(A243352(1+n))+A057427(n)`
-/

namespace A305980.P942791546795050853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A243352 (1 + n)).toNat + A057427 n

end

end A305980.P942791546795050853

/-! ## A305980.P15162062537066998619

`A158416(A243352(1+n))-A057428(n)`
-/

namespace A305980.P15162062537066998619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A243352 (1 + n)).toNat - A057428 n

end

end A305980.P15162062537066998619

/-! ## A305980.P797826529877915328

`A158416(A243352(n+1))+log2(A040000(n))`
-/

namespace A305980.P797826529877915328
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A158416 (A243352 (n + 1)).toNat : ℝ) + Real.logb 2 (A040000 n : ℝ)

end

end A305980.P797826529877915328

/-! ## A305980.P6025909960649062050

`A158416(A243352(n+1))+1-A000007(n)`
-/

namespace A305980.P6025909960649062050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A243352 (n + 1)).toNat + (1 - A000007 n)

end

end A305980.P6025909960649062050

/-! ## A305980.P13002172554956638265

`A158416(A243352(n+1))+2-A054977(n)`
-/

namespace A305980.P13002172554956638265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A243352 (n + 1)).toNat + (2 - A054977 n)

end

end A305980.P13002172554956638265

/-! ## A305980.P15925543083852652807

`A158416(A243352(n+1))+char[A116966(n)]`
-/

namespace A305980.P15925543083852652807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A243352 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A305980.P15925543083852652807

/-! ## A305980.P10086189714664221530

`A158416(A243352(n+1))+A000035(A000040(n+1))`
-/

namespace A305980.P10086189714664221530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A243352 (n + 1)).toNat + A000035 (A000040 (n + 1)).toNat

end

end A305980.P10086189714664221530

/-!
# A305981: Expansion of e.g.f. 1/(1 + LambertW(log(1 - x))).

The programs for A305981, there is no canonical definition to state claims against.
-/

/-! ## A305981.P17608524823285948231

`A032188(n+1)-A352129(A276175(n))`
-/

namespace A305981.P17608524823285948231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032188 (n + 1) - A352129 (A276175 n).toNat

end

end A305981.P17608524823285948231

/-!
# A305982: a(n) = Product_{d|n, d<n} prime(A305793(1+d)-1), where A305973(k) records the prime signature of 2k-1.

The programs for A305982, there is no canonical definition to state claims against.
-/

/-! ## A305982.P6488125010717136158

`A000005(A300834(n+1))`
-/

namespace A305982.P6488125010717136158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A300834 (n + 1)).toNat

end

end A305982.P6488125010717136158

/-! ## A305982.P9148220220287359278

`A328524(A002033(n)%A121964(n))`
-/

namespace A305982.P9148220220287359278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328524 (Int.tmod (A002033 n) (A121964 (n + 30))).toNat

end

end A305982.P9148220220287359278

/-!
# A305983: Filter sequence combining from all proper divisors d of n, the prime signature of 2d+1.

The programs for A305983, there is no canonical definition to state claims against.
-/

/-! ## A305983.P3531472867342904271

`A000267(A294928(A086328(n+1)))`
-/

namespace A305983.P3531472867342904271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A294928 (A086328 (n + 1)).toNat).toNat

end

end A305983.P3531472867342904271

/-! ## A305983.P5476689618924320498

`A237433(n+1)+A210717(A098743(n))`
-/

namespace A305983.P5476689618924320498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237433 (n + 1) + A210717 (A098743 n).toNat

end

end A305983.P5476689618924320498

/-! ## A305983.P8342874617986415373

`A285007(A322272(n+2))+A000005(n+1)`
-/

namespace A305983.P8342874617986415373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (A322272 (n + 2)).toNat + A000005 (n + 1)

end

end A305983.P8342874617986415373

/-! ## A305983.P11794914150877114110

`A246277(n+1)+A010815(A036647(A026741(n)))`
-/

namespace A305983.P11794914150877114110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (n + 1) + A010815 (A036647 (A026741 n).toNat).toNat

end

end A305983.P11794914150877114110

/-! ## A305983.P11437370232505523350

`A237433(n+1)+A225633(A351241(n+1))`
-/

namespace A305983.P11437370232505523350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237433 (n + 1) + A225633 (A351241 (n + 1)).toNat

end

end A305983.P11437370232505523350

/-!
# A305985: Filter sequence combining from all divisors d > 1 of n, the prime signature of 2d+1.

The programs for A305985, there is no canonical definition to state claims against.
-/

/-! ## A305985.P13432559823018679986

`A046951(A370647(3*(n+1)))*A305978(n+1)`
-/

namespace A305985.P13432559823018679986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A370647 (3 * (n + 1))).toNat * A305978 (n + 1)

end

end A305985.P13432559823018679986

/-! ## A305985.P6012424003472115397

`A172119(A369458(n))*A305978(n+1)`
-/

namespace A305985.P6012424003472115397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172119 (A369458 n).toNat * A305978 (n + 1)

end

end A305985.P6012424003472115397

/-! ## A305985.P8264689693700518248

`A063775(A165675(2*(n+1)))*A305978(n+1)`
-/

namespace A305985.P8264689693700518248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063775 (A165675 (2 * (n + 1))).toNat * A305978 (n + 1)

end

end A305985.P8264689693700518248

/-! ## A305985.P12787340954513722176

`A201198(A201198(n))*A305978(n+1)`
-/

namespace A305985.P12787340954513722176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201198 (A201198 n).toNat * A305978 (n + 1)

end

end A305985.P12787340954513722176

/-! ## A305985.P14387011335599507865

`A181819(A351241(n+1))*A305978(n+1)`
-/

namespace A305985.P14387011335599507865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A351241 (n + 1)).toNat * A305978 (n + 1)

end

end A305985.P14387011335599507865

/-!
# A305986: Expansion of e.g.f. Product_{k>=1} 1/(1 - (exp(x) - 1)^k/k).

The programs for A305986, there is no canonical definition to state claims against.
-/

/-! ## A305986.P5745480273458106525

`A049533(3*n/2*a(n-1)+1)` with `a(0)=1, a(1)=1`
-/

namespace A305986.P5745480273458106525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A049533 (SequenceMachineLib.roundAway ((3 * n : ℚ) / 2 * (a (n - 1) : ℚ) + 1)).toNat

end

end A305986.P5745480273458106525

/-! ## A305986.P739176817359826996

`A004525(A352646(n))`
-/

namespace A305986.P739176817359826996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A352646 n).toNat

end

end A305986.P739176817359826996

/-!
# A305987: Expansion of e.g.f. Product_{k>=1} (1 + (exp(x) - 1)^k/k).

The programs for A305987, there is no canonical definition to state claims against.
-/

/-! ## A305987.P8847799649271747598

`n*A066657(n²*a(n-1))` with `a(0)=1`
-/

namespace A305987.P8847799649271747598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A066657 ((n ^ 2 : ℤ) * a (n - 1)).toNat

end

end A305987.P8847799649271747598

/-! ## A305987.P6860965154068823111

`A342750(A148405(n))`
-/

namespace A305987.P6860965154068823111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342750 (A148405 n).toNat

end

end A305987.P6860965154068823111

/-!
# A305988: Expansion of e.g.f. 1/(1 + log(2 - exp(x))).

The programs for A305988, there is no canonical definition to state claims against.
-/

/-! ## A305988.P9993923917913563321

`A081166(A081163(n))+A002866(n)`
-/

namespace A305988.P9993923917913563321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081166 (A081163 n).toNat + A002866 n

end

end A305988.P9993923917913563321

/-! ## A305988.P6554658664730233380

`A219503(n)+A051953(A001147(n))`
-/

namespace A305988.P6554658664730233380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219503 n + A051953 (A001147 n).toNat

end

end A305988.P6554658664730233380

/-!
# A305989: Numbers in binary reversed.

The programs for A305989, the canonical program `A305989.P15521024914226202803` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305989 has offset 0).

The definition of A305989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305989.P17307009205118459230

`A004086(A007088(n))`
-/

namespace A305989.P17307009205118459230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A007088 n).toNat

end

end A305989.P17307009205118459230

namespace A305989

/-- `A004086(A007088(n))` -/
def P17307009205118459230.Spec : Prop :=
  ∀ n, P17307009205118459230.a n = A305989 n

end A305989

/-! ## A305989.P15521024914226202803

`A007088(A030101(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A305989

/-- `A007088(A030101(n))` -/
def P15521024914226202803.Spec : Prop :=
  ∀ n, P15521024914226202803.a n = A305989 n

theorem P15521024914226202803.correct : P15521024914226202803.Spec := by
  intro n
  simp only [A305989]

end A305989

/-! ## A305989.P11036383081433790688

`A014550(A378299(n))`
-/

namespace A305989.P11036383081433790688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014550 (A378299 n).toNat

end

end A305989.P11036383081433790688

namespace A305989

/-- `A014550(A378299(n))` -/
def P11036383081433790688.Spec : Prop :=
  ∀ n, P11036383081433790688.a n = A305989 n

end A305989

/-! ## A305989.P10557874352946146113

`A305877(A005836(n+1))`
-/

namespace A305989.P10557874352946146113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 (A005836 (n + 1)).toNat

end

end A305989.P10557874352946146113

namespace A305989

/-- `A305877(A005836(n+1))` -/
def P10557874352946146113.Spec : Prop :=
  ∀ n, P10557874352946146113.a n = A305989 n

end A305989

/-! ## A305989.P16961054164864649192

`A007089(A137305(A005823(n+1)))`
-/

namespace A305989.P16961054164864649192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A137305 (A005823 (n + 1)).toNat).toNat

end

end A305989.P16961054164864649192

namespace A305989

/-- `A007089(A137305(A005823(n+1)))` -/
def P16961054164864649192.Spec : Prop :=
  ∀ n, P16961054164864649192.a n = A305989 n

end A305989

/-!
# A305990: Expansion of e.g.f.: (1+x) / (exp(-x) - x).

The programs for A305990, there is no canonical definition to state claims against.
-/

/-! ## A305990.P196026453412440304

`(-1)^n*A009444(n+1)`
-/

namespace A305990.P196026453412440304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009444 (n + 1)

end

end A305990.P196026453412440304

/-! ## A305990.P17646469951375216801

`abs(A009444(1+n))`
-/

namespace A305990.P17646469951375216801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009444 (1 + n)|

end

end A305990.P17646469951375216801

/-! ## A305990.P8174230458564382635

`A228534(1+∑[n])`
-/

namespace A305990.P8174230458564382635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228534 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A305990.P8174230458564382635

/-! ## A305990.P17881156819819257572

`record[abs(A009444(abs(1-n)))]`
-/

namespace A305990.P17881156819819257572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A009444 |1 - (n : ℤ)|.toNat)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305990.P17881156819819257572

/-! ## A305990.P7955804667026279921

`A009444(n+1)*A033999(n)`
-/

namespace A305990.P7955804667026279921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009444 (n + 1) * A033999 n

end

end A305990.P7955804667026279921

/-! ## A305990.P2949268395159695077

`A072597(n)+lcm(n, A006153(n))`
-/

namespace A305990.P2949268395159695077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072597 n + (Int.lcm (n : ℤ) (A006153 n) : ℤ)

end

end A305990.P2949268395159695077

/-! ## A305990.P2847366444560123393

`record[A010054(n)*A228534(n+1)]`
-/

namespace A305990.P2847366444560123393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A228534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305990.P2847366444560123393

/-! ## A305990.P8250599396422306704

`record[A228534(n+1)/A008459(n)]`
-/

namespace A305990.P8250599396422306704
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228534 (n + 1) : ℚ) / (A008459 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305990.P8250599396422306704

/-! ## A305990.P7934475827407937332

`record[A228534(n+1)/A099594(n)]`
-/

namespace A305990.P7934475827407937332
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228534 (n + 1) : ℚ) / (A099594 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305990.P7934475827407937332

/-! ## A305990.P13350225091711209851

`lcm(A009444(n+1), A033999(n+1))`
-/

namespace A305990.P13350225091711209851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009444 (n + 1)) (A033999 (n + 1))

end

end A305990.P13350225091711209851

/-!
# A305991: Expansion of (1-27*x)^(1/9).

The programs for A305991, there is no canonical definition to state claims against.
-/

/-! ## A305991.P14644674966988351003

`(9-6/n)*a(n-1)-(24/n-18)*a(n-1)` with `a(0)=1`
-/

namespace A305991.P14644674966988351003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (9 - 6 / (n : ℚ)) * a (n - 1) - (24 / (n : ℚ) - 18) * a (n - 1)

end

end A305991.P14644674966988351003

/-!
# A305992: The sequence whose indicator function is I in conjectured formula A300997(n) = 2*n - Sum_{k=1..n} I(k), as long as the conjecture holds.

The programs for A305992, there is no canonical definition to state claims against.
-/

/-! ## A305992.P3353051489049318868

`A004001((4*C(n, 2)+2)^A328929(n))`
-/

namespace A305992.P3353051489049318868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (SequenceMachineLib.roundAway ((4 * Nat.choose n 2 + 2 : ℚ) ^ (A328929 n : ℤ))).toNat

end

end A305992.P3353051489049318868

/-! ## A305992.P1634491091434441654

`A004001(A374639(a(n-1)))` with `a(0)=1`
-/

namespace A305992.P1634491091434441654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004001 (A374639 (a (n - 1)).toNat).toNat

end

end A305992.P1634491091434441654

/-! ## A305992.P16660803791863114866

`A002522(n)-A323885(A004810(2*(n+1)))`
-/

namespace A305992.P16660803791863114866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n - A323885 (A004810 (2 * (n + 1))).toNat

end

end A305992.P16660803791863114866

/-!
# A305993: Base-3 circular primes: Numbers k for which all cyclic shifts of their base-3 expansions give base-3 expansions of prime numbers.

The programs for A305993, there is no canonical definition to state claims against.
-/

/-! ## A305993.P4381666979989381156

`p?[3*a(n-1)+1]` with `a(0)=2, a(1)=5, a(2)=7, a(3)=0`
-/

namespace A305993.P4381666979989381156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 7, 0] fun n f1 =>
  3 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A305993.P4381666979989381156

/-!
# A305994: a(n) = ((A000265(3*n + 1) + 1) mod 4)/2.

The programs for A305994, the canonical program `A305994.P11944070299911287273` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305994 has offset 0).

The definition of A305994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A305994.P3015042728391332441

`(A000265(3*n+1)+1)%4/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A305994.P3015042728391332441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A000265 (3 * n + 1) + 1) 4 : ℚ) / 2

end

end A305994.P3015042728391332441

namespace A305994

/-- `(A000265(3*n+1)+1)%4/2` -/
def P3015042728391332441.Spec : Prop :=
  ∀ n, P3015042728391332441.a n = (A305994 n : ℚ)

end A305994

/-! ## A305994.P11944070299911287273

`A099545(3*n+1)%3`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A305994

/-- `A099545(3*n+1)%3` -/
def P11944070299911287273.Spec : Prop :=
  ∀ n, P11944070299911287273.a n = A305994 n

theorem P11944070299911287273.correct : P11944070299911287273.Spec := by
  intro n
  simp only [A305994]

end A305994

/-! ## A305994.P15190431493346268383

`A371092(n)%2`
-/

namespace A305994.P15190431493346268383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371092 n) 2

end

end A305994.P15190431493346268383

namespace A305994

/-- `A371092(n)%2` -/
def P15190431493346268383.Spec : Prop :=
  ∀ n, P15190431493346268383.a n = A305994 n

end A305994

/-! ## A305994.P8434495600472292787

`A073089(6*n+3)`
-/

namespace A305994.P8434495600472292787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (6 * n + 3)

end

end A305994.P8434495600472292787

namespace A305994

/-- `A073089(6*n+3)` -/
def P8434495600472292787.Spec : Prop :=
  ∀ n, P8434495600472292787.a n = A305994 n

end A305994

/-! ## A305994.P11692913800722380612

`(A103391(3*n+2)+1)%2`
-/

namespace A305994.P11692913800722380612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103391 (3 * n + 2) + 1) 2

end

end A305994.P11692913800722380612

namespace A305994

/-- `(A103391(3*n+2)+1)%2` -/
def P11692913800722380612.Spec : Prop :=
  ∀ n, P11692913800722380612.a n = A305994 n

end A305994

/-! ## A305994.P13991682123057073979

`(A000265(3*n+1)%4)%3`
-/

namespace A305994.P13991682123057073979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A000265 (3 * n + 1)) 4) 3

end

end A305994.P13991682123057073979

namespace A305994

/-- `(A000265(3*n+1)%4)%3` -/
def P13991682123057073979.Spec : Prop :=
  ∀ n, P13991682123057073979.a n = A305994 n

end A305994

/-! ## A305994.P10902696569538259893

`A000035(A371092(n))`
-/

namespace A305994.P10902696569538259893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A371092 n).toNat

end

end A305994.P10902696569538259893

namespace A305994

/-- `A000035(A371092(n))` -/
def P10902696569538259893.Spec : Prop :=
  ∀ n, P10902696569538259893.a n = A305994 n

end A305994

/-! ## A305994.P4408244805517222331

`and(A105234(n), A371092(n))`
-/

namespace A305994.P4408244805517222331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105234 n) (A371092 n)

end

end A305994.P4408244805517222331

namespace A305994

/-- `and(A105234(n), A371092(n))` -/
def P4408244805517222331.Spec : Prop :=
  ∀ n, P4408244805517222331.a n = A305994 n

end A305994

/-! ## A305994.P6919288574319526089

`and(1, A000217(A067745(n+1)))`
-/

namespace A305994.P6919288574319526089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000217 (A067745 (n + 1)).toNat)

end

end A305994.P6919288574319526089

namespace A305994

/-- `and(1, A000217(A067745(n+1)))` -/
def P6919288574319526089.Spec : Prop :=
  ∀ n, P6919288574319526089.a n = A305994 n

end A305994

/-! ## A305994.P9089268136114111880

`A353494(A000265(3*n+1)-1)`
-/

namespace A305994.P9089268136114111880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 (A000265 (3 * n + 1) - 1).toNat

end

end A305994.P9089268136114111880

namespace A305994

/-- `A353494(A000265(3*n+1)-1)` -/
def P9089268136114111880.Spec : Prop :=
  ∀ n, P9089268136114111880.a n = A305994 n

end A305994

/-! ## A305994.P853417103144081388

`A000045(C(2, A336126(3*n+1)))`
-/

namespace A305994.P853417103144081388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (A336126 (3 * n + 1)).toNat)

end

end A305994.P853417103144081388

namespace A305994

/-- `A000045(C(2, A336126(3*n+1)))` -/
def P853417103144081388.Spec : Prop :=
  ∀ n, P853417103144081388.a n = A305994 n

end A305994

/-! ## A305994.P1074322209624843302

`and(1, A000217(A126760(3*n+1)))`
-/

namespace A305994.P1074322209624843302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000217 (A126760 (3 * n + 1)).toNat)

end

end A305994.P1074322209624843302

namespace A305994

/-- `and(1, A000217(A126760(3*n+1)))` -/
def P1074322209624843302.Spec : Prop :=
  ∀ n, P1074322209624843302.a n = A305994 n

end A305994

/-! ## A305994.P12255124424037883707

`A010051(2*A089309(3*n+1))`
-/

namespace A305994.P12255124424037883707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * A089309 (3 * n + 1)).toNat

end

end A305994.P12255124424037883707

namespace A305994

/-- `A010051(2*A089309(3*n+1))` -/
def P12255124424037883707.Spec : Prop :=
  ∀ n, P12255124424037883707.a n = A305994 n

end A305994

/-! ## A305994.P1643504621131154444

`A227188(C(2, A089309(3*n+1)))`
-/

namespace A305994.P1643504621131154444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227188 (Nat.choose 2 (A089309 (3 * n + 1)).toNat)

end

end A305994.P1643504621131154444

namespace A305994

/-- `A227188(C(2, A089309(3*n+1)))` -/
def P1643504621131154444.Spec : Prop :=
  ∀ n, P1643504621131154444.a n = A305994 n

end A305994

/-! ## A305994.P363567021798879419

`A235049(C(2, A089309(3*n+1)))`
-/

namespace A305994.P363567021798879419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (Nat.choose 2 (A089309 (3 * n + 1)).toNat)

end

end A305994.P363567021798879419

namespace A305994

/-- `A235049(C(2, A089309(3*n+1)))` -/
def P363567021798879419.Spec : Prop :=
  ∀ n, P363567021798879419.a n = A305994 n

end A305994

/-! ## A305994.P10278394935795848417

`2-A000034(A173732(2*n))`
-/

namespace A305994.P10278394935795848417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000034 (A173732 (2 * n)).toNat

end

end A305994.P10278394935795848417

namespace A305994

/-- `2-A000034(A173732(2*n))` -/
def P10278394935795848417.Spec : Prop :=
  ∀ n, P10278394935795848417.a n = A305994 n

end A305994

/-! ## A305994.P4762436496378954531

`A106665(xor(n, 2*n))`
-/

namespace A305994.P4762436496378954531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106665 (Nat.xor n (2 * n))

end

end A305994.P4762436496378954531

namespace A305994

/-- `A106665(xor(n, 2*n))` -/
def P4762436496378954531.Spec : Prop :=
  ∀ n, P4762436496378954531.a n = A305994 n

end A305994

/-! ## A305994.P7136299909416854333

`A014577(A048647(n))`
-/

namespace A305994.P7136299909416854333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (A048647 n).toNat

end

end A305994.P7136299909416854333

namespace A305994

/-- `A014577(A048647(n))` -/
def P7136299909416854333.Spec : Prop :=
  ∀ n, P7136299909416854333.a n = A305994 n

end A305994

/-! ## A305994.P17228474031935370535

`A014577(3*n)`
-/

namespace A305994.P17228474031935370535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (3 * n)

end

end A305994.P17228474031935370535

namespace A305994

/-- `A014577(3*n)` -/
def P17228474031935370535.Spec : Prop :=
  ∀ n, P17228474031935370535.a n = A305994 n

end A305994

/-! ## A305994.P7794282278626289837

`1-A014707(3*n)`
-/

namespace A305994.P7794282278626289837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A014707 (3 * n)

end

end A305994.P7794282278626289837

namespace A305994

/-- `1-A014707(3*n)` -/
def P7794282278626289837.Spec : Prop :=
  ∀ n, P7794282278626289837.a n = A305994 n

end A305994

/-!
# A305995: Rectangular array read by downward antidiagonals; row n consists of the numbers m such that n is the denominator of d(k)/d(1) + d(k-1)/d(2) + ... + d(k)/d(1), where d(1),d(2),...,d(k) are the unitary divisors of m.

The programs for A305995, there is no canonical definition to state claims against.
-/

/-! ## A305995.P12969437598783093512

`(1+col(n))*A305996(n+1)`
-/

namespace A305995.P12969437598783093512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + SequenceMachineLib.triCol n : ℤ) * A305996 (n + 1)

end

end A305995.P12969437598783093512

/-! ## A305995.P460502548800841049

`A002260(n+1)*A305996(n+1)`
-/

namespace A305995.P460502548800841049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A305996 (n + 1)

end

end A305995.P460502548800841049

/-! ## A305995.P10429873693168842660

`(A002262(n)+1)*A305996(n+1)`
-/

namespace A305995.P10429873693168842660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A305996 (n + 1)

end

end A305995.P10429873693168842660

/-! ## A305995.P2373693489573406308

`abs(A140756(n+1)*A305996(n+1))`
-/

namespace A305995.P2373693489573406308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 (n + 1) * A305996 (n + 1)|

end

end A305995.P2373693489573406308

/-! ## A305995.P1198848244745994721

`sqrt(A133819(n+1))*A305996(n+1)`
-/

namespace A305995.P1198848244745994721
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) * (A305996 (n + 1) : ℝ)

end

end A305995.P1198848244745994721

/-! ## A305995.P15665445167325910592

`A057555(2*n+1)*A305996(n+1)`
-/

namespace A305995.P15665445167325910592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * n + 1) * A305996 (n + 1)

end

end A305995.P15665445167325910592

/-! ## A305995.P14106024509925121397

`(1-A057944(n)+n)*A305996(n+1)`
-/

namespace A305995.P14106024509925121397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057944 n + (n : ℤ)) * A305996 (n + 1)

end

end A305995.P14106024509925121397

/-! ## A305995.P12907238457599940659

`A000005(A059268(n))*A305996(n+1)`
-/

namespace A305995.P12907238457599940659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A305996 (n + 1)

end

end A305995.P12907238457599940659

/-! ## A305995.P4758817166612708988

`A000120(A099627(n))*A305996(n+1)`
-/

namespace A305995.P4758817166612708988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A099627 n).toNat * A305996 (n + 1)

end

end A305995.P4758817166612708988

/-! ## A305995.P7737075439896887283

`A001511(A276618(n))*A305996(n+1)`
-/

namespace A305995.P7737075439896887283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A276618 n).toNat * A305996 (n + 1)

end

end A305995.P7737075439896887283

/-!
# A305996: Rectangular array, by antidiagonals; row n consists of the numbers R(n)/n, where R(n) is row n of the array at A305995.

The programs for A305996, there is no canonical definition to state claims against.
-/

/-! ## A305996.P15141754332570861440

`A305995(1+n)/A002260(n+1)`
-/

namespace A305996.P15141754332570861440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305995 (1 + n) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A305996.P15141754332570861440

/-! ## A305996.P16037887422125665694

`A305995(n+1)/(A002262(n)+1)`
-/

namespace A305996.P16037887422125665694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305995 (n + 1) : ℚ) / (A002262 n + 1 : ℚ)

end

end A305996.P16037887422125665694

/-! ## A305996.P18072385101793245119

`abs(A305995(n+1)/A140756(n+1))`
-/

namespace A305996.P18072385101793245119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A305995 (n + 1) : ℚ) / (A140756 (n + 1) : ℚ)|

end

end A305996.P18072385101793245119

/-! ## A305996.P696567666964326415

`A305995(n+1)/sqrt(A133819(n+1))`
-/

namespace A305996.P696567666964326415
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A305995 (n + 1) : ℝ) / Real.sqrt (A133819 (n + 1) : ℝ)

end

end A305996.P696567666964326415

/-! ## A305996.P11861287234513030611

`A305995(n+1)/A057555(2*n+1)`
-/

namespace A305996.P11861287234513030611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305995 (n + 1) : ℚ) / (A057555 (2 * n + 1) : ℚ)

end

end A305996.P11861287234513030611

/-! ## A305996.P17305259895641871868

`A305995(n+1)/A349520(2*n+1)`
-/

namespace A305996.P17305259895641871868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305995 (n + 1) : ℚ) / (A349520 (2 * n + 1) : ℚ)

end

end A305996.P17305259895641871868

/-! ## A305996.P4061052465378484051

`A305995(n+1)/A003602(A054582(n))`
-/

namespace A305996.P4061052465378484051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305995 (n + 1) : ℚ) / (A003602 (A054582 n).toNat : ℚ)

end

end A305996.P4061052465378484051

/-! ## A305996.P4961264090100759964

`A305995(n+1)/A000005(A059268(n))`
-/

namespace A305996.P4961264090100759964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305995 (n + 1) : ℚ) / (A000005 (A059268 n).toNat : ℚ)

end

end A305996.P4961264090100759964

/-! ## A305996.P12851377044707838442

`A305995(n+1)/A000120(A099627(n))`
-/

namespace A305996.P12851377044707838442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305995 (n + 1) : ℚ) / (A000120 (A099627 n).toNat : ℚ)

end

end A305996.P12851377044707838442

/-! ## A305996.P5537653797170453306

`A305995(n+1)/A001511(A276618(n))`
-/

namespace A305996.P5537653797170453306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305995 (n + 1) : ℚ) / (A001511 (A276618 n).toNat : ℚ)

end

end A305996.P5537653797170453306

/-!
# A305998: Let K(n) = integral(t=-1,1, t^(2n)*(1-t^2)^(2n)/(1+it)^(3n+1) dt) and write K(n) = d(n)*Pi - b(n)/a(n) where a(n), b(n), d(n) are positive integers; sequence gives a(n).

The programs for A305998, there is no canonical definition to state claims against.
-/

/-! ## A305998.P1315002650310819816

`A000265(C(A000217(2*n+3), ceil(n/2)))`
-/

namespace A305998.P1315002650310819816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Nat.choose (A000217 (2 * n + 3)).toNat ⌈(n : ℚ) / 2⌉.toNat)

end

end A305998.P1315002650310819816

