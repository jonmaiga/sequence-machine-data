import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
# A364300: a(n) = [x^n] 1/(1 + x) * Legendre_P(n, (1 - x)/(1 + x))^(-2) for n >= 0.

The programs for A364300, there is no canonical definition to state claims against.
-/

/-! ## A364300.P14563045101764176377

`A364298(∑[n+2])`
-/

namespace A364300.P14563045101764176377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364298 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A364300.P14563045101764176377

/-! ## A364300.P11505899167140148025

`record[and(A128132(n+1), A364298(n+1))]`
-/

namespace A364300.P11505899167140148025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A128132 (n + 1)) (A364298 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364300.P11505899167140148025

/-!
# A364301: a(n) = [x^n] 1/(1 + x) * Legendre_P(n, (1 - x)/(1 + x))^(-n) for n >= 0.

The programs for A364301, there is no canonical definition to state claims against.
-/

/-! ## A364301.P14769670290514890128

`A364298(2*(n²+3)-5)`
-/

namespace A364301.P14769670290514890128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364298 (2 * (n ^ 2 + 3) - 5)

end

end A364301.P14769670290514890128

/-!
# A364302: a(n) = [x^n] 1/(1 + x) * Legendre_P(n, (1 - x)/(1 + x))^(-n-1) for n >= 0.

The programs for A364302, there is no canonical definition to state claims against.
-/

/-! ## A364302.P9797618285174988239

`A364298((n+1)²+n²)`
-/

namespace A364302.P9797618285174988239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364298 ((n + 1) ^ 2 + n ^ 2)

end

end A364302.P9797618285174988239

/-!
# A364305: a(n) = (8*n)!*(5*n)!*(3*n)! / ( (6*n)!*(4*n)!^2*n!^2 ).

The programs for A364305, there is no canonical definition to state claims against.
-/

/-! ## A364305.P374939516415009892

`A001449(n)*A211421(n)`
-/

namespace A364305.P374939516415009892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001449 n * A211421 n

end

end A364305.P374939516415009892

/-!
# A364306: Number of free asymmetrical polyhexes with n cells.

The programs for A364306, there is no canonical definition to state claims against.
-/

/-! ## A364306.P1000883664536890235

`A065710((A068774(n+1)+n+1)*(n+2))`
-/

namespace A364306.P1000883664536890235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065710 ((A068774 (n + 1) + (n + 1 : ℤ)) * (n + 2 : ℤ)).toNat

end

end A364306.P1000883664536890235

/-! ## A364306.P757348067900258700

`A105514(xor(A109153(n), A109155(n)))`
-/

namespace A364306.P757348067900258700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105514 (Int.xor (A109153 n) (A109155 n)).toNat

end

end A364306.P757348067900258700

/-! ## A364306.P9232365664723092595

`A105519(xor(A002413(n), A349427(n)))`
-/

namespace A364306.P9232365664723092595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105519 (Int.xor (A002413 n) (A349427 n)).toNat

end

end A364306.P9232365664723092595

/-!
# A364307: Numbers k such that k, k+1 and k+2 have exactly 2 distinct prime factors.

The programs for A364307, the canonical program `A364307.P8166646294760291665` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364307 has offset 1).

The definition of A364307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364307.P8166646294760291665

`∩[A006073(n+1), A074851(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A364307

/-- `∩[A006073(n+1), A074851(n+1)]` -/
def P8166646294760291665.Spec : Prop :=
  ∀ n, (P8166646294760291665.a n : ℤ) = A364307 (n + 1)

theorem P8166646294760291665.correct : P8166646294760291665.Spec := by
  intro n
  simp only [A364307, Nat.add_sub_cancel]

end A364307

/-! ## A364307.P16629420111361207124

`∩[A074851(n+1), A207006(n+1)]`
-/

namespace A364307.P16629420111361207124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364307.P16629420111361207124

namespace A364307

/-- `∩[A074851(n+1), A207006(n+1)]` -/
def P16629420111361207124.Spec : Prop :=
  ∀ n, (P16629420111361207124.a n : ℤ) = A364307 (n + 1)

end A364307

/-! ## A364307.P1346538304204937562

`∩[A063464(n+1), A074851(n+1)]`
-/

namespace A364307.P1346538304204937562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364307.P1346538304204937562

namespace A364307

/-- `∩[A063464(n+1), A074851(n+1)]` -/
def P1346538304204937562.Spec : Prop :=
  ∀ n, (P1346538304204937562.a n : ℤ) = A364307 (n + 1)

end A364307

/-! ## A364307.P11872406561417960213

`∩[A006073(n+1), A007774(n+1)]`
-/

namespace A364307.P11872406561417960213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364307.P11872406561417960213

namespace A364307

/-- `∩[A006073(n+1), A007774(n+1)]` -/
def P11872406561417960213.Spec : Prop :=
  ∀ n, (P11872406561417960213.a n : ℤ) = A364307 (n + 1)

end A364307

/-! ## A364307.P14639832142794206157

`∩[A006073(n+1), A030231(n+1)]`
-/

namespace A364307.P14639832142794206157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364307.P14639832142794206157

namespace A364307

/-- `∩[A006073(n+1), A030231(n+1)]` -/
def P14639832142794206157.Spec : Prop :=
  ∀ n, (P14639832142794206157.a n : ℤ) = A364307 (n + 1)

end A364307

/-! ## A364307.P8914590848412742278

`filter[A006073(n+1), A215480(#)]`
-/

namespace A364307.P8914590848412742278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A364307.P8914590848412742278

namespace A364307

/-- `filter[A006073(n+1), A215480(#)]` -/
def P8914590848412742278.Spec : Prop :=
  ∀ n, P8914590848412742278.a n = A364307 (n + 1)

end A364307

/-! ## A364307.P2244883536236906854

`∩[A006073(n+1), A089017(n+1)]`
-/

namespace A364307.P2244883536236906854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364307.P2244883536236906854

namespace A364307

/-- `∩[A006073(n+1), A089017(n+1)]` -/
def P2244883536236906854.Spec : Prop :=
  ∀ n, (P2244883536236906854.a n : ℤ) = A364307 (n + 1)

end A364307

/-!
# A364308: Numbers k such that k, k+1 and k+2 have exactly 3 distinct prime factors.

The programs for A364308, the canonical program `A364308.P6684160361608899668` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364308 has offset 1).

The definition of A364308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3762 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364308.P6684160361608899668

`∩[A006073(n+1), A140077(n+1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A364308

/-- `∩[A006073(n+1), A140077(n+1)]` -/
def P6684160361608899668.Spec : Prop :=
  ∀ n, (P6684160361608899668.a n : ℤ) = A364308 (n + 1)

theorem P6684160361608899668.correct : P6684160361608899668.Spec := by
  intro n
  simp only [A364308, Nat.add_sub_cancel]

end A364308

/-! ## A364308.P17640574156784613916

`∩[A140077(n+1)-1, A140077(n+5)]`
-/

namespace A364308.P17640574156784613916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140077 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140077 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364308.P17640574156784613916

namespace A364308

/-- `∩[A140077(n+1)-1, A140077(n+5)]` -/
def P17640574156784613916.Spec : Prop :=
  ∀ n, (P17640574156784613916.a n : ℤ) = A364308 (n + 1)

end A364308

/-! ## A364308.P15799257292683473022

`∩[A140077(n+1), A023443(A140077(n+2))]`
-/

namespace A364308.P15799257292683473022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A140077 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364308.P15799257292683473022

namespace A364308

/-- `∩[A140077(n+1), A023443(A140077(n+2))]` -/
def P15799257292683473022.Spec : Prop :=
  ∀ n, (P15799257292683473022.a n : ℤ) = A364308 (n + 1)

end A364308

/-! ## A364308.P10109698617286574518

`A168626(n+1)+A057428(A342528(n))`
-/

namespace A364308.P10109698617286574518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168626 (n + 1) + A057428 (A342528 n).toNat

end

end A364308.P10109698617286574518

namespace A364308

/-- `A168626(n+1)+A057428(A342528(n))` -/
def P10109698617286574518.Spec : Prop :=
  ∀ n, P10109698617286574518.a n = A364308 (n + 1)

end A364308

/-! ## A364308.P9820936491736829143

`A168626(n+1)+A153881(A231997(n+1))`
-/

namespace A364308.P9820936491736829143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168626 (n + 1) + A153881 (A231997 (n + 1)).toNat

end

end A364308.P9820936491736829143

namespace A364308

/-- `A168626(n+1)+A153881(A231997(n+1))` -/
def P9820936491736829143.Spec : Prop :=
  ∀ n, P9820936491736829143.a n = A364308 (n + 1)

end A364308

/-!
# A364309: Numbers k such that k, k+1 and k+2 have exactly 4 distinct prime factors.

The programs for A364309, there is no canonical definition to state claims against.
-/

/-! ## A364309.P1349937823703723399

`A168628(n+1)-1`
-/

namespace A364309.P1349937823703723399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168628 (n + 1) - 1

end

end A364309.P1349937823703723399

/-! ## A364309.P6797278539582106957

`A260196(n+2)+A168628(n+1)`
-/

namespace A364309.P6797278539582106957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A168628 (n + 1)

end

end A364309.P6797278539582106957

/-! ## A364309.P17436774840379264953

`A302050(A000040(n+1))+A168628(n+1)`
-/

namespace A364309.P17436774840379264953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A000040 (n + 1)).toNat + A168628 (n + 1)

end

end A364309.P17436774840379264953

/-! ## A364309.P5074835472045007334

`A302050(A002144(n+1))+A168628(n+1)`
-/

namespace A364309.P5074835472045007334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A002144 (n + 1)).toNat + A168628 (n + 1)

end

end A364309.P5074835472045007334

/-! ## A364309.P14599257910103399656

`∩[A140078(n+1)-1, A140078(n+1)]`
-/

namespace A364309.P14599257910103399656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140078 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364309.P14599257910103399656

/-!
# A364310: Number T(n,k) of partitions of n into k parts where each block of part i with multiplicity j is marked with a word of length i*j over an n-ary alphabet whose letters appear in alphabetical order and all n letters occur exactly once in the partition; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A364310, there is no canonical definition to state claims against.
-/

/-! ## A364310.P9311409981014022365

`A048993(n)-A067898(A020695(n))`
-/

namespace A364310.P9311409981014022365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n - A067898 (A020695 n).toNat

end

end A364310.P9311409981014022365

/-! ## A364310.P13408685773441143278

`A048993(n)-A316866(A374764(n))`
-/

namespace A364310.P13408685773441143278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n - A316866 (A374764 n).toNat

end

end A364310.P13408685773441143278

/-! ## A364310.P16483411350365243343

`and(A048993(n), A147681(A009766(n)))`
-/

namespace A364310.P16483411350365243343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048993 n) (A147681 (A009766 n).toNat)

end

end A364310.P16483411350365243343

/-! ## A364310.P11061768055148164080

`A048993(n)-A000122(A058959(n+1))`
-/

namespace A364310.P11061768055148164080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n - A000122 (A058959 (n + 1)).toNat

end

end A364310.P11061768055148164080

/-! ## A364310.P4364312974591191343

`A048993(n)-A000122(A219225(n+1))`
-/

namespace A364310.P4364312974591191343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n - A000122 (A219225 (n + 1)).toNat

end

end A364310.P4364312974591191343

/-!
# A364311: Lexicographically earliest infinite sequence of nonnegative integers, {a(n)} for n>=0, such that all lines with equations y = a(n)*x + n are in general position.

The programs for A364311, there is no canonical definition to state claims against.
-/

/-! ## A364311.P7588087893886505325

`A231334(n+1)-1`
-/

namespace A364311.P7588087893886505325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231334 (n + 1) - 1

end

end A364311.P7588087893886505325

/-! ## A364311.P342816838206731908

`A023443(A231334(n+1))`
-/

namespace A364311.P342816838206731908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A231334 (n + 1)).toNat

end

end A364311.P342816838206731908

/-! ## A364311.P18339939429204133741

`A025581(C(A231334(n+1), 2))`
-/

namespace A364311.P18339939429204133741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (Nat.choose (A231334 (n + 1)).toNat 2)

end

end A364311.P18339939429204133741

/-! ## A364311.P9559069920728061033

`A261097(C(A231334(n+1), 2))`
-/

namespace A364311.P9559069920728061033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261097 (Nat.choose (A231334 (n + 1)).toNat 2)

end

end A364311.P9559069920728061033

/-! ## A364311.P13934690522249915782

`A319419(ceil(n/98))+A231334(n+1)`
-/

namespace A364311.P13934690522249915782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319419 ⌈(n : ℚ) / 98⌉.toNat + A231334 (n + 1)

end

end A364311.P13934690522249915782

/-! ## A364311.P9136083529410627337

`A260196(3*n+4)+A231334(n+1)`
-/

namespace A364311.P9136083529410627337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (3 * n + 4) + A231334 (n + 1)

end

end A364311.P9136083529410627337

/-! ## A364311.P8416408804277292295

`A001478(n+1)+A231334(n+1)+n`
-/

namespace A364311.P8416408804277292295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A231334 (n + 1) + (n : ℤ))

end

end A364311.P8416408804277292295

/-! ## A364311.P2886648904713846975

`A326410(A000040(n+1))+A231334(n+1)`
-/

namespace A364311.P2886648904713846975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326410 (A000040 (n + 1)).toNat + A231334 (n + 1)

end

end A364311.P2886648904713846975

/-! ## A364311.P13198219668422131749

`A340142(A006512(n+1))+A231334(n+1)`
-/

namespace A364311.P13198219668422131749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340142 (A006512 (n + 1)).toNat + A231334 (n + 1)

end

end A364311.P13198219668422131749

/-!
# A364312: Irregular triangle T read by rows, giving in row n the nonnegative coefficients of polynomials of height n and degree k (of decreasing powers), for k = 1, 2, ..., n-1, used for Cantor's counting of algebraic numbers, written for m = 1, 2, ..., A364313(n), for n >= 2, and for n = 1 the degree is k = 1.

The programs for A364312, there is no canonical definition to state claims against.
-/

/-! ## A364312.P6044800814926727175

`A325195(A144615(n))`
-/

namespace A364312.P6044800814926727175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325195 (A144615 n).toNat

end

end A364312.P6044800814926727175

/-! ## A364312.P10262837524868253717

`A325195(A000203(3*n+2))`
-/

namespace A364312.P10262837524868253717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325195 (A000203 (3 * n + 2)).toNat

end

end A364312.P10262837524868253717

/-! ## A364312.P5817791343121206393

`A325195(∑{d}[A147534(3*(n+1)), #])`
-/

namespace A364312.P5817791343121206393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147534 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325195 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A364312.P5817791343121206393

/-! ## A364312.P11811295972918351278

`A193238(A000040(n+1)*A212804(n))`
-/

namespace A364312.P11811295972918351278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A000040 (n + 1) * A212804 n).toNat

end

end A364312.P11811295972918351278

/-! ## A364312.P10251250800837021899

`A333381(A002113(n+4))-A010052(n)`
-/

namespace A364312.P10251250800837021899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A002113 (n + 4)).toNat - A010052 n

end

end A364312.P10251250800837021899

/-!
# A364313: Length of row n of the irregular triangle A364312.

The programs for A364313, there is no canonical definition to state claims against.
-/

/-! ## A364313.P13538844258705590474

`or(A001787(n), A275310(n))+1`
-/

namespace A364313.P13538844258705590474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001787 n) (A275310 n) + 1

end

end A364313.P13538844258705590474

/-! ## A364313.P3996427251397984974

`A212058(A008667(2*n))+A027750(n+1)`
-/

namespace A364313.P3996427251397984974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212058 (A008667 (2 * n)).toNat + A027750 (n + 1)

end

end A364313.P3996427251397984974

/-! ## A364313.P1691582324632582292

`A140398(A105476(n))-A333382(3*n+4)`
-/

namespace A364313.P1691582324632582292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140398 (A105476 n).toNat - A333382 (3 * n + 4)

end

end A364313.P1691582324632582292

/-!
# A364316: Number of real algebraic numbers of Cantor's height n.

The programs for A364316, there is no canonical definition to state claims against.
-/

/-! ## A364316.P4326726161274223510

`ogf((1-x-3x^2+4x^3)/(1-3x-x^2+6x^3))`
-/

namespace A364316.P4326726161274223510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -3, 4] [1, -3, -1, 6] n

end

end A364316.P4326726161274223510

/-! ## A364316.P14726828367519763010

`(n-1)*a(n-2)+8*(n-2)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A364316.P14726828367519763010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  ((n : ℤ) - 1) * a (n - 2) + 8 * ((n : ℤ) - 2)

end

end A364316.P14726828367519763010

/-! ## A364316.P15955039811914377888

`A070320(A106666(n))`
-/

namespace A364316.P15955039811914377888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070320 (A106666 n).toNat

end

end A364316.P15955039811914377888

/-!
# A364317: Irregular triangle T read by rows: T(n, k) gives the number of permutations of [n] = {1, 2, ..., n} with a cycle of length m = floor(n/2) + k = A138099(n, k), for 1 <= k <= n - floor(n/2) = ceiling(n/2).

The programs for A364317, there is no canonical definition to state claims against.
-/

/-! ## A364317.P4393507485660904865

`A126074(lt[A307419(n), A126074(n+1)])`
-/

namespace A364317.P4393507485660904865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307419 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126074 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A364317.P4393507485660904865

/-!
# A364319: a(n) = (A077446(n) + 1)/2 for n >= 0.

The programs for A364319, the canonical program `A364319.P2477563347350556282` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364319 has offset 0).

The definition of A364319 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364319.P2477563347350556282

`6*a(n-2)-a(n-4)-2` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A364319

/-- `6*a(n-2)-a(n-4)-2` -/
def P2477563347350556282.Spec : Prop :=
  ∀ n, P2477563347350556282.a n = A364319 n

theorem P2477563347350556282.correct : P2477563347350556282.Spec := by
  intro n
  simp only [A364319]

end A364319

/-! ## A364319.P10147985911691965906

`A216134(n)+1-A006452(n)`
-/

namespace A364319.P10147985911691965906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216134 n + (1 - A006452 n)

end

end A364319.P10147985911691965906

namespace A364319

/-- `A216134(n)+1-A006452(n)` -/
def P10147985911691965906.Spec : Prop :=
  ∀ n, P10147985911691965906.a n = A364319 n

end A364319

/-! ## A364319.P9466996289337064288

`∑[A079496(n)]-A216162(2*n)`
-/

namespace A364319.P9466996289337064288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A216162 (2 * n)

end

end A364319.P9466996289337064288

namespace A364319

/-- `∑[A079496(n)]-A216162(2*n)` -/
def P9466996289337064288.Spec : Prop :=
  ∀ n, P9466996289337064288.a n = A364319 n

end A364319

/-! ## A364319.P15707593575197068364

`∑[A079496(n)]-A266504(A042948(n))/2`
-/

namespace A364319.P15707593575197068364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079496 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (A266504 (A042948 n).toNat : ℚ) / 2

end

end A364319.P15707593575197068364

namespace A364319

/-- `∑[A079496(n)]-A266504(A042948(n))/2` -/
def P15707593575197068364.Spec : Prop :=
  ∀ n, P15707593575197068364.a n = (A364319 n : ℚ)

end A364319

/-! ## A364319.P6096018434792342122

`A077442(n)-A124124(n+1)`
-/

namespace A364319.P6096018434792342122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077442 n - A124124 (n + 1)

end

end A364319.P6096018434792342122

namespace A364319

/-- `A077442(n)-A124124(n+1)` -/
def P6096018434792342122.Spec : Prop :=
  ∀ n, P6096018434792342122.a n = A364319 n

end A364319

/-! ## A364319.P17251711985496639788

`A006451(n+1)-A124124(n+1)-A124124(n+1)`
-/

namespace A364319.P17251711985496639788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (n + 1) - A124124 (n + 1) - A124124 (n + 1)

end

end A364319.P17251711985496639788

namespace A364319

/-- `A006451(n+1)-A124124(n+1)-A124124(n+1)` -/
def P17251711985496639788.Spec : Prop :=
  ∀ n, P17251711985496639788.a n = A364319 n

end A364319

/-! ## A364319.P7003621287717093674

`A154144(n+1)-(A006451(n+1)+A006451(n))`
-/

namespace A364319.P7003621287717093674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154144 (n + 1) - (A006451 (n + 1) + A006451 n)

end

end A364319.P7003621287717093674

namespace A364319

/-- `A154144(n+1)-(A006451(n+1)+A006451(n))` -/
def P7003621287717093674.Spec : Prop :=
  ∀ n, P7003621287717093674.a n = A364319 n

end A364319

/-! ## A364319.P321304622855133450

`A154154(n+1)-(A154141(n+1)+A006451(n+1))`
-/

namespace A364319.P321304622855133450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154154 (n + 1) - (A154141 (n + 1) + A006451 (n + 1))

end

end A364319.P321304622855133450

namespace A364319

/-- `A154154(n+1)-(A154141(n+1)+A006451(n+1))` -/
def P321304622855133450.Spec : Prop :=
  ∀ n, P321304622855133450.a n = A364319 n

end A364319

/-!
# A364322: Number of partitions of 2n with largest part n where each block of part i with multiplicity j is marked with a word of length i*j over a (2n)-ary alphabet whose letters appear in alphabetical order and all 2n letters occur exactly once in the partition.

The programs for A364322, there is no canonical definition to state claims against.
-/

/-! ## A364322.P9401916689473542601

`A364285(∑[4*n])`
-/

namespace A364322.P9401916689473542601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364285 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A364322.P9401916689473542601

/-! ## A364322.P5733880185921632693

`A004273(A327904(n+1)-A211647(n))`
-/

namespace A364322.P5733880185921632693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A327904 (n + 1) - A211647 n).toNat

end

end A364322.P5733880185921632693

/-!
# A364323: Number of partitions of 2n into n parts where each block of part i with multiplicity j is marked with a word of length i*j over a (2n)-ary alphabet whose letters appear in alphabetical order and all 2n letters occur exactly once in the partition.

The programs for A364323, there is no canonical definition to state claims against.
-/

/-! ## A364323.P17356502498751558886

`A364310(∑[4*n])`
-/

namespace A364323.P17356502498751558886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364310 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A364323.P17356502498751558886

/-!
# A364324: a(n) = n!*tribonacci(n+2).

The programs for A364324, the canonical program `A364324.P2265542604978520711` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364324 has offset 0).

The definition of A364324 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364324.P2265542604978520711

`A000142(n)*A000073(n+2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A364324

/-- `A000142(n)*A000073(n+2)` -/
def P2265542604978520711.Spec : Prop :=
  ∀ n, P2265542604978520711.a n = A364324 n

theorem P2265542604978520711.correct : P2265542604978520711.Spec := by
  intro n
  simp only [A364324]

end A364324

/-! ## A364324.P17299322697077556090

`Δ[A008937(n)]*A000142(n)`
-/

namespace A364324.P17299322697077556090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000142 n

end

end A364324.P17299322697077556090

namespace A364324

/-- `Δ[A008937(n)]*A000142(n)` -/
def P17299322697077556090.Spec : Prop :=
  ∀ n, P17299322697077556090.a n = A364324 n

end A364324

/-! ## A364324.P8740798568914735926

`(A089068(n)+1)*A000142(n)`
-/

namespace A364324.P8740798568914735926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089068 n + 1) * A000142 n

end

end A364324.P8740798568914735926

namespace A364324

/-- `(A089068(n)+1)*A000142(n)` -/
def P8740798568914735926.Spec : Prop :=
  ∀ n, P8740798568914735926.a n = A364324 n

end A364324

/-! ## A364324.P8258489743964780783

`∑[A001590(n+1)]*A000142(n)`
-/

namespace A364324.P8258489743964780783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n

end

end A364324.P8258489743964780783

namespace A364324

/-- `∑[A001590(n+1)]*A000142(n)` -/
def P8258489743964780783.Spec : Prop :=
  ∀ n, P8258489743964780783.a n = A364324 n

end A364324

/-! ## A364324.P7183383102414845683

`Δ[A003422(n)]*A000073(n+2)`
-/

namespace A364324.P7183383102414845683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000073 (n + 2)

end

end A364324.P7183383102414845683

namespace A364324

/-- `Δ[A003422(n)]*A000073(n+2)` -/
def P7183383102414845683.Spec : Prop :=
  ∀ n, P7183383102414845683.a n = A364324 n

end A364324

/-!
# A364325: Underline the k-th digit of a(n), k being the leftmost digit of a(n). This is the lexicographically earliest sequence of distinct terms > 0 such that the succession of underlined digits is the succession of the sequence's digits themselves.

The programs for A364325, there is no canonical definition to state claims against.
-/

/-! ## A364325.P11546570703780689510

`∩[A082939(n+1), A098645(n+1)]`
-/

namespace A364325.P11546570703780689510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364325.P11546570703780689510

/-! ## A364325.P14843758208021031531

`A007089(eq[A234944(n+1), A289438(n+2)])`
-/

namespace A364325.P14843758208021031531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289438 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A364325.P14843758208021031531

/-!
# A364327: Number of endofunctions on [n] such that the number of elements that are mapped to i is either 0 or a divisor of i.

The programs for A364327, there is no canonical definition to state claims against.
-/

/-! ## A364327.P14512883048810470703

`A118849(A048211(n+1))-A117402(n)`
-/

namespace A364327.P14512883048810470703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118849 (A048211 (n + 1)).toNat - A117402 n

end

end A364327.P14512883048810470703

/-!
# A364329: G.f. satisfies A(x) = (1 + x^3) * (1 + x*A(x)^2).

The programs for A364329, there is no canonical definition to state claims against.
-/

/-! ## A364329.P5298883175998660524

`A023193(A150112(n))`
-/

namespace A364329.P5298883175998660524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A150112 n).toNat

end

end A364329.P5298883175998660524

/-! ## A364329.P1510646044578312768

`A023193(A150113(n))`
-/

namespace A364329.P1510646044578312768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A150113 n).toNat

end

end A364329.P1510646044578312768

/-! ## A364329.P5975413976221815570

`A024417(A149489(n))`
-/

namespace A364329.P5975413976221815570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A149489 n).toNat

end

end A364329.P5975413976221815570

/-!
# A364330: G.f. satisfies A(x) = (1 + x^4) * (1 + x*A(x)^2).

The programs for A364330, there is no canonical definition to state claims against.
-/

/-! ## A364330.P4464153498803168576

`A194698(A194691(n))+A000108(n)`
-/

namespace A364330.P4464153498803168576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A194691 n).toNat + A000108 n

end

end A364330.P4464153498803168576

/-! ## A364330.P14498527447453226921

`A090620(13*A000108(n))`
-/

namespace A364330.P14498527447453226921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 (13 * A000108 n).toNat

end

end A364330.P14498527447453226921

/-! ## A364330.P10254832756245012819

`A110656(A102898(n)+n²)`
-/

namespace A364330.P10254832756245012819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A102898 n + (n ^ 2 : ℤ)).toNat

end

end A364330.P10254832756245012819

/-! ## A364330.P14277171240129086585

`A345913(A271077(n))+A000108(n)`
-/

namespace A364330.P14277171240129086585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345913 (A271077 n).toNat + A000108 n

end

end A364330.P14277171240129086585

/-!
# A364331: G.f. satisfies A(x) = (1 + x*A(x)^2) * (1 + x*A(x)^5).

The programs for A364331, there is no canonical definition to state claims against.
-/

/-! ## A364331.P8148209050361345225

`A005374(A145165(n))+A002275(n)`
-/

namespace A364331.P8148209050361345225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A145165 n).toNat + A002275 n

end

end A364331.P8148209050361345225

/-!
# A364332: a(n) = f(prime(n)), where f(2) = 0 and for an odd prime p, f(p) = max{f(q)+1: q ranges over all prime factors of p-1}.

The programs for A364332, the canonical program `A364332.P12118188046320296518` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364332 has offset 1).

The definition of A364332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364332.P5079384469011345160

`A333870(A241195(n+1))`
-/

namespace A364332.P5079384469011345160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333870 (A241195 (n + 1)).toNat

end

end A364332.P5079384469011345160

namespace A364332

/-- `A333870(A241195(n+1))` -/
def P5079384469011345160.Spec : Prop :=
  ∀ n, P5079384469011345160.a n = A364332 (n + 1)

end A364332

/-! ## A364332.P12118188046320296518

`A333870(A006093(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A364332

/-- `A333870(A006093(n+1))` -/
def P12118188046320296518.Spec : Prop :=
  ∀ n, P12118188046320296518.a n = A364332 (n + 1)

theorem P12118188046320296518.correct : P12118188046320296518.Spec := by
  intro n
  simp only [A364332, Nat.add_sub_cancel]

end A364332

/-! ## A364332.P13088663143437189449

`A333870(A077063(n+1))`
-/

namespace A364332.P13088663143437189449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333870 (A077063 (n + 1)).toNat

end

end A364332.P13088663143437189449

namespace A364332

/-- `A333870(A077063(n+1))` -/
def P13088663143437189449.Spec : Prop :=
  ∀ n, P13088663143437189449.a n = A364332 (n + 1)

end A364332

/-! ## A364332.P4372472846317450702

`A333870(record[A003958(n+1)])`
-/

namespace A364332.P4372472846317450702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333870 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A364332.P4372472846317450702

namespace A364332

/-- `A333870(record[A003958(n+1)])` -/
def P4372472846317450702.Spec : Prop :=
  ∀ n, P4372472846317450702.a n = A364332 (n + 1)

end A364332

/-! ## A364332.P9269650096434150995

`A333870(record[A173557(n+1)])`
-/

namespace A364332.P9269650096434150995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333870 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A364332.P9269650096434150995

namespace A364332

/-- `A333870(record[A173557(n+1)])` -/
def P9269650096434150995.Spec : Prop :=
  ∀ n, P9269650096434150995.a n = A364332 (n + 1)

end A364332

/-! ## A364332.P10512055974416480696

`A333870(A081728(n+1))`
-/

namespace A364332.P10512055974416480696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333870 (A081728 (n + 1)).toNat

end

end A364332.P10512055974416480696

namespace A364332

/-- `A333870(A081728(n+1))` -/
def P10512055974416480696.Spec : Prop :=
  ∀ n, P10512055974416480696.a n = A364332 (n + 1)

end A364332

/-! ## A364332.P5963681469541493329

`A333870(A279188(n+1))`
-/

namespace A364332.P5963681469541493329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333870 (A279188 (n + 1)).toNat

end

end A364332.P5963681469541493329

namespace A364332

/-- `A333870(A279188(n+1))` -/
def P5963681469541493329.Spec : Prop :=
  ∀ n, P5963681469541493329.a n = A364332 (n + 1)

end A364332

/-!
# A364333: G.f. satisfies A(x) = (1 + x*A(x)^2) * (1 + x*A(x)^6).

The programs for A364333, there is no canonical definition to state claims against.
-/

/-! ## A364333.P12391392301809821727

`A219361(A103885(n))-A048881(n)`
-/

namespace A364333.P12391392301809821727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219361 (A103885 n).toNat - A048881 n

end

end A364333.P12391392301809821727

/-!
# A364334: a(2) = 0; a(n) = a(n-1) + 1 if n is an odd prime; otherwise a(n) = max{a(k) : k is divisor of n, 1 < k < n}.

The programs for A364334, the canonical program `A364334.P7053385915572530638` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364334 has offset 2).

The definition of A364334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364334.P7053385915572530638

`A333870(n+2)-1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A364334

/-- `A333870(n+2)-1` -/
def P7053385915572530638.Spec : Prop :=
  ∀ n, P7053385915572530638.a n = A364334 (n + 2)

theorem P7053385915572530638.correct : P7053385915572530638.Spec := by
  intro n
  simp only [A364334, Nat.add_sub_cancel]

end A364334

/-! ## A364334.P13129695865235825271

`A083647(A061395(n+2))`
-/

namespace A364334.P13129695865235825271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083647 (A061395 (n + 2)).toNat

end

end A364334.P13129695865235825271

namespace A364334

/-- `A083647(A061395(n+2))` -/
def P13129695865235825271.Spec : Prop :=
  ∀ n, P13129695865235825271.a n = A364334 (n + 2)

end A364334

/-! ## A364334.P13586227156090354837

`A333870(A003958(n+2))`
-/

namespace A364334.P13586227156090354837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333870 (A003958 (n + 2)).toNat

end

end A364334.P13586227156090354837

namespace A364334

/-- `A333870(A003958(n+2))` -/
def P13586227156090354837.Spec : Prop :=
  ∀ n, P13586227156090354837.a n = A364334 (n + 2)

end A364334

/-! ## A364334.P4610745014889387586

`A333870(A070777(n+2))`
-/

namespace A364334.P4610745014889387586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333870 (A070777 (n + 2)).toNat

end

end A364334.P4610745014889387586

namespace A364334

/-- `A333870(A070777(n+2))` -/
def P4610745014889387586.Spec : Prop :=
  ∀ n, P4610745014889387586.a n = A364334 (n + 2)

end A364334

/-! ## A364334.P2445109081515919883

`A333870(A173557(n+2))`
-/

namespace A364334.P2445109081515919883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333870 (A173557 (n + 2)).toNat

end

end A364334.P2445109081515919883

namespace A364334

/-- `A333870(A173557(n+2))` -/
def P2445109081515919883.Spec : Prop :=
  ∀ n, P2445109081515919883.a n = A364334 (n + 2)

end A364334

/-! ## A364334.P9069517459412075211

`A333870(A173614(n+2))`
-/

namespace A364334.P9069517459412075211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333870 (A173614 (n + 2)).toNat

end

end A364334.P9069517459412075211

namespace A364334

/-- `A333870(A173614(n+2))` -/
def P9069517459412075211.Spec : Prop :=
  ∀ n, P9069517459412075211.a n = A364334 (n + 2)

end A364334

/-! ## A364334.P3313826444373917800

`A333870(A345046(n+2))`
-/

namespace A364334.P3313826444373917800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333870 (A345046 (n + 2)).toNat

end

end A364334.P3313826444373917800

namespace A364334

/-- `A333870(A345046(n+2))` -/
def P3313826444373917800.Spec : Prop :=
  ∀ n, P3313826444373917800.a n = A364334 (n + 2)

end A364334

/-! ## A364334.P2236293246332661414

`A333870(A299822(n+2)/(n+2))`
-/

namespace A364334.P2236293246332661414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333870 (SequenceMachineLib.roundAway ((A299822 (n + 2) : ℚ) / (n + 2 : ℚ))).toNat

end

end A364334.P2236293246332661414

namespace A364334

/-- `A333870(A299822(n+2)/(n+2))` -/
def P2236293246332661414.Spec : Prop :=
  ∀ n, P2236293246332661414.a n = A364334 (n + 2)

end A364334

/-! ## A364334.P512024655093895414

`A071823(A078479(A006530(n+2)))`
-/

namespace A364334.P512024655093895414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071823 (A078479 (A006530 (n + 2)).toNat).toNat

end

end A364334.P512024655093895414

namespace A364334

/-- `A071823(A078479(A006530(n+2)))` -/
def P512024655093895414.Spec : Prop :=
  ∀ n, P512024655093895414.a n = A364334 (n + 2)

end A364334

/-! ## A364334.P9408912620575984806

`A333870(A167343(n+2))`
-/

namespace A364334.P9408912620575984806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333870 (A167343 (n + 2)).toNat

end

end A364334.P9408912620575984806

namespace A364334

/-- `A333870(A167343(n+2))` -/
def P9408912620575984806.Spec : Prop :=
  ∀ n, P9408912620575984806.a n = A364334 (n + 2)

end A364334

/-! ## A364334.P16196678356144629655

`A333870(A351434(n+2))`
-/

namespace A364334.P16196678356144629655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333870 (A351434 (n + 2)).toNat

end

end A364334.P16196678356144629655

namespace A364334

/-- `A333870(A351434(n+2))` -/
def P16196678356144629655.Spec : Prop :=
  ∀ n, P16196678356144629655.a n = A364334 (n + 2)

end A364334

/-! ## A364334.P12023079952850850160

`A333870(A023900(n+2)²)`
-/

namespace A364334.P12023079952850850160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333870 (A023900 (n + 2) ^ 2).toNat

end

end A364334.P12023079952850850160

namespace A364334

/-- `A333870(A023900(n+2)²)` -/
def P12023079952850850160.Spec : Prop :=
  ∀ n, P12023079952850850160.a n = A364334 (n + 2)

end A364334

/-!
# A364335: G.f. satisfies A(x) = (1 + x*A(x)^3) * (1 + x*A(x)^5).

The programs for A364335, there is no canonical definition to state claims against.
-/

/-! ## A364335.P12434468811637542329

`A037474(A379284(n))`
-/

namespace A364335.P12434468811637542329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A379284 n).toNat

end

end A364335.P12434468811637542329

/-!
# A364336: G.f. satisfies A(x) = (1 + x) * (1 + x*A(x)^3).

The programs for A364336, there is no canonical definition to state claims against.
-/

/-! ## A364336.P1344837295225707459

`∑[A018892(comp[2*(n+1)]!)]`
-/

namespace A364336.P1344837295225707459
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364336.P1344837295225707459

/-!
# A364337: G.f. satisfies A(x) = (1 + x) * (1 + x*A(x)^4).

The programs for A364337, there is no canonical definition to state claims against.
-/

/-! ## A364337.P5556926907735796565

`(n+1)*A077468(n!)`
-/

namespace A364337.P5556926907735796565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A077468 (Nat.factorial n)

end

end A364337.P5556926907735796565

/-!
# A364338: G.f. satisfies A(x) = (1 + x) * (1 + x*A(x)^5).

The programs for A364338, there is no canonical definition to state claims against.
-/

/-! ## A364338.P2796599156744468599

`A065649(∏[n²+1])`
-/

namespace A364338.P2796599156744468599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065649 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A364338.P2796599156744468599

/-!
# A364339: G.f. satisfies A(x) = (1 + x) * (1 + x*A(x)^6).

The programs for A364339, there is no canonical definition to state claims against.
-/

/-! ## A364339.P15796808135000053348

`A039105(A003579(n))+1`
-/

namespace A364339.P15796808135000053348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039105 (A003579 n).toNat + 1

end

end A364339.P15796808135000053348

/-!
# A364340: G.f. satisfies A(x) = (1 + x*A(x)) * (1 + x*A(x)^6).

The programs for A364340, there is no canonical definition to state claims against.
-/

/-! ## A364340.P5929292441334907581

`A004526(Δ[n²]*A124565(n)+1)`
-/

namespace A364340.P5929292441334907581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A124565 n + 1).toNat

end

end A364340.P5929292441334907581

/-!
# A364343: Expansion of Sum_{k>0} k * x^k/(1 + x^k)^3.

The programs for A364343, the canonical program `A364343.P7180893498198076980` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364343 has offset 1).

The definition of A364343 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048272, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364343.P7180893498198076980

`(n+1)/2*(A002129(n+1)+A048272(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A364343

/-- `(n+1)/2*(A002129(n+1)+A048272(n+1))` -/
def P7180893498198076980.Spec : Prop :=
  ∀ n, P7180893498198076980.a n = (A364343 (n + 1) : ℚ)

end A364343

/-! ## A364343.P3896195141050524414

`∑{d}[n+1, A001478(#)*A089594((n+1)/#)]`
-/

namespace A364343.P3896195141050524414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001478 d * A089594 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364343.P3896195141050524414

namespace A364343

/-- `∑{d}[n+1, A001478(#)*A089594((n+1)/#)]` -/
def P3896195141050524414.Spec : Prop :=
  ∀ n, P3896195141050524414.a n = A364343 (n + 1)

end A364343

/-! ## A364343.P3423735662118196063

`∑{d}[n+1, A000010(#)*A320900((n+1)/#)]`
-/

namespace A364343.P3423735662118196063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A320900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364343.P3423735662118196063

namespace A364343

/-- `∑{d}[n+1, A000010(#)*A320900((n+1)/#)]` -/
def P3423735662118196063.Spec : Prop :=
  ∀ n, P3423735662118196063.a n = A364343 (n + 1)

end A364343

/-!
# A364344: Number of endofunctions on [n] such that the number of elements that are mapped to i is a multiple or a divisor of i.

The programs for A364344, there is no canonical definition to state claims against.
-/

/-! ## A364344.P1327655506779217788

`A307667(n^(n+1)+2)`
-/

namespace A364344.P1327655506779217788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307667 (n ^ (n + 1) + 2)

end

end A364344.P1327655506779217788

/-!
# A364345: Number of integer partitions of n without any three parts (a,b,c) (repeats allowed) satisfying a + b = c. A variation of sum-free partitions.

The programs for A364345, there is no canonical definition to state claims against.
-/

/-! ## A364345.P12274783827305002558

`A000041(n)-A363225(n)`
-/

namespace A364345.P12274783827305002558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A363225 n

end

end A364345.P12274783827305002558

/-! ## A364345.P16300102949342620275

`A213598(n)-A363225(n)`
-/

namespace A364345.P16300102949342620275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A363225 n

end

end A364345.P16300102949342620275

/-! ## A364345.P4128903212631339247

`∑[A002865(n)]-A363225(n)`
-/

namespace A364345.P4128903212631339247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A363225 n

end

end A364345.P4128903212631339247

/-! ## A364345.P5944559752645073318

`A000065(n)+1-A363225(n)`
-/

namespace A364345.P5944559752645073318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A363225 n)

end

end A364345.P5944559752645073318

/-! ## A364345.P9902920996990308477

`A035363(2*n)-A363225(n)`
-/

namespace A364345.P9902920996990308477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A363225 n

end

end A364345.P9902920996990308477

/-!
# A364346: Number of strict integer partitions of n such that there is no ordered triple of parts (a,b,c) (repeats allowed) satisfying a + b = c. A variation of sum-free strict partitions.

The programs for A364346, there is no canonical definition to state claims against.
-/

/-! ## A364346.P6275672610528637767

`A000009(n)-A363226(n)`
-/

namespace A364346.P6275672610528637767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A363226 n

end

end A364346.P6275672610528637767

/-! ## A364346.P15752740641827110422

`A111133(n)+1-A363226(n)`
-/

namespace A364346.P15752740641827110422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (1 - A363226 n)

end

end A364346.P15752740641827110422

/-! ## A364346.P3732442648287744113

`ceil(A087135(n)/2)-A363226(n)`
-/

namespace A364346.P3732442648287744113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087135 n : ℚ) / 2⌉ - A363226 n

end

end A364346.P3732442648287744113

/-! ## A364346.P7942387214290370992

`A364916(A000217(n))-A363226(n)`
-/

namespace A364346.P7942387214290370992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364916 (A000217 n).toNat - A363226 n

end

end A364346.P7942387214290370992

/-! ## A364346.P12282356277173629948

`A057428(n)+A052839(n)-A363226(n)`
-/

namespace A364346.P12282356277173629948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A052839 n - A363226 n

end

end A364346.P12282356277173629948

/-! ## A364346.P10437439120360426692

`A000700(n)+A331848(n)-A363226(n)`
-/

namespace A364346.P10437439120360426692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n + (A331848 n - A363226 n)

end

end A364346.P10437439120360426692

/-! ## A364346.P5923213103049826157

`A240855(n)+A240861(n)-A363226(n)`
-/

namespace A364346.P5923213103049826157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240855 n + (A240861 n - A363226 n)

end

end A364346.P5923213103049826157

/-! ## A364346.P17771948562929665941

`A316996(n)+A317239(n)-A363226(n)`
-/

namespace A364346.P17771948562929665941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316996 n + (A317239 n - A363226 n)

end

end A364346.P17771948562929665941

/-! ## A364346.P11264975321035012579

`gcd(A000038(n), A081360(n))-A363226(n)`
-/

namespace A364346.P11264975321035012579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A081360 n) : ℤ) - A363226 n

end

end A364346.P11264975321035012579

/-! ## A364346.P10612213376998509614

`lcm(A020985(n), A081360(n))-A363226(n)`
-/

namespace A364346.P10612213376998509614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A020985 n) (A081360 n) : ℤ) - A363226 n

end

end A364346.P10612213376998509614

/-!
# A364347: Numbers k > 0 such that if prime(a) and prime(b) both divide k, then prime(a+b) does not.

The programs for A364347, there is no canonical definition to state claims against.
-/

/-! ## A364347.P18218581427188519610

`comp[A364348(n+1)-1]+1`
-/

namespace A364347.P18218581427188519610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364348 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A364347.P18218581427188519610

/-! ## A364347.P3372023972432455329

`comp[A364537(n+1)-1]+1`
-/

namespace A364347.P3372023972432455329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364537 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A364347.P3372023972432455329

/-! ## A364347.P13469097328973869242

`comp[A383513(n+1)-1]+1`
-/

namespace A364347.P13469097328973869242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383513 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A364347.P13469097328973869242

/-! ## A364347.P11102768933367651102

`comp[A236861(n)*A364537(n+1)]`
-/

namespace A364347.P11102768933367651102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236861 n * A364537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A364347.P11102768933367651102

/-! ## A364347.P9887573638968008218

`comp[lcm(A382857(n), A383513(n+1))]`
-/

namespace A364347.P9887573638968008218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A382857 n) (A383513 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A364347.P9887573638968008218

/-! ## A364347.P9060438773684240624

`comp[∪[A364537(n+1), A097259(n)]]`
-/

namespace A364347.P9060438773684240624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364537 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097259 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A364347.P9060438773684240624

/-! ## A364347.P14558294386770100763

`∩[A070915(n+1), A320340(n+1)]`
-/

namespace A364347.P14558294386770100763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364347.P14558294386770100763

/-! ## A364347.P18152066641077267424

`∩[A320340(n+1), A364461(n+1)]`
-/

namespace A364347.P18152066641077267424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364347.P18152066641077267424

/-! ## A364347.P5592891045409658910

`comp[∪[A125261(n+1), A383513(n+1)]]`
-/

namespace A364347.P5592891045409658910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125261 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383513 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A364347.P5592891045409658910

/-!
# A364348: Numbers with two possibly equal divisors prime(a) and prime(b) such that prime(a+b) is also a divisor.

The programs for A364348, there is no canonical definition to state claims against.
-/

/-! ## A364348.P868190070937942627

`∪[A364537(n+1), A001546(n)]`
-/

namespace A364348.P868190070937942627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A364348.P868190070937942627

/-! ## A364348.P8801023227199951148

`∪[A364537(n+1), A133767(n)]`
-/

namespace A364348.P8801023227199951148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A364348.P8801023227199951148

/-! ## A364348.P15886695202900410595

`∪[A364537(n+1), A154633(n)]`
-/

namespace A364348.P15886695202900410595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154633 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A364348.P15886695202900410595

/-! ## A364348.P8673014121237424211

`∪[A013590(n+1), A364537(n+1)]`
-/

namespace A364348.P8673014121237424211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A364348.P8673014121237424211

/-! ## A364348.P400145759166084544

`∪[A024198(n+1), A364537(n+1)]`
-/

namespace A364348.P400145759166084544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024198 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A364348.P400145759166084544

/-! ## A364348.P8820403335738217424

`∪[A036798(n+1), A364537(n+1)]`
-/

namespace A364348.P8820403335738217424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A364348.P8820403335738217424

/-! ## A364348.P8894782407173069954

`∪[A044275(n+1), A364537(n+1)]`
-/

namespace A364348.P8894782407173069954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A364348.P8894782407173069954

/-! ## A364348.P10247984327061822253

`∪[A046299(n+1), A364537(n+1)]`
-/

namespace A364348.P10247984327061822253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A364348.P10247984327061822253

/-! ## A364348.P9939182278784219011

`∪[A046301(n+1), A364537(n+1)]`
-/

namespace A364348.P9939182278784219011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A364348.P9939182278784219011

/-! ## A364348.P12796723096264423864

`∪[A046389(n+1), A364537(n+1)]`
-/

namespace A364348.P12796723096264423864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A364348.P12796723096264423864

/-!
# A364349: Number of strict integer partitions of n containing the sum of no subset of the parts.

The programs for A364349, there is no canonical definition to state claims against.
-/

/-! ## A364349.P1207469539348683420

`A000009(n)-A364272(n)`
-/

namespace A364349.P1207469539348683420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A364272 n

end

end A364349.P1207469539348683420

/-! ## A364349.P1672233162253184961

`abs(A081360(n))-A364272(n)`
-/

namespace A364349.P1672233162253184961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A364272 n

end

end A364349.P1672233162253184961

/-! ## A364349.P3308705272524134407

`∑[A087897(n)]-A364272(n)`
-/

namespace A364349.P3308705272524134407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A364272 n

end

end A364349.P3308705272524134407

/-! ## A364349.P11340787981399805670

`A111133(n)+1-A364272(n)`
-/

namespace A364349.P11340787981399805670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (1 - A364272 n)

end

end A364349.P11340787981399805670

/-! ## A364349.P13705872194133178191

`A035457(2*n)-A364272(n)`
-/

namespace A364349.P13705872194133178191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) - A364272 n

end

end A364349.P13705872194133178191

/-! ## A364349.P2511955482220031189

`A172033(2*n)-A364272(n)`
-/

namespace A364349.P2511955482220031189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (2 * n) - A364272 n

end

end A364349.P2511955482220031189

/-! ## A364349.P3527443733899315444

`A240855(n)+A240861(n)-A364272(n)`
-/

namespace A364349.P3527443733899315444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240855 n + (A240861 n - A364272 n)

end

end A364349.P3527443733899315444

/-! ## A364349.P14047773048294203824

`A367220(n)+A367221(n)-A364272(n)`
-/

namespace A364349.P14047773048294203824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367220 n + (A367221 n - A364272 n)

end

end A364349.P14047773048294203824

/-!
# A364350: Number of strict integer partitions of n such that no part can be written as a nonnegative linear combination of the others.

The programs for A364350, there is no canonical definition to state claims against.
-/

/-! ## A364350.P15682075982240900385

`A000009(n)-A364839(n)`
-/

namespace A364350.P15682075982240900385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A364839 n

end

end A364350.P15682075982240900385

/-! ## A364350.P796546190409719636

`∑[A087897(n)]-A364839(n)`
-/

namespace A364350.P796546190409719636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A364839 n

end

end A364350.P796546190409719636

/-! ## A364350.P4752905400526602697

`A054242(A000217(n))-A364839(n)`
-/

namespace A364350.P4752905400526602697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (A000217 n).toNat - A364839 n

end

end A364350.P4752905400526602697

/-! ## A364350.P6047937429242533263

`A316996(n)+A317239(n)-A364839(n)`
-/

namespace A364350.P6047937429242533263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316996 n + (A317239 n - A364839 n)

end

end A364350.P6047937429242533263

/-! ## A364350.P11000670406306152229

`lcm(A020985(n), A081360(n))-A364839(n)`
-/

namespace A364350.P11000670406306152229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A020985 n) (A081360 n) : ℤ) - A364839 n

end

end A364350.P11000670406306152229

/-!
# A364351: Expansion of Sum_{k>0} k^2 * x^k/(1 + x^k)^3.

The programs for A364351, the canonical program `A364351.P8907097505146139643` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364351 has offset 1).

The definition of A364351 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048272, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364351.P8907097505146139643

`(n+1)/2*(A000593(n+1)+(n+1)*A048272(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A364351

/-- `(n+1)/2*(A000593(n+1)+(n+1)*A048272(n+1))` -/
def P8907097505146139643.Spec : Prop :=
  ∀ n, P8907097505146139643.a n = (A364351 (n + 1) : ℚ)

end A364351

/-! ## A364351.P11666477294992422391

`∑{d}[n+1, A007434(#)*A320900((n+1)/#)]`
-/

namespace A364351.P11666477294992422391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A320900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364351.P11666477294992422391

namespace A364351

/-- `∑{d}[n+1, A007434(#)*A320900((n+1)/#)]` -/
def P11666477294992422391.Spec : Prop :=
  ∀ n, P11666477294992422391.a n = A364351 (n + 1)

end A364351

/-! ## A364351.P13537042206036392638

`∑{d}[n+1, A002618(#)*A364343((n+1)/#)]`
-/

namespace A364351.P13537042206036392638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A364343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364351.P13537042206036392638

namespace A364351

/-- `∑{d}[n+1, A002618(#)*A364343((n+1)/#)]` -/
def P13537042206036392638.Spec : Prop :=
  ∀ n, P13537042206036392638.a n = A364351 (n + 1)

end A364351

/-!
# A364352: a(n) is the number of regions into which the plane is divided by n lines parallel to each edge of an equilateral triangle with side n such that the lines extend the parallel edge and divide the other edges into unit segments.

The programs for A364352, the canonical program `A364352.P2790401577086476792` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364352 has offset 1).

The definition of A364352 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364352.P2790401577086476792

`(n+1)*(5*(n+1)+3)/2+3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A364352

/-- `(n+1)*(5*(n+1)+3)/2+3` -/
def P2790401577086476792.Spec : Prop :=
  ∀ n, P2790401577086476792.a n = (A364352 (n + 1) : ℚ)

end A364352

/-! ## A364352.P4047993533728262194

`∑[a(n-1)+5]` with `a(0)=7, a(1)=9`
-/

namespace A364352.P4047993533728262194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 9] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364352.P4047993533728262194

namespace A364352

/-- `∑[a(n-1)+5]` -/
def P4047993533728262194.Spec : Prop :=
  ∀ n, (P4047993533728262194.a n : ℤ) = A364352 (n + 1)

end A364352

/-! ## A364352.P5837599095285170818

`∑[ogf((7-5x+3x^2)/(1-2x+x^2))]`
-/

namespace A364352.P5837599095285170818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -5, 3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364352.P5837599095285170818

namespace A364352

/-- `∑[ogf((7-5x+3x^2)/(1-2x+x^2))]` -/
def P5837599095285170818.Spec : Prop :=
  ∀ n, P5837599095285170818.a n = A364352 (n + 1)

end A364352

/-! ## A364352.P15577420210323882218

`ogf((7-5x+3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A364352.P15577420210323882218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -5, 3] [1, -3, 3, -1] n

end

end A364352.P15577420210323882218

namespace A364352

/-- `ogf((7-5x+3x^2)/(1-3x+3x^2-x^3))` -/
def P15577420210323882218.Spec : Prop :=
  ∀ n, P15577420210323882218.a n = A364352 (n + 1)

end A364352

/-! ## A364352.P6877335769649738570

`floor(5*n+a(n-1)+4)` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A364352.P6877335769649738570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  5 * n + (a (n - 1) + 4)

end

end A364352.P6877335769649738570

namespace A364352

/-- `floor(5*n+a(n-1)+4)` -/
def P6877335769649738570.Spec : Prop :=
  ∀ n, (P6877335769649738570.a n : ℤ) = A364352 (n + 1)

end A364352

/-! ## A364352.P16003547228832529255

`∑[A029629(n²)-(n+1)]`
-/

namespace A364352.P16003547228832529255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029629 (n ^ 2) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364352.P16003547228832529255

namespace A364352

/-- `∑[A029629(n²)-(n+1)]` -/
def P16003547228832529255.Spec : Prop :=
  ∀ n, P16003547228832529255.a n = A364352 (n + 1)

end A364352

/-! ## A364352.P11551164642804854757

`A020719(A302906(n))`
-/

namespace A364352.P11551164642804854757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 (A302906 n).toNat

end

end A364352.P11551164642804854757

namespace A364352

/-- `A020719(A302906(n))` -/
def P11551164642804854757.Spec : Prop :=
  ∀ n, P11551164642804854757.a n = A364352 (n + 1)

end A364352

/-! ## A364352.P24378799880705305

`A009005(A147875(n+1))`
-/

namespace A364352.P24378799880705305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (A147875 (n + 1)).toNat

end

end A364352.P24378799880705305

namespace A364352

/-- `A009005(A147875(n+1))` -/
def P24378799880705305.Spec : Prop :=
  ∀ n, P24378799880705305.a n = A364352 (n + 1)

end A364352

/-! ## A364352.P5962519017427632446

`A009056(A134238(n+2))`
-/

namespace A364352.P5962519017427632446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A134238 (n + 2)).toNat

end

end A364352.P5962519017427632446

namespace A364352

/-- `A009056(A134238(n+2))` -/
def P5962519017427632446.Spec : Prop :=
  ∀ n, P5962519017427632446.a n = A364352 (n + 1)

end A364352

/-!
# A364354: Numbers that can be expressed as the sum of the squares of four Fibonacci numbers.

The programs for A364354, there is no canonical definition to state claims against.
-/

/-! ## A364354.P7364855123348139150

`comp[A364353(n+1)]`
-/

namespace A364354.P7364855123348139150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A364354.P7364855123348139150

/-! ## A364354.P12027555954330756183

`lt[A066099(A378083(n+1)), 4]`
-/

namespace A364354.P12027555954330756183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A378083 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A364354.P12027555954330756183

/-! ## A364354.P748741268352020765

`lt[A154227(n), A376187(n+1)]`
-/

namespace A364354.P748741268352020765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154227 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376187 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A364354.P748741268352020765

/-! ## A364354.P4742975981394780487

`lt[A001935(n), A263602(n+5)]`
-/

namespace A364354.P4742975981394780487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263602 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A364354.P4742975981394780487

/-! ## A364354.P14765396236538715201

`lt[A318557(n)², A263602(n+5)]`
-/

namespace A364354.P14765396236538715201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263602 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A364354.P14765396236538715201

/-!
# A364357: Number of divisors of n of the form 3*k+2 that are at most sqrt(n).

The programs for A364357, there is no canonical definition to state claims against.
-/

/-! ## A364357.P6775308808914619841

`A001222(gcd(A015949(3*(n+1)), A072504(n+1)))`
-/

namespace A364357.P6775308808914619841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A015949 (3 * (n + 1))) (A072504 (n + 1)))

end

end A364357.P6775308808914619841

/-! ## A364357.P8353812205191573636

`A324966(A072504(n+1)^A096811(n))`
-/

namespace A364357.P8353812205191573636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324966 (SequenceMachineLib.roundAway ((A072504 (n + 1) : ℚ) ^ (A096811 n : ℤ))).toNat

end

end A364357.P8353812205191573636

/-! ## A364357.P10334184248473626346

`A321101(A347159(n+1))`
-/

namespace A364357.P10334184248473626346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321101 (A347159 (n + 1)).toNat

end

end A364357.P10334184248473626346

/-! ## A364357.P10218814013494050753

`A098002(n+1)%A305801(A280996(n+4))`
-/

namespace A364357.P10218814013494050753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098002 (n + 1)) (A305801 (A280996 (n + 4)).toNat)

end

end A364357.P10218814013494050753

/-! ## A364357.P12263736916375597012

`A005090(A396079(n+1))`
-/

namespace A364357.P12263736916375597012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (A396079 (n + 1)).toNat

end

end A364357.P12263736916375597012

/-!
# A364358: Number of divisors of n of the form 4*k+1 that are at most sqrt(n).

The programs for A364358, there is no canonical definition to state claims against.
-/

/-! ## A364358.P4304188252002062046

`A069288(n+1)-A364387(n+1)`
-/

namespace A364358.P4304188252002062046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 (n + 1) - A364387 (n + 1)

end

end A364358.P4304188252002062046

/-! ## A364358.P16024205238414591894

`A001227(n+1)-A341594(n+1)-A364387(n+1)`
-/

namespace A364358.P16024205238414591894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A341594 (n + 1) - A364387 (n + 1)

end

end A364358.P16024205238414591894

/-! ## A364358.P7057705554049333855

`A000005(A336158(n+1))-A341594(n+1)-A364387(n+1)`
-/

namespace A364358.P7057705554049333855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A336158 (n + 1)).toNat - A341594 (n + 1) - A364387 (n + 1)

end

end A364358.P7057705554049333855

/-! ## A364358.P15441557088656452523

`A043562(A112765(n+1)*A349530(n+1))`
-/

namespace A364358.P15441557088656452523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A112765 (n + 1) * A349530 (n + 1)).toNat

end

end A364358.P15441557088656452523

/-! ## A364358.P13408771113684138104

`A043562(A349530(n+1)^A112765(n+1))`
-/

namespace A364358.P13408771113684138104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (SequenceMachineLib.roundAway ((A349530 (n + 1) : ℚ) ^ (A112765 (n + 1) : ℤ))).toNat

end

end A364358.P13408771113684138104

/-! ## A364358.P14751201301819003556

`A043562(lcm(A112765(n+1), A349530(n+1)))`
-/

namespace A364358.P14751201301819003556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (Int.lcm (A112765 (n + 1)) (A349530 (n + 1)))

end

end A364358.P14751201301819003556

/-! ## A364358.P9343522168139370413

`gcd(A048766(A157684(n+2)), A250120(3*(n+1)))`
-/

namespace A364358.P9343522168139370413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048766 (A157684 (n + 2)).toNat) (A250120 (3 * (n + 1)))

end

end A364358.P9343522168139370413

/-! ## A364358.P16227269910074260086

`A325032(gcd(A011531(n+1), A144786(n+1)))`
-/

namespace A364358.P16227269910074260086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325032 (Int.gcd (A011531 (n + 1)) (A144786 (n + 1)))

end

end A364358.P16227269910074260086

/-! ## A364358.P10585985155518678470

`∑{e}[gcd(A017545(n), A179832(2*n+3)), #]!`
-/

namespace A364358.P10585985155518678470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017545 n) (A179832 (2 * n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A364358.P10585985155518678470

/-! ## A364358.P11398890907129131740

`A294207(A217581(n+1)%A346447(n+1))`
-/

namespace A364358.P11398890907129131740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294207 (Int.tmod (A217581 (n + 1)) (A346447 (n + 1))).toNat

end

end A364358.P11398890907129131740

/-!
# A364360: a(n) = dpf(n) ^ tpf(n), where dpf(n) is the number of distinct prime factors of n if n >= 2 and otherwise = 0; tpf(n) is the number of all prime factors of n if n >= 2 and otherwise = 0.

The programs for A364360, the canonical program `A364360.P2176297382082199936` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364360 has offset 0).

The definition of A364360 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364360.P2176297382082199936

`∏{e}[n, A001221(n)^#]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A364360

/-- `∏{e}[n, A001221(n)^#]` -/
def P2176297382082199936.Spec : Prop :=
  ∀ n, P2176297382082199936.a n = A364360 n

theorem P2176297382082199936.correct : P2176297382082199936.Spec := by
  intro n
  simp only [A364360]

end A364360

/-! ## A364360.P18241809758854792401

`A001222(∏{p}[n, #])^∑{e}[n, #]`
-/

namespace A364360.P18241809758854792401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), p) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A364360.P18241809758854792401

namespace A364360

/-- `A001222(∏{p}[n, #])^∑{e}[n, #]` -/
def P18241809758854792401.Spec : Prop :=
  ∀ n, P18241809758854792401.a n = A364360 n

end A364360

/-! ## A364360.P3817572584096616893

`A001221(A028310(n))^A001222(A028310(n))`
-/

namespace A364360.P3817572584096616893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (A028310 n).toNat : ℚ) ^ (A001222 (A028310 n).toNat : ℤ)

end

end A364360.P3817572584096616893

namespace A364360

/-- `A001221(A028310(n))^A001222(A028310(n))` -/
def P3817572584096616893.Spec : Prop :=
  ∀ n, P3817572584096616893.a n = (A364360 n : ℚ)

end A364360

/-! ## A364360.P3217936178179183722

`A013609(A001222(∏{d}[n, #]))`
-/

namespace A364360.P3217936178179183722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A001222 (∏ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A364360.P3217936178179183722

namespace A364360

/-- `A013609(A001222(∏{d}[n, #]))` -/
def P3217936178179183722.Spec : Prop :=
  ∀ n, P3217936178179183722.a n = A364360 n

end A364360

/-! ## A364360.P12683015286651127106

`A002487(A046523(∏{d}[n, #]))`
-/

namespace A364360.P12683015286651127106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A046523 (∏ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A364360.P12683015286651127106

namespace A364360

/-- `A002487(A046523(∏{d}[n, #]))` -/
def P12683015286651127106.Spec : Prop :=
  ∀ n, P12683015286651127106.a n = A364360 n

end A364360

/-!
# A364361: Table read by rows. T(n, k) = Sum_{j=0..n-k} k*binomial(k, j)*binomial(n - j, k).

The programs for A364361, there is no canonical definition to state claims against.
-/

/-! ## A364361.P12967177701790032429

`A002262(n)*A008288(n)`
-/

namespace A364361.P12967177701790032429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A008288 n

end

end A364361.P12967177701790032429

/-! ## A364361.P8981009727523917302

`log2(A059268(n))*A008288(n)`
-/

namespace A364361.P8981009727523917302
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 n : ℝ) * (A008288 n : ℝ)

end

end A364361.P8981009727523917302

/-! ## A364361.P13214803804075581567

`A008288(n)*A025668(n+1)`
-/

namespace A364361.P13214803804075581567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n * A025668 (n + 1)

end

end A364361.P13214803804075581567

/-! ## A364361.P6823092043038478942

`A008288(n)*A025675(n+1)`
-/

namespace A364361.P6823092043038478942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n * A025675 (n + 1)

end

end A364361.P6823092043038478942

/-! ## A364361.P9001609990963214337

`(n-A057944(n))*A008288(n)`
-/

namespace A364361.P9001609990963214337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A057944 n) * A008288 n

end

end A364361.P9001609990963214337

/-! ## A364361.P14603641201853705774

`(A002260(n+1)-1)*A008288(n)`
-/

namespace A364361.P14603641201853705774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) - 1) * A008288 n

end

end A364361.P14603641201853705774

/-!
# A364362: Consider all the ways to make sequences of distinct nonnegative integers using all the digits of n, such that no term has leading 0's or appears more than once in the sequence. a(n) is the minimum possible sum of any sequence of n.

The programs for A364362, the canonical program `A364362.P4837481512525781304` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364362 has offset 0).

The definition of A364362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364362.P4837481512525781304

`A331472(or(n, A118759(n)))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A364362

/-- `A331472(or(n, A118759(n)))` -/
def P4837481512525781304.Spec : Prop :=
  ∀ n, P4837481512525781304.a n = A364362 n

theorem P4837481512525781304.correct : P4837481512525781304.Spec := by
  intro n
  simp only [A364362]

end A364362

/-!
# A364366: An irregular triangle read by rows, the 3rd row-symmetric Fibonaccian triangle: T(n,k) is the Whitney number of level k of the (3,n)-th symmetric Fibonaccian lattice (0 <= n, 0 <= k <= 2*n).

The programs for A364366, there is no canonical definition to state claims against.
-/

/-! ## A364366.P8101433116007007895

`A079487(A316670(n+1)%A000047(n))`
-/

namespace A364366.P8101433116007007895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (Int.tmod (A316670 (n + 1)) (A000047 n)).toNat

end

end A364366.P8101433116007007895

/-! ## A364366.P6732947648294014702

`A079487(A161983(n)%A326736(n+1))`
-/

namespace A364366.P6732947648294014702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (Int.tmod (A161983 n) (A326736 (n + 1))).toNat

end

end A364366.P6732947648294014702

/-! ## A364366.P12135370664975498701

`A349797(2*n+5)+A079487(A316670(n+1))`
-/

namespace A364366.P12135370664975498701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349797 (2 * n + 5) + A079487 (A316670 (n + 1)).toNat

end

end A364366.P12135370664975498701

/-! ## A364366.P3662278777415667067

`A123245(A161983(n))`
-/

namespace A364366.P3662278777415667067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123245 (A161983 n).toNat

end

end A364366.P3662278777415667067

/-! ## A364366.P4515261649425278842

`A123245(A316670(n+1))`
-/

namespace A364366.P4515261649425278842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123245 (A316670 (n + 1)).toNat

end

end A364366.P4515261649425278842

/-!
# A364370: Number of chordless cycles (of length > 3) in the complement of the n-hypercube graph.

The programs for A364370, there is no canonical definition to state claims against.
-/

/-! ## A364370.P3164086559069151901

`A129231(A202655(n+1))`
-/

namespace A364370.P3164086559069151901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129231 (A202655 (n + 1)).toNat

end

end A364370.P3164086559069151901

/-! ## A364370.P3571126660273219813

`A048720(A365824(n)+A081138(n))`
-/

namespace A364370.P3571126660273219813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048720 (A365824 n + A081138 n).toNat

end

end A364370.P3571126660273219813

/-!
# A364377: The number of trailing 0's in the representation of n in Jacobsthal greedy base (A265747).

The programs for A364377, the canonical program `A364377.P15685045757092586876` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364377 has offset 1).

The definition of A364377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364377.P15685045757092586876

`val(A265746(n+1), 3)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A364377

/-- `val(A265746(n+1), 3)` -/
def P15685045757092586876.Spec : Prop :=
  ∀ n, (P15685045757092586876.a n : ℤ) = A364377 (n + 1)

theorem P15685045757092586876.correct : P15685045757092586876.Spec := by
  intro n
  simp only [A364377, Nat.add_sub_cancel]

end A364377

/-! ## A364377.P7978211555010722146

`val(A265747(n+1), 5)`
-/

namespace A364377.P7978211555010722146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A265747 (n + 1)).toNat 5

end

end A364377.P7978211555010722146

namespace A364377

/-- `val(A265747(n+1), 5)` -/
def P7978211555010722146.Spec : Prop :=
  ∀ n, (P7978211555010722146.a n : ℤ) = A364377 (n + 1)

end A364377

/-! ## A364377.P11170062867618257658

`A337821(eq[1, A005679(2*(n+2))])`
-/

namespace A364377.P11170062867618257658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005679 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337821 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A364377.P11170062867618257658

namespace A364377

/-- `A337821(eq[1, A005679(2*(n+2))])` -/
def P11170062867618257658.Spec : Prop :=
  ∀ n, P11170062867618257658.a n = A364377 (n + 1)

end A364377

/-! ## A364377.P11221367423956723528

`A007949(A265746(n+1))`
-/

namespace A364377.P11221367423956723528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A265746 (n + 1)).toNat

end

end A364377.P11221367423956723528

namespace A364377

/-- `A007949(A265746(n+1))` -/
def P11221367423956723528.Spec : Prop :=
  ∀ n, P11221367423956723528.a n = A364377 (n + 1)

end A364377

/-!
# A364378: Numbers whose representation in Jacobsthal greedy base (A265747) is palindromic.

The programs for A364378, there is no canonical definition to state claims against.
-/

/-! ## A364378.P4716134451572817429

`eq[A004086(A265747(n)), A265747(n)]`
-/

namespace A364378.P4716134451572817429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A265747 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A364378.P4716134451572817429

/-! ## A364378.P10935053739154354472

`∑[A004526(A176837(2*n+1)-A176837(n+1))]`
-/

namespace A364378.P10935053739154354472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A176837 (2 * n + 1) - A176837 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364378.P10935053739154354472

/-!
# A364380: Numbers k such that k and k+1 are both greedy Jacobsthal-Niven numbers (A364379).

The programs for A364380, there is no canonical definition to state claims against.
-/

/-! ## A364380.P18231697312836933980

`∩[A364379(n+1)-1, A364379(n+1)]`
-/

namespace A364380.P18231697312836933980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364379 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364380.P18231697312836933980

/-!
# A364381: Starts of runs of 3 consecutive integers that are greedy Jacobsthal-Niven numbers (A364379).

The programs for A364381, there is no canonical definition to state claims against.
-/

/-! ## A364381.P10184188189036141577

`∩[A364380(n+1)-1, A364380(n+1)]`
-/

namespace A364381.P10184188189036141577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364380 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364381.P10184188189036141577

/-!
# A364382: Starts of runs of 4 consecutive integers that are greedy Jacobsthal-Niven numbers (A364379).

The programs for A364382, there is no canonical definition to state claims against.
-/

/-! ## A364382.P8528795143660768677

`∩[A364381(n+1)-1, A364381(n+1)]`
-/

namespace A364382.P8528795143660768677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364381 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364382.P8528795143660768677

/-! ## A364382.P13299046029358137863

`∩[A364380(n+1)-2, A364380(n+1)]`
-/

namespace A364382.P13299046029358137863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364380 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364382.P13299046029358137863

/-!
# A364383: Starts of runs of 5 consecutive integers that are greedy Jacobsthal-Niven numbers (A364379).

The programs for A364383, there is no canonical definition to state claims against.
-/

/-! ## A364383.P2070256047128787224

`∩[A364382(n+1)-1, A364382(n+1)]`
-/

namespace A364383.P2070256047128787224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364382 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364383.P2070256047128787224

/-! ## A364383.P294094759506024108

`∩[A364381(n+1)-2, A364381(n+1)]`
-/

namespace A364383.P294094759506024108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364381 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364383.P294094759506024108

/-! ## A364383.P5964876301016890927

`A364382(lt[A177383(n), A331679(n+1)])`
-/

namespace A364383.P5964876301016890927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364382 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A364383.P5964876301016890927

/-! ## A364383.P11285187182570738783

`A364382(2*n+1)-A185115(A303480(n+3))`
-/

namespace A364383.P11285187182570738783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364382 (2 * n + 1) - A185115 (A303480 (n + 3)).toNat

end

end A364383.P11285187182570738783

/-!
# A364385: a(n) is the number of quadratic equations u*x^2 + v*x + w = 0 with different solution sets L != {}, where n >= abs(u) + abs(v) + abs(w) and the coefficients u, v, w as well as the solutions x_1, x_2 are integers.

The programs for A364385, there is no canonical definition to state claims against.
-/

/-! ## A364385.P13712057045398494681

`∑[A364384(n+1)]`
-/

namespace A364385.P13712057045398494681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364385.P13712057045398494681

/-!
# A364386: Triangle T(n,k) read by rows: the number of Motzkin paths of length n that have k nodes at their peak level, 1 <= k <= n+1.

The programs for A364386, there is no canonical definition to state claims against.
-/

/-! ## A364386.P18373362433909061410

`A352746(A124539(n+1))`
-/

namespace A364386.P18373362433909061410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352746 (A124539 (n + 1)).toNat

end

end A364386.P18373362433909061410

/-! ## A364386.P3957289978869221450

`A082359(A301422(n+2)%A013658(3*n+1))`
-/

namespace A364386.P3957289978869221450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082359 (Int.tmod (A301422 (n + 2)) (A013658 (3 * n + 1))).toNat

end

end A364386.P3957289978869221450

/-! ## A364386.P6816390028817088490

`A004248(n+2)-A000120(C(A016813(n), 64))`
-/

namespace A364386.P6816390028817088490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (n + 2) - A000120 (Nat.choose (A016813 n).toNat 64)

end

end A364386.P6816390028817088490

/-! ## A364386.P11249850848257715863

`A369258(A066119(n+2))`
-/

namespace A364386.P11249850848257715863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369258 (A066119 (n + 2)).toNat

end

end A364386.P11249850848257715863

/-! ## A364386.P17256705380145562802

`A004248(n+2)^A001023(A326463(n))`
-/

namespace A364386.P17256705380145562802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004248 (n + 2) : ℚ) ^ (A001023 (A326463 n).toNat : ℤ)

end

end A364386.P17256705380145562802

/-!
# A364387: Number of divisors of n of the form 4*k+3 that are at most sqrt(n).

The programs for A364387, there is no canonical definition to state claims against.
-/

/-! ## A364387.P17470748758807281236

`A069288(n+1)-A364358(n+1)`
-/

namespace A364387.P17470748758807281236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 (n + 1) - A364358 (n + 1)

end

end A364387.P17470748758807281236

/-! ## A364387.P12963363923837469778

`A001227(n+1)-(A364358(n+1)+A341594(n+1))`
-/

namespace A364387.P12963363923837469778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - (A364358 (n + 1) + A341594 (n + 1))

end

end A364387.P12963363923837469778

/-! ## A364387.P8243763534337434878

`A000005(A336158(n+1))-A341594(n+1)-A364358(n+1)`
-/

namespace A364387.P8243763534337434878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A336158 (n + 1)).toNat - A341594 (n + 1) - A364358 (n + 1)

end

end A364387.P8243763534337434878

/-! ## A364387.P14399272033533279956

`A005091(A396068(n+1))`
-/

namespace A364387.P14399272033533279956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005091 (A396068 (n + 1)).toNat

end

end A364387.P14399272033533279956

/-! ## A364387.P8125092563906926016

`A005091(A072499(n+1))`
-/

namespace A364387.P8125092563906926016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005091 (A072499 (n + 1)).toNat

end

end A364387.P8125092563906926016

/-! ## A364387.P12221317129707930251

`A357905(6*A072499(n+1))`
-/

namespace A364387.P12221317129707930251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357905 (6 * A072499 (n + 1)).toNat

end

end A364387.P12221317129707930251

/-! ## A364387.P7677917516555651794

`A005091(A072504(n+1)²)`
-/

namespace A364387.P7677917516555651794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005091 (A072504 (n + 1) ^ 2).toNat

end

end A364387.P7677917516555651794

/-! ## A364387.P7630870527799724657

`A152146(A069289(n+1))^A279364(2*n+3)`
-/

namespace A364387.P7630870527799724657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152146 (A069289 (n + 1)).toNat : ℚ) ^ (A279364 (2 * n + 3) : ℤ)

end

end A364387.P7630870527799724657

/-! ## A364387.P15524232279930963223

`A152146(A069289(n+1))^A069290(A069293(n+1)!)`
-/

namespace A364387.P15524232279930963223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152146 (A069289 (n + 1)).toNat : ℚ) ^ (A069290 (Nat.factorial (A069293 (n + 1)).toNat) : ℤ)

end

end A364387.P15524232279930963223

/-! ## A364387.P16485923694162801541

`A152146(A069289(n+1))^A199167(A069292(n+1)²²)`
-/

namespace A364387.P16485923694162801541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152146 (A069289 (n + 1)).toNat : ℚ) ^ (A199167 ((A069292 (n + 1) ^ 2) ^ 2).toNat : ℤ)

end

end A364387.P16485923694162801541

/-!
# A364388: Number of divisors of n of the form 5*k+1 that are at most sqrt(n).

The programs for A364388, there is no canonical definition to state claims against.
-/

/-! ## A364388.P9874742806949132002

`gcd(floor(n^(1/5)), A078978(A324537(n+1)))`
-/

namespace A364388.P9874742806949132002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊(n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋ (A078978 (A324537 (n + 1)).toNat)

end

end A364388.P9874742806949132002

/-! ## A364388.P2078693850891356789

`gcd(A323812(n), A372362(n))`
-/

namespace A364388.P2078693850891356789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A323812 n) (A372362 n)

end

end A364388.P2078693850891356789

/-! ## A364388.P17289830034670046727

`A055642(floor(n^(1/5))^A123556(n+1))`
-/

namespace A364388.P17289830034670046727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (SequenceMachineLib.roundAway ((⌊(n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋ : ℚ) ^ (A123556 (n + 1) : ℤ))).toNat

end

end A364388.P17289830034670046727

/-! ## A364388.P12052514548432288557

`gcd(A055642(A285573(n+1)), A254296(n+1))`
-/

namespace A364388.P12052514548432288557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055642 (A285573 (n + 1)).toNat) (A254296 (n + 1))

end

end A364388.P12052514548432288557

/-! ## A364388.P5445415028875275660

`A245477(n*A273058(n+1))`
-/

namespace A364388.P5445415028875275660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245477 ((n : ℤ) * A273058 (n + 1)).toNat

end

end A364388.P5445415028875275660

/-! ## A364388.P17073883525150313596

`A057237(A008000(n+4)*A055642(3*n+1))`
-/

namespace A364388.P17073883525150313596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (A008000 (n + 4) * A055642 (3 * n + 1)).toNat

end

end A364388.P17073883525150313596

/-! ## A364388.P17744772858726680890

`A082061(gcd(∏{p}[n+1, #], A338238(n+2)))`
-/

namespace A364388.P17744772858726680890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082061 (Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A338238 (n + 2)))

end

end A364388.P17744772858726680890

/-! ## A364388.P18209724560528586539

`A153452(gcd(A020338(n+1), A338238(n+2)))`
-/

namespace A364388.P18209724560528586539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153452 (Int.gcd (A020338 (n + 1)) (A338238 (n + 2)))

end

end A364388.P18209724560528586539

/-! ## A364388.P609586406457772487

`A167965(A087774(n))`
-/

namespace A364388.P609586406457772487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167965 (A087774 n).toNat

end

end A364388.P609586406457772487

/-! ## A364388.P9826714944355826293

`A049099(A377124(n+1)+A366523(3*(n+1)))`
-/

namespace A364388.P9826714944355826293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049099 (A377124 (n + 1) + A366523 (3 * (n + 1))).toNat

end

end A364388.P9826714944355826293

/-!
# A364389: Number of divisors of n of the form 5*k+2 that are at most sqrt(n).

The programs for A364389, there is no canonical definition to state claims against.
-/

/-! ## A364389.P6892652462950306011

`floor(A296910(n)/A184400(n+1))`
-/

namespace A364389.P6892652462950306011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A296910 n : ℚ) / (A184400 (n + 1) : ℚ)⌋

end

end A364389.P6892652462950306011

/-! ## A364389.P9241034650125364843

`A103673(gcd(n%or(1, n), A366209(n+1)))`
-/

namespace A364389.P9241034650125364843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103673 (Int.gcd ((n % Nat.lor 1 n : ℕ) : ℤ) (A366209 (n + 1)))

end

end A364389.P9241034650125364843

/-! ## A364389.P5041001232221800622

`round(A344404(3*n+1)/A195199(n+2))`
-/

namespace A364389.P5041001232221800622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A344404 (3 * n + 1) : ℚ) / (A195199 (n + 2) : ℚ))

end

end A364389.P5041001232221800622

/-! ## A364389.P14924083912509946677

`A327622(gcd(A020639(n+1), A171698(n)))`
-/

namespace A364389.P14924083912509946677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327622 (Int.gcd (A020639 (n + 1)) (A171698 n))

end

end A364389.P14924083912509946677

/-! ## A364389.P12608833798171912436

`A173920(A063918(n+1))^A345925(n+1)`
-/

namespace A364389.P12608833798171912436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173920 (A063918 (n + 1)).toNat : ℚ) ^ (A345925 (n + 1) : ℤ)

end

end A364389.P12608833798171912436

/-! ## A364389.P9240106185134459361

`A267423(lcm(A001651(2*(n+2)), A329411(n+3)))`
-/

namespace A364389.P9240106185134459361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267423 (Int.lcm (A001651 (2 * (n + 2))) (A329411 (n + 3)))

end

end A364389.P9240106185134459361

/-! ## A364389.P4337599802081564077

`A129251(A271289(n))`
-/

namespace A364389.P4337599802081564077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (A271289 n).toNat

end

end A364389.P4337599802081564077

/-! ## A364389.P5044351190615519398

`A175421(n)%A084100(n)`
-/

namespace A364389.P5044351190615519398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175421 n) (A084100 n)

end

end A364389.P5044351190615519398

/-! ## A364389.P1949627353522939676

`and(A060576(n), A175421(n))`
-/

namespace A364389.P1949627353522939676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A175421 n)

end

end A364389.P1949627353522939676

/-!
# A364391: a(n) = n - (largest nontrivial divisor of n, or 0 if there is none).

The programs for A364391, there is no canonical definition to state claims against.
-/

/-! ## A364391.P6907496684327997078

`A060681(n+1)+∑{e}[n+1, #]!%2`
-/

namespace A364391.P6907496684327997078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 1) + ((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) % 2 : ℕ) : ℤ)

end

end A364391.P6907496684327997078

/-! ## A364391.P12341465571727515472

`A080339(n+1)+A060681(n+1)`
-/

namespace A364391.P12341465571727515472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1) + A060681 (n + 1)

end

end A364391.P12341465571727515472

/-! ## A364391.P11384259910734497745

`A061228(n+1)-A134889(n+1)`
-/

namespace A364391.P11384259910734497745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (n + 1) - A134889 (n + 1)

end

end A364391.P11384259910734497745

/-! ## A364391.P2740928155169382598

`A063524(A032742(n+1))+A060681(n+1)`
-/

namespace A364391.P2740928155169382598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A032742 (n + 1)).toNat + A060681 (n + 1)

end

end A364391.P2740928155169382598

/-! ## A364391.P114686150736395839

`A060681(n+1)+A000007(A300722(n+1))`
-/

namespace A364391.P114686150736395839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 1) + A000007 (A300722 (n + 1)).toNat

end

end A364391.P114686150736395839

/-! ## A364391.P15169989252332050541

`A060681(n+1)+A055641(A346700(n+1))`
-/

namespace A364391.P15169989252332050541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 1) + A055641 (A346700 (n + 1)).toNat

end

end A364391.P15169989252332050541

/-! ## A364391.P6995071370564067222

`A060681(n+1)+A286477(n+1)-A055396(n+1)`
-/

namespace A364391.P6995071370564067222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 1) + (A286477 (n + 1) - A055396 (n + 1))

end

end A364391.P6995071370564067222

/-! ## A364391.P3394535818460619216

`A000007(A300722(n+1))+n-A089196(A000007(n)+n)`
-/

namespace A364391.P3394535818460619216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A300722 (n + 1)).toNat + ((n : ℤ) - A089196 (A000007 n + (n : ℤ)).toNat)

end

end A364391.P3394535818460619216

/-!
# A364392: a(1)=1 and thereafter a(n) is the least number of locations 1..n-1 which can be visited in a single path beginning at i=n-1, in which one proceeds from location i to i +- a(i) (within 1..n-1) until no further unvisited location is available.

The programs for A364392, there is no canonical definition to state claims against.
-/

/-! ## A364392.P14804847703838592493

`A104484(xor(A064840(n+1), A175000(n+1)))`
-/

namespace A364392.P14804847703838592493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104484 (Int.xor (A064840 (n + 1)) (A175000 (n + 1))).toNat

end

end A364392.P14804847703838592493

/-!
# A364393: G.f. satisfies A(x) = 1 + x*(1 + 1/A(x)^2).

The programs for A364393, there is no canonical definition to state claims against.
-/

/-! ## A364393.P12873365991482227047

`A291193(A036498(n+1))`
-/

namespace A364393.P12873365991482227047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291193 (A036498 (n + 1)).toNat

end

end A364393.P12873365991482227047

/-!
# A364394: G.f. satisfies A(x) = 1 + x/A(x)*(1 + 1/A(x)).

The programs for A364394, there is no canonical definition to state claims against.
-/

/-! ## A364394.P14856109998272449895

`A366365(n)+A065368(A049964(2*n+5))`
-/

namespace A364394.P14856109998272449895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366365 n + A065368 (A049964 (2 * n + 5)).toNat

end

end A364394.P14856109998272449895

