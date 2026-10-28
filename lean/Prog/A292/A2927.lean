import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A292700: 1/4 of the number of paths that are made of alternate vertical and horizontal 4*n consecutive prime (> 2 and < prime(4*n+2)) steps. (Each path begins and ends at the same point but is allowed to intersect itself.)

The programs for A292700, there is no canonical definition to state claims against.
-/

/-! ## A292700.P15408197507163358101

`A292698(n+1)*A292699(n+1)`
-/

namespace A292700.P15408197507163358101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292698 (n + 1) * A292699 (n + 1)

end

end A292700.P15408197507163358101

/-! ## A292700.P9471280938476274038

`A160124(A327584(n)-1)`
-/

namespace A292700.P9471280938476274038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160124 (A327584 n - 1).toNat

end

end A292700.P9471280938476274038

/-! ## A292700.P11569492551872006644

`A095061(n+1)*A319095(A368983(n))`
-/

namespace A292700.P11569492551872006644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095061 (n + 1) * A319095 (A368983 n).toNat

end

end A292700.P11569492551872006644

/-!
# A292705: Nonsquarefree unitary abundant numbers.

The programs for A292705, there is no canonical definition to state claims against.
-/

/-! ## A292705.P9177489100199365832

`∩[A034683(n+1), A379030(n+1)]`
-/

namespace A292705.P9177489100199365832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292705.P9177489100199365832

/-! ## A292705.P2181064611179843746

`filter[A034683(n+1), A355447(#)]`
-/

namespace A292705.P2181064611179843746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A292705.P2181064611179843746

/-! ## A292705.P15988662197277680052

`∩[A034683(n+1), A389216(n+1)]`
-/

namespace A292705.P15988662197277680052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292705.P15988662197277680052

/-! ## A292705.P13617316489088861763

`filter[A034683(n+1), A087049(#)]`
-/

namespace A292705.P13617316489088861763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A292705.P13617316489088861763

/-! ## A292705.P11790722166305892080

`filter[A034683(n+1), A326072(#)]`
-/

namespace A292705.P11790722166305892080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A326072 (f1 j).toNat = 1) n)

end

end A292705.P11790722166305892080

/-! ## A292705.P794831172580526790

`filter[A034683(n+1), A389905(#)]`
-/

namespace A292705.P794831172580526790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A292705.P794831172580526790

/-! ## A292705.P4299577758986986844

`∩[A034683(n+1), A326071(n+1)]`
-/

namespace A292705.P4299577758986986844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292705.P4299577758986986844

/-! ## A292705.P8679441246606554830

`∩[A034683(n+1), A087245(n+1)]`
-/

namespace A292705.P8679441246606554830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292705.P8679441246606554830

/-! ## A292705.P3230115396274820455

`∩[A034683(n+1), A389212(n+1)]`
-/

namespace A292705.P3230115396274820455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292705.P3230115396274820455

/-! ## A292705.P12967869616055623156

`∩[A034683(n+1), A389214(n+1)]`
-/

namespace A292705.P12967869616055623156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292705.P12967869616055623156

/-! ## A292705.P11912382231698658324

`∩[A034683(n+1), A368715(n+1)]`
-/

namespace A292705.P11912382231698658324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292705.P11912382231698658324

/-! ## A292705.P2929959522562956192

`∩[A034683(n+1), A392288(n+1)]`
-/

namespace A292705.P2929959522562956192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292705.P2929959522562956192

/-! ## A292705.P17795726971909801957

`∩[A034683(n+1), A137257(n+1)]`
-/

namespace A292705.P17795726971909801957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292705.P17795726971909801957

/-! ## A292705.P12628397122399336537

`∩[A034683(n+1), A375055(n+1)]`
-/

namespace A292705.P12628397122399336537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292705.P12628397122399336537

/-! ## A292705.P4992961981701064454

`∩[A034683(n+1), A391026(n+1)]`
-/

namespace A292705.P4992961981701064454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292705.P4992961981701064454

/-! ## A292705.P5276824259176544964

`∩[A034683(n+1), A363101(n+1)]`
-/

namespace A292705.P5276824259176544964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292705.P5276824259176544964

/-! ## A292705.P11136090128791341446

`∩[A034683(n+1), A379336(n+1)]`
-/

namespace A292705.P11136090128791341446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292705.P11136090128791341446

/-!
# A292710: Number of independent vertex sets and vertex covers in the n-Mycielski graph.

The programs for A292710, there is no canonical definition to state claims against.
-/

/-! ## A292710.P3498211837844595083

`or(A211681(A005118(n)), A265528(n))`
-/

namespace A292710.P3498211837844595083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A211681 (A005118 n).toNat) (A265528 n)

end

end A292710.P3498211837844595083

/-!
# A292712: Number A(n,k) of multisets of nonempty words with a total of n letters over k-ary alphabet such that within each word every letter of the alphabet is at least as frequent as the subsequent alphabet letter; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A292712, there is no canonical definition to state claims against.
-/

/-! ## A292712.P3732100740746829830

`A117707(A059268(n)*A293960(n))`
-/

namespace A292712.P3732100740746829830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A059268 n * A293960 n).toNat

end

end A292712.P3732100740746829830

/-! ## A292712.P11050430342988709481

`A163352(A059268(n)*A293960(n))`
-/

namespace A292712.P11050430342988709481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A059268 n * A293960 n).toNat

end

end A292712.P11050430342988709481

/-! ## A292712.P9105983993566189655

`A172263(A059268(n)*A293960(n))`
-/

namespace A292712.P9105983993566189655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A059268 n * A293960 n).toNat

end

end A292712.P9105983993566189655

/-! ## A292712.P7252556136939287863

`A285189(A059268(n)*A226873(n))`
-/

namespace A292712.P7252556136939287863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A059268 n * A226873 n).toNat

end

end A292712.P7252556136939287863

/-! ## A292712.P15740049685570609607

`A117707(lcm(A059268(n), A293960(n)))`
-/

namespace A292712.P15740049685570609607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (Int.lcm (A059268 n) (A293960 n))

end

end A292712.P15740049685570609607

/-!
# A292713: Number of multisets of nonempty words with a total of n letters over n-ary alphabet such that within each word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A292713, there is no canonical definition to state claims against.
-/

/-! ## A292713.P705374407176349326

`A292712(∑[4*n])`
-/

namespace A292713.P705374407176349326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292713.P705374407176349326

/-! ## A292713.P9113812075589808088

`floor(A292712(A046092(n))+acot(n+1))`
-/

namespace A292713.P9113812075589808088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A292712 (A046092 n).toNat : ℝ) + SequenceMachineLib.acot (n + 1 : ℝ)⌋

end

end A292713.P9113812075589808088

/-! ## A292713.P14869132222122938668

`A292712(A046092(n))+A000007(n+1)`
-/

namespace A292713.P14869132222122938668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A046092 n).toNat + A000007 (n + 1)

end

end A292713.P14869132222122938668

/-! ## A292713.P13852625921421677858

`A292712(A046092(n))+A258651(∑[n+1])`
-/

namespace A292713.P13852625921421677858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A046092 n).toNat + A258651 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292713.P13852625921421677858

/-! ## A292713.P17211945651302758777

`A292712(A046092(n))-A008288(∑[n])+1`
-/

namespace A292713.P17211945651302758777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A046092 n).toNat - A008288 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A292713.P17211945651302758777

/-! ## A292713.P2037497132192084638

`A292712(A046092(n))+char[A158308(n+1)]`
-/

namespace A292713.P2037497132192084638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158308 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A046092 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A292713.P2037497132192084638

/-! ## A292713.P255463762351854332

`A292712(A046092(n))+char[A158316(n+1)]`
-/

namespace A292713.P255463762351854332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158316 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A046092 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A292713.P255463762351854332

/-! ## A292713.P14854425267272601248

`A292712(A046092(n))+A010052(A000040(n+1))`
-/

namespace A292713.P14854425267272601248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A046092 n).toNat + A010052 (A000040 (n + 1)).toNat

end

end A292713.P14854425267272601248

/-! ## A292713.P16805362289277276328

`A292712(A046092(n))+A068346(A014963(n+1))`
-/

namespace A292713.P16805362289277276328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A046092 n).toNat + A068346 (A014963 (n + 1)).toNat

end

end A292713.P16805362289277276328

/-!
# A292716: a(n) = [x^n] 1/(1 - n*x - n*x^2/(1 - n*x - n*x^2/(1 - n*x - n*x^2/(1 - n*x - n*x^2/(1 - ...))))), a continued fraction.

The programs for A292716, there is no canonical definition to state claims against.
-/

/-! ## A292716.P8901157095398390063

`A107267(∑[4*n])`
-/

namespace A292716.P8901157095398390063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107267 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292716.P8901157095398390063

/-! ## A292716.P4759959264347998634

`A107267(A046092(n))^A178334(n)`
-/

namespace A292716.P4759959264347998634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107267 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A292716.P4759959264347998634

/-! ## A292716.P4917927687726489436

`A107267(A046092(n))^A178489(n)`
-/

namespace A292716.P4917927687726489436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107267 (A046092 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A292716.P4917927687726489436

/-! ## A292716.P5292041400103735331

`gcd(A000038(n), A107267(A046092(n)))`
-/

namespace A292716.P5292041400103735331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A107267 (A046092 n).toNat)

end

end A292716.P5292041400103735331

/-! ## A292716.P14353662371926284518

`lcm(A028310(n), A107267(A046092(n)))`
-/

namespace A292716.P14353662371926284518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 n) (A107267 (A046092 n).toNat)

end

end A292716.P14353662371926284518

/-!
# A292717: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. -log(1 - x)/(1 - x)^k.

The programs for A292717, there is no canonical definition to state claims against.
-/

/-! ## A292717.P8692615023352359104

`A160664(A200943(n+1))%A263752(n+1)`
-/

namespace A292717.P8692615023352359104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160664 (A200943 (n + 1)).toNat) (A263752 (n + 1))

end

end A292717.P8692615023352359104

/-! ## A292717.P6257817366513825142

`A337178(A055885(n+1))`
-/

namespace A292717.P6257817366513825142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337178 (A055885 (n + 1)).toNat

end

end A292717.P6257817366513825142

/-! ## A292717.P6392422936987563103

`A291556(n)-A078442(A010749(n))`
-/

namespace A292717.P6392422936987563103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291556 n - A078442 (A010749 n).toNat

end

end A292717.P6392422936987563103

/-! ## A292717.P3547458294597429916

`A263272(A373451(n)%A046385(n))`
-/

namespace A292717.P3547458294597429916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (Int.tmod (A373451 n) (A046385 n)).toNat

end

end A292717.P3547458294597429916

/-! ## A292717.P11067202472123654742

`A263272(A373451(n))%A122539(n)`
-/

namespace A292717.P11067202472123654742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263272 (A373451 n).toNat) (A122539 n)

end

end A292717.P11067202472123654742

/-!
# A292718: Number of multisets of nonempty words with a total of n letters over ternary alphabet such that within each word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A292718, there is no canonical definition to state claims against.
-/

/-! ## A292718.P14384218213768410158

`A292712(∑[n+3]+n+3)`
-/

namespace A292718.P14384218213768410158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A292718.P14384218213768410158

/-! ## A292718.P17914845071162787989

`A292712(A046691(n+2))%A079935(n+3)`
-/

namespace A292718.P17914845071162787989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292712 (A046691 (n + 2)).toNat) (A079935 (n + 3))

end

end A292718.P17914845071162787989

/-! ## A292718.P18332188620936331075

`A292712(A046691(n+2))+A000005((n+1)²+1)%2`
-/

namespace A292718.P18332188620936331075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A046691 (n + 2)).toNat + Int.tmod (A000005 ((n + 1) ^ 2 + 1)) 2

end

end A292718.P18332188620936331075

/-! ## A292718.P4755936885610658104

`A292712(A046691(n+2))-A238086(A000096(n+1))%3+1`
-/

namespace A292718.P4755936885610658104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A046691 (n + 2)).toNat - Int.tmod (A238086 (A000096 (n + 1)).toNat) 3 + 1

end

end A292718.P4755936885610658104

/-! ## A292718.P5721283324143167394

`A001222(A329309(n))*A292712(A046691(n+2))`
-/

namespace A292718.P5721283324143167394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A329309 n).toNat * A292712 (A046691 (n + 2)).toNat

end

end A292718.P5721283324143167394

/-!
# A292719: Number of multisets of nonempty words with a total of n letters over quaternary alphabet such that within each word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A292719, there is no canonical definition to state claims against.
-/

/-! ## A292719.P7434776869223216266

`A292712(A052905(n+2))`
-/

namespace A292719.P7434776869223216266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A052905 (n + 2)).toNat

end

end A292719.P7434776869223216266

/-! ## A292719.P2145695856087699811

`A292712(eq[4, A025581(n)])`
-/

namespace A292719.P2145695856087699811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292719.P2145695856087699811

/-! ## A292719.P11255048119682622000

`A292712(Δ[A055831(n+4)])`
-/

namespace A292719.P11255048119682622000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (f1 (n + 1) - f1 n).toNat

end

end A292719.P11255048119682622000

/-! ## A292719.P12878513951868505518

`A292712(A027379(n+3)-2)`
-/

namespace A292719.P12878513951868505518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A027379 (n + 3) - 2).toNat

end

end A292719.P12878513951868505518

/-! ## A292719.P11091372290942661108

`A292712(Δ[A023545(n+1)]-1)`
-/

namespace A292719.P11091372290942661108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (f1 (n + 1) - f1 n - 1).toNat

end

end A292719.P11091372290942661108

/-! ## A292719.P7280441632209764806

`A292712(A047838(n+6)-(A008619(n)+6))`
-/

namespace A292719.P7280441632209764806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A047838 (n + 6) - (A008619 n + 6)).toNat

end

end A292719.P7280441632209764806

/-!
# A292720: Number of multisets of nonempty words with a total of n letters over 5-ary alphabet such that within each word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A292720, there is no canonical definition to state claims against.
-/

/-! ## A292720.P12430211792835798348

`A292712(A055999(n+3))`
-/

namespace A292720.P12430211792835798348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A055999 (n + 3)).toNat

end

end A292720.P12430211792835798348

/-! ## A292720.P10832687802154195395

`A292712(A027379(n+4)-3)`
-/

namespace A292720.P10832687802154195395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A027379 (n + 4) - 3).toNat

end

end A292720.P10832687802154195395

/-! ## A292720.P8299757318845411353

`A292712(A000217(n+6)-6)`
-/

namespace A292720.P8299757318845411353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A000217 (n + 6) - 6).toNat

end

end A292720.P8299757318845411353

/-! ## A292720.P2255488504897224296

`A292712(A000124(n+6)-7)`
-/

namespace A292720.P2255488504897224296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A000124 (n + 6) - 7).toNat

end

end A292720.P2255488504897224296

/-! ## A292720.P16162469940384662095

`A292712(Δ[A023545(n+2)]-2)`
-/

namespace A292720.P16162469940384662095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (f1 (n + 1) - f1 n - 2).toNat

end

end A292720.P16162469940384662095

/-! ## A292720.P11492809566667739346

`A292712(Δ[A055831(n+5)]-1)`
-/

namespace A292720.P11492809566667739346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (f1 (n + 1) - f1 n - 1).toNat

end

end A292720.P11492809566667739346

/-! ## A292720.P12415948850882645619

`A292712(A047838(n+7)-A008619(n+15))`
-/

namespace A292720.P12415948850882645619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A047838 (n + 7) - A008619 (n + 15)).toNat

end

end A292720.P12415948850882645619

/-! ## A292720.P10444243105787906985

`A292712(A167614(n+1)+Δ[A167614(2*(n+1))])`
-/

namespace A292720.P10444243105787906985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A167614 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A292720.P10444243105787906985

/-!
# A292721: Number of multisets of nonempty words with a total of n letters over 6-ary alphabet such that within each word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A292721, there is no canonical definition to state claims against.
-/

/-! ## A292721.P3796257471442833822

`A292712(eq[6, A025581(n)])`
-/

namespace A292721.P3796257471442833822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292721.P3796257471442833822

/-! ## A292721.P17576664344695826422

`A292712(A056000(n+3)+3)`
-/

namespace A292721.P17576664344695826422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A056000 (n + 3) + 3).toNat

end

end A292721.P17576664344695826422

/-! ## A292721.P4692223344830022676

`A292712(A000217(n+7)-7)`
-/

namespace A292721.P4692223344830022676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A000217 (n + 7) - 7).toNat

end

end A292721.P4692223344830022676

/-! ## A292721.P5184979528806982805

`A292712(eq[7, A004736(n+1)])`
-/

namespace A292721.P5184979528806982805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292721.P5184979528806982805

/-! ## A292721.P14630187524967556453

`A292712(A267872(n+4)+A027379(n+3))`
-/

namespace A292721.P14630187524967556453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A267872 (n + 4) + A027379 (n + 3)).toNat

end

end A292721.P14630187524967556453

/-! ## A292721.P681012841484232564

`A292712(eq[A089627(n+3), A292712(n+6)])`
-/

namespace A292721.P681012841484232564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089627 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A292721.P681012841484232564

/-!
# A292722: Number of multisets of nonempty words with a total of n letters over 7-ary alphabet such that within each word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A292722, there is no canonical definition to state claims against.
-/

/-! ## A292722.P6029100307698995138

`A292712(eq[7, A025581(n)])`
-/

namespace A292722.P6029100307698995138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292722.P6029100307698995138

/-! ## A292722.P15966362987841549447

`A292712(A056000(n+4)+2)`
-/

namespace A292722.P15966362987841549447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A056000 (n + 4) + 2).toNat

end

end A292722.P15966362987841549447

/-! ## A292722.P10806962249555320738

`A292712(A000217(n+8)-8)`
-/

namespace A292722.P10806962249555320738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A000217 (n + 8) - 8).toNat

end

end A292722.P10806962249555320738

/-! ## A292722.P13640544145378507040

`A292712(eq[8, A004736(n+1)])`
-/

namespace A292722.P13640544145378507040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292722.P13640544145378507040

/-! ## A292722.P3468657390958561946

`A292712(A027379(n+3)+A016777(n+5))`
-/

namespace A292722.P3468657390958561946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A027379 (n + 3) + A016777 (n + 5)).toNat

end

end A292722.P3468657390958561946

/-! ## A292722.P15667863817775744859

`A292712(eq[A089627(n+4), A292712(n+7)])`
-/

namespace A292722.P15667863817775744859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089627 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A292722.P15667863817775744859

/-!
# A292723: Number of multisets of nonempty words with a total of n letters over 8-ary alphabet such that within each word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A292723, there is no canonical definition to state claims against.
-/

/-! ## A292723.P2580419772497614594

`A292712(A056000(n+5)+1)`
-/

namespace A292723.P2580419772497614594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A056000 (n + 5) + 1).toNat

end

end A292723.P2580419772497614594

/-! ## A292723.P15466991132976831147

`A292712(A000096(n+8)-8)`
-/

namespace A292723.P15466991132976831147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A000096 (n + 8) - 8).toNat

end

end A292723.P15466991132976831147

/-! ## A292723.P11444469961622873951

`A292712(A000217(n+9)-9)`
-/

namespace A292723.P11444469961622873951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A000217 (n + 9) - 9).toNat

end

end A292723.P11444469961622873951

/-! ## A292723.P6526685506391431417

`A292712(A161680(n+10)-9)`
-/

namespace A292723.P6526685506391431417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A161680 (n + 10) - 9).toNat

end

end A292723.P6526685506391431417

/-! ## A292723.P3921182219313999752

`A292712(A267872(n+5)+A027379(n+5))`
-/

namespace A292723.P3921182219313999752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A267872 (n + 5) + A027379 (n + 5)).toNat

end

end A292723.P3921182219313999752

/-!
# A292724: Number of multisets of nonempty words with a total of n letters over 9-ary alphabet such that within each word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A292724, there is no canonical definition to state claims against.
-/

/-! ## A292724.P11318331513604840246

`A292712(A056000(n+6))`
-/

namespace A292724.P11318331513604840246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A056000 (n + 6)).toNat

end

end A292724.P11318331513604840246

/-! ## A292724.P15993905121183741328

`A292712(eq[9, A025581(n)])`
-/

namespace A292724.P15993905121183741328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292724.P15993905121183741328

/-! ## A292724.P15586061264270113830

`A292712(eq[19, A099375(n)])`
-/

namespace A292724.P15586061264270113830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292724.P15586061264270113830

/-! ## A292724.P7304343558465053338

`A292712(A000096(n+9)-9)`
-/

namespace A292724.P7304343558465053338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A000096 (n + 9) - 9).toNat

end

end A292724.P7304343558465053338

/-! ## A292724.P16924310548698606590

`A292712(A000217(n+10)-10)`
-/

namespace A292724.P16924310548698606590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A000217 (n + 10) - 10).toNat

end

end A292724.P16924310548698606590

/-! ## A292724.P4185848390809924014

`A292712(eq[10, A004736(n+1)])`
-/

namespace A292724.P4185848390809924014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292724.P4185848390809924014

/-!
# A292725: Number of multisets of nonempty words with a total of n letters over 10-ary alphabet such that within each word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A292725, there is no canonical definition to state claims against.
-/

/-! ## A292725.P12730276561348797444

`A292712(A052905(n+8)-6)`
-/

namespace A292725.P12730276561348797444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A052905 (n + 8) - 6).toNat

end

end A292725.P12730276561348797444

/-! ## A292725.P9880070268730162733

`A292712(A000217(n+11)-11)`
-/

namespace A292725.P9880070268730162733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A000217 (n + 11) - 11).toNat

end

end A292725.P9880070268730162733

/-! ## A292725.P17977980096032223124

`A292712(A000096(n+9)+n+1)`
-/

namespace A292725.P17977980096032223124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A000096 (n + 9) + (n + 1 : ℤ)).toNat

end

end A292725.P17977980096032223124

/-! ## A292725.P10982501174894241144

`A292712(A027379(n+6)+A016777(n+7))`
-/

namespace A292725.P10982501174894241144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A027379 (n + 6) + A016777 (n + 7)).toNat

end

end A292725.P10982501174894241144

/-! ## A292725.P14657091552001572186

`A292712(A267872(n+6)+A027379(n+7))`
-/

namespace A292725.P14657091552001572186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A267872 (n + 6) + A027379 (n + 7)).toNat

end

end A292725.P14657091552001572186

/-!
# A292726: a(n) is the number of states that can be achieved when starting from n piles each containing one stone, where any number of stones can be transferred between piles that start with the same number of stones.

The programs for A292726, there is no canonical definition to state claims against.
-/

/-! ## A292726.P2357308061775746453

`Δ[A000070(n)]-A292727(n+1)`
-/

namespace A292726.P2357308061775746453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A292727 (n + 1)

end

end A292726.P2357308061775746453

/-! ## A292726.P2392204642926440338

`record[A035363(n)]-A292727(n+1)`
-/

namespace A292726.P2392204642926440338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A292727 (n + 1)

end

end A292726.P2392204642926440338

/-! ## A292726.P10716997903387957377

`record[A035444(n)]-A292727(n+1)`
-/

namespace A292726.P10716997903387957377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A292727 (n + 1)

end

end A292726.P10716997903387957377

/-! ## A292726.P16530382874784471168

`record[A114099(n)]-A292727(n+1)`
-/

namespace A292726.P16530382874784471168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A292727 (n + 1)

end

end A292726.P16530382874784471168

/-! ## A292726.P13173487035882318374

`A000041(n+1)-A292727(n+1)`
-/

namespace A292726.P13173487035882318374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A292727 (n + 1)

end

end A292726.P13173487035882318374

/-! ## A292726.P3818917589108905696

`record[A168017(n+1)]-A292727(n+1)`
-/

namespace A292726.P3818917589108905696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A292727 (n + 1)

end

end A292726.P3818917589108905696

/-! ## A292726.P93349811484614796

`record[A299200(n+1)]-A292727(n+1)`
-/

namespace A292726.P93349811484614796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A292727 (n + 1)

end

end A292726.P93349811484614796

/-! ## A292726.P13938292169710122480

`A000065(n+1)+1-A292727(n+1)`
-/

namespace A292726.P13938292169710122480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1) + (1 - A292727 (n + 1))

end

end A292726.P13938292169710122480

/-!
# A292727: a(n) is the number of states that cannot be achieved when starting from n piles each containing one stone, where stones can be transferred between piles only when they start with the same number of stones.

The programs for A292727, there is no canonical definition to state claims against.
-/

/-! ## A292727.P11101952849090488634

`A000041(n+1)-A292726(n+1)`
-/

namespace A292727.P11101952849090488634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A292726 (n + 1)

end

end A292727.P11101952849090488634

/-! ## A292727.P13592710896455732278

`Δ[A000070(n)]-A292726(n+1)`
-/

namespace A292727.P13592710896455732278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A292726 (n + 1)

end

end A292727.P13592710896455732278

/-! ## A292727.P4900505822177504289

`record[A035363(n)]-A292726(n+1)`
-/

namespace A292727.P4900505822177504289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A292726 (n + 1)

end

end A292727.P4900505822177504289

/-! ## A292727.P16709453411630350116

`record[A035444(n)]-A292726(n+1)`
-/

namespace A292727.P16709453411630350116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A292726 (n + 1)

end

end A292727.P16709453411630350116

/-! ## A292727.P11097326595777552107

`record[A114099(n)]-A292726(n+1)`
-/

namespace A292727.P11097326595777552107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A292726 (n + 1)

end

end A292727.P11097326595777552107

/-! ## A292727.P4227816631961913969

`record[A168017(n+1)]-A292726(n+1)`
-/

namespace A292727.P4227816631961913969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A292726 (n + 1)

end

end A292727.P4227816631961913969

/-! ## A292727.P10874640268004550887

`A000041(C(n+1, n))%A292726(n+1)`
-/

namespace A292727.P10874640268004550887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (Nat.choose (n + 1) n)) (A292726 (n + 1))

end

end A292727.P10874640268004550887

/-! ## A292727.P2390878810723925261

`A000041(char[2]+1+n)%A292726(n+1)`
-/

namespace A292727.P2390878810723925261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)) (A292726 (n + 1))

end

end A292727.P2390878810723925261

/-! ## A292727.P1059267117148395771

`record[A000041(A027749(n+1))]%A292726(n+1)`
-/

namespace A292727.P1059267117148395771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A027749 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A292726 (n + 1))

end

end A292727.P1059267117148395771

/-! ## A292727.P17044932574922100918

`(A000041(n+1)%A292726(n+1))%A000041(n)`
-/

namespace A292727.P17044932574922100918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A000041 (n + 1)) (A292726 (n + 1))) (A000041 n)

end

end A292727.P17044932574922100918

/-!
# A292730: Numbers in which 0 outnumbers all other digits together.

The programs for A292730, there is no canonical definition to state claims against.
-/

/-! ## A292730.P5641762219086104800

`A008592(A008592(A052018(A352464(A352464(n+1)))))`
-/

namespace A292730.P5641762219086104800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A008592 (A052018 (A352464 (A352464 (n + 1)).toNat).toNat).toNat).toNat

end

end A292730.P5641762219086104800

/-! ## A292730.P15912730954736617179

`filter[A048307(n), A217096(#)]`
-/

namespace A292730.P15912730954736617179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217096 (f1 j).toNat = 1) n)

end

end A292730.P15912730954736617179

/-! ## A292730.P286067202787771281

`A257296(A178359(A178359(A175688(n+1))))`
-/

namespace A292730.P286067202787771281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257296 (A178359 (A178359 (A175688 (n + 1)).toNat).toNat).toNat

end

end A292730.P286067202787771281

/-!
# A292732: Numbers in which 2 outnumbers all other digits together.

The programs for A292732, there is no canonical definition to state claims against.
-/

/-! ## A292732.P6149288535649771145

`lt[A055642(n), 2*A316863(n)]`
-/

namespace A292732.P6149288535649771145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A316863 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A292732.P6149288535649771145

/-!
# A292736: Numbers in which 6 outnumbers all other digits together.

The programs for A292736, there is no canonical definition to state claims against.
-/

/-! ## A292736.P13167283364537328973

`A292456(record[A153679(n+1)%A340682(n+1)])`
-/

namespace A292736.P13167283364537328973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153679 (n + 1)) (A340682 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292456 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A292736.P13167283364537328973

/-!
# A292740: Indices k such that A292547(k) = 0.

The programs for A292740, there is no canonical definition to state claims against.
-/

/-! ## A292740.P4709156024014751452

`comp[lt[0, A292547(n)]]`
-/

namespace A292740.P4709156024014751452
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292547 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A292740.P4709156024014751452

/-! ## A292740.P420097003543539275

`comp[A290276(n+1)-1]+1`
-/

namespace A292740.P420097003543539275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290276 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A292740.P420097003543539275

/-! ## A292740.P11582084610311364463

`comp[∪[C(2*n², 2), A290276(n+2)]]`
-/

namespace A292740.P11582084610311364463
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n ^ 2) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290276 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A292740.P11582084610311364463

/-! ## A292740.P4950902179122137540

`record[A233583(n+1)-n*A292547(n)]`
-/

namespace A292740.P4950902179122137540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) - (n : ℤ) * A292547 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292740.P4950902179122137540

/-! ## A292740.P15963267781593106465

`record[A233583(n+1)/A065033(2*n*A292547(n))]`
-/

namespace A292740.P15963267781593106465
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233583 (n + 1) : ℚ) / (A065033 (2 * ((n : ℤ) * A292547 n)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292740.P15963267781593106465

/-! ## A292740.P5410213116813528541

`comp[eq[1, A010057(n-A299908(n+1))]]`
-/

namespace A292740.P5410213116813528541
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 ((n : ℤ) - A299908 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A292740.P5410213116813528541

/-! ## A292740.P17271521678920347248

`∑[A165031(A152948(n+2)+A121842(n+1)+1)]`
-/

namespace A292740.P17271521678920347248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165031 (A152948 (n + 2) + A121842 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292740.P17271521678920347248

/-! ## A292740.P14330350124825563198

`∑[A052409(A163756(n+1)-1)]+1`
-/

namespace A292740.P14330350124825563198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A163756 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A292740.P14330350124825563198

/-! ## A292740.P13750196158830687566

`∏[A052409(A163756(n+1)-1)]-A001489(n+1)`
-/

namespace A292740.P13750196158830687566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A163756 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A001489 (n + 1)

end

end A292740.P13750196158830687566

/-! ## A292740.P6802862426108676351

`record[A052409(A163756(n+1)-1)+A008619(2*n)]`
-/

namespace A292740.P6802862426108676351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A163756 (n + 1) - 1).toNat + A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292740.P6802862426108676351

/-! ## A292740.P17195418751067938546

`record[A094759(n+2)%A094759(A328617(n+2)+1)]`
-/

namespace A292740.P17195418751067938546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094759 (n + 2)) (A094759 (A328617 (n + 2) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292740.P17195418751067938546

/-! ## A292740.P8043890941516821596

`∑[A213598(A134109(91*(n+1)+1))]+1`
-/

namespace A292740.P8043890941516821596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 (A134109 (91 * (n + 1) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A292740.P8043890941516821596

/-! ## A292740.P5646848880880065119

`record[2*A113926(A113926(n+1))+n]`
-/

namespace A292740.P5646848880880065119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113926 (A113926 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292740.P5646848880880065119

/-!
# A292741: Number A(n,k) of partitions of n with k sorts of part 1; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A292741, there is no canonical definition to state claims against.
-/

/-! ## A292741.P8020715760337461877

`A004218(A156953(n))+A003992(n)`
-/

namespace A292741.P8020715760337461877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A156953 n).toNat + A003992 n

end

end A292741.P8020715760337461877

/-! ## A292741.P8856234103681283419

`A335875(A249027(n+1))+A003992(n)`
-/

namespace A292741.P8856234103681283419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335875 (A249027 (n + 1)).toNat + A003992 n

end

end A292741.P8856234103681283419

/-! ## A292741.P507778197039285934

`A350364(n)+A214566(A245397(n))`
-/

namespace A292741.P507778197039285934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350364 n + A214566 (A245397 n).toNat

end

end A292741.P507778197039285934

/-!
# A292744: a(0) = 1; a(n) = Sum_{k=1..n} prime(k+1)*a(n-k).

The programs for A292744, there is no canonical definition to state claims against.
-/

/-! ## A292744.P15454529607917570664

`A029920(A152124(n+1))`
-/

namespace A292744.P15454529607917570664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029920 (A152124 (n + 1)).toNat

end

end A292744.P15454529607917570664

/-! ## A292744.P17775542124219964468

`A057358(A151262(n)+A126473(n))`
-/

namespace A292744.P17775542124219964468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057358 (A151262 n + A126473 n).toNat

end

end A292744.P17775542124219964468

/-!
# A292745: Number A(n,k) of partitions of n with k sorts of part 1 which are introduced in ascending order; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A292745, there is no canonical definition to state claims against.
-/

/-! ## A292745.P11323747640222243552

`or(A055396(A264859(n+1)), A293108(n))`
-/

namespace A292745.P11323747640222243552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055396 (A264859 (n + 1)).toNat) (A293108 n)

end

end A292745.P11323747640222243552

/-! ## A292745.P12252942833996057183

`A347697(A347699(n+1)+A137865(n))`
-/

namespace A292745.P12252942833996057183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A347699 (n + 1) + A137865 n).toNat

end

end A292745.P12252942833996057183

/-! ## A292745.P12952342970558848862

`A347697(A347699(n+1)+A143841(n))`
-/

namespace A292745.P12952342970558848862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A347699 (n + 1) + A143841 n).toNat

end

end A292745.P12952342970558848862

/-! ## A292745.P8029965086796378606

`A347697(A347699(n+1)+A182172(n))`
-/

namespace A292745.P8029965086796378606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A347699 (n + 1) + A182172 n).toNat

end

end A292745.P8029965086796378606

/-! ## A292745.P7072230000884871035

`A347697(A347699(n+1)+A262163(n))`
-/

namespace A292745.P7072230000884871035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A347699 (n + 1) + A262163 n).toNat

end

end A292745.P7072230000884871035

/-!
# A292747: Number of partitions of 2n with exactly n kinds of 1's which are introduced in ascending order.

The programs for A292747, there is no canonical definition to state claims against.
-/

/-! ## A292747.P2604235057765961987

`A292746(∑[4*n])`
-/

namespace A292747.P2604235057765961987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292747.P2604235057765961987

/-! ## A292747.P112889900596876934

`A292746(A046092(n))+A025439(n)`
-/

namespace A292747.P112889900596876934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292746 (A046092 n).toNat + A025439 n

end

end A292747.P112889900596876934

/-! ## A292747.P17680010057648560526

`A292746(A046092(n))^A178489(n)`
-/

namespace A292747.P17680010057648560526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292746 (A046092 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A292747.P17680010057648560526

/-! ## A292747.P15385827102399484626

`lcm(A033999(n), A292746(A046092(n)))`
-/

namespace A292747.P15385827102399484626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A292746 (A046092 n).toNat)

end

end A292747.P15385827102399484626

/-! ## A292747.P7717497597550076083

`or(A000007(n), A292746(A046092(n)))`
-/

namespace A292747.P7717497597550076083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A292746 (A046092 n).toNat)

end

end A292747.P7717497597550076083

/-!
# A292748: Number of 4-good trees with n nodes.

The programs for A292748, there is no canonical definition to state claims against.
-/

/-! ## A292748.P995409430096927796

`A085861(A000699(n))+A084784(n)`
-/

namespace A292748.P995409430096927796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085861 (A000699 n).toNat + A084784 n

end

end A292748.P995409430096927796

/-! ## A292748.P7497339394830785916

`A074796(A207386(n)+A014623(n))`
-/

namespace A292748.P7497339394830785916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074796 (A207386 n + A014623 n).toNat

end

end A292748.P7497339394830785916

/-! ## A292748.P17962879287524614912

`A286743(n+1)+A162717(A020130(n))`
-/

namespace A292748.P17962879287524614912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286743 (n + 1) + A162717 (A020130 n).toNat

end

end A292748.P17962879287524614912

/-!
# A292749: Number of 6-good trees with n nodes.

The programs for A292749, there is no canonical definition to state claims against.
-/

/-! ## A292749.P6746604485951854957

`A333160(A000579(n))+A033312(n)`
-/

namespace A292749.P6746604485951854957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333160 (A000579 n).toNat + A033312 n

end

end A292749.P6746604485951854957

/-! ## A292749.P11230787990260667923

`A000142(n)-A214283(A309860(n))`
-/

namespace A292749.P11230787990260667923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A214283 (A309860 n).toNat

end

end A292749.P11230787990260667923

/-! ## A292749.P8849399478509230609

`A025443(A052440(n+1))+A000142(n)`
-/

namespace A292749.P8849399478509230609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (A052440 (n + 1)).toNat + A000142 n

end

end A292749.P8849399478509230609

/-! ## A292749.P7626349212210518753

`A058129(A241705(n+1))+A000142(n)`
-/

namespace A292749.P7626349212210518753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058129 (A241705 (n + 1)).toNat + A000142 n

end

end A292749.P7626349212210518753

/-!
# A292751: a(n) = n!*A063019(n).

The programs for A292751, there is no canonical definition to state claims against.
-/

/-! ## A292751.P13452519489164536036

`n!*A063019(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292751.P13452519489164536036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A063019 n

end

end A292751.P13452519489164536036

/-! ## A292751.P17312292357632412523

`A000142(n)*A063019(n)`
-/

namespace A292751.P17312292357632412523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A063019 n

end

end A292751.P17312292357632412523

/-! ## A292751.P4219502302077968901

`A063019(n)*A081123(2*n)`
-/

namespace A292751.P4219502302077968901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063019 n * A081123 (2 * n)

end

end A292751.P4219502302077968901

/-!
# A292752: Dimensions of centralizer algebras of groups associated with Z_4-codes.

The programs for A292752, the canonical program `A292752.P567711466443877126` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292752 has offset 0).

The definition of A292752 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292752.P17618053230130706325

`ogf((1-14x+47x^2-15x^3)/(1-15x+59x^2-45x^3))`
-/

namespace A292752.P17618053230130706325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -14, 47, -15] [1, -15, 59, -45] n

end

end A292752.P17618053230130706325

namespace A292752

/-- `ogf((1-14x+47x^2-15x^3)/(1-15x+59x^2-45x^3))` -/
def P17618053230130706325.Spec : Prop :=
  ∀ n, P17618053230130706325.a n = A292752 n

end A292752

/-! ## A292752.P567711466443877126

`15*a(n-1)-59*a(n-2)+45*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=16`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A292752

/-- `15*a(n-1)-59*a(n-2)+45*a(n-3)` -/
def P567711466443877126.Spec : Prop :=
  ∀ n, P567711466443877126.a n = A292752 n

theorem P567711466443877126.correct : P567711466443877126.Spec := by
  intro n
  simp only [A292752]

end A292752

/-!
# A292756: Expansion of e.g.f. exp(x)*(tan(x)+sec(x))^2.

The programs for A292756, there is no canonical definition to state claims against.
-/

/-! ## A292756.P3813775725714980958

`2*A348580(n)-1`
-/

namespace A292756.P3813775725714980958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A348580 n - 1

end

end A292756.P3813775725714980958

/-! ## A292756.P9721064154361635756

`Δ[2*A000667(n)]-1`
-/

namespace A292756.P9721064154361635756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A292756.P9721064154361635756

/-! ## A292756.P10216760278515782737

`A057428(n+1)+2*A348580(n)`
-/

namespace A292756.P10216760278515782737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + 2 * A348580 n

end

end A292756.P10216760278515782737

/-! ## A292756.P12738377526636139746

`A089263(A004767(n))+Δ[2*A000667(n)]`
-/

namespace A292756.P12738377526636139746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (A004767 n).toNat + (f1 (n + 1) - f1 n)

end

end A292756.P12738377526636139746

/-! ## A292756.P14608828794798469049

`A008683(A005382(n+1))+2*A348580(n)`
-/

namespace A292756.P14608828794798469049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005382 (n + 1)).toNat + 2 * A348580 n

end

end A292756.P14608828794798469049

/-! ## A292756.P17251583655076233321

`A008683(A205673(n+1))+2*A348580(n)`
-/

namespace A292756.P17251583655076233321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A205673 (n + 1)).toNat + 2 * A348580 n

end

end A292756.P17251583655076233321

/-! ## A292756.P144162225010155908

`A008683(A064917(n+2))+2*A348580(n)`
-/

namespace A292756.P144162225010155908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A064917 (n + 2)).toNat + 2 * A348580 n

end

end A292756.P144162225010155908

/-!
# A292757: Expansion of e.g.f. exp(x)*(1+tan(x))/((1-tan(x))*(tan(x)+sec(x))).

The programs for A292757, there is no canonical definition to state claims against.
-/

/-! ## A292757.P10952601608847460422

`A204892(A326887(n))-1`
-/

namespace A292757.P10952601608847460422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A326887 n).toNat - 1

end

end A292757.P10952601608847460422

/-! ## A292757.P3330332858951174764

`A003963(or(2, A015564(n)))`
-/

namespace A292757.P3330332858951174764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lor 2 (A015564 n)).toNat

end

end A292757.P3330332858951174764

/-!
# A292758: Expansion of e.g.f. (tan x + sec x)^3.

The programs for A292758, there is no canonical definition to state claims against.
-/

/-! ## A292758.P1687532415717398023

`A006212(n)+A000111(n+2)`
-/

namespace A292758.P1687532415717398023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006212 n + A000111 (n + 2)

end

end A292758.P1687532415717398023

/-! ## A292758.P487483823273970473

`A001250(n+2)-A000111(n)`
-/

namespace A292758.P487483823273970473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001250 (n + 2) - A000111 n

end

end A292758.P487483823273970473

/-! ## A292758.P5775898175742818136

`A006216(n)-A000111(n+2)`
-/

namespace A292758.P5775898175742818136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006216 n - A000111 (n + 2)

end

end A292758.P5775898175742818136

/-! ## A292758.P2553286848616468929

`A260786(n+2)-A000111(n)`
-/

namespace A292758.P2553286848616468929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260786 (n + 2) - A000111 n

end

end A292758.P2553286848616468929

/-! ## A292758.P16848238321892483275

`A001250(n+2)-A109449(∑[n])`
-/

namespace A292758.P16848238321892483275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001250 (n + 2) - A109449 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292758.P16848238321892483275

/-!
# A292759: Expansion of e.g.f. exp(x)*(tan x + sec x)^3.

The programs for A292759, there is no canonical definition to state claims against.
-/

/-! ## A292759.P16747030861626444114

`Δ[A292756(n)]-A000667(n)`
-/

namespace A292759.P16747030861626444114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000667 n

end

end A292759.P16747030861626444114

/-! ## A292759.P7188425366211030720

`Δ[A292756(n)]-A292975(∑[n+2]-1)`
-/

namespace A292759.P7188425366211030720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292756 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A292975 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

end

end A292759.P7188425366211030720

/-! ## A292759.P2578429352840415063

`Δ[A292756(n)]-A231179(n+1)/(n+1)`
-/

namespace A292759.P2578429352840415063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292756 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) - (A231179 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A292759.P2578429352840415063

/-! ## A292759.P84563154997995061

`Δ[A292756(n)]-(A009739(n)+A003701(n))`
-/

namespace A292759.P84563154997995061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A009739 n + A003701 n)

end

end A292759.P84563154997995061

/-! ## A292759.P8209122738942116245

`Δ[A292756(n)]-(A062272(n)+A062161(n))`
-/

namespace A292759.P8209122738942116245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A062272 n + A062161 n)

end

end A292759.P8209122738942116245

/-! ## A292759.P8034572564631487616

`A292756(n+1)-(A292756(n)+A000667(n))`
-/

namespace A292759.P8034572564631487616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292756 (n + 1) - (A292756 n + A000667 n)

end

end A292759.P8034572564631487616

/-!
# A292760: Expansion of e.g.f. (tan x + sec x)*(E.g.f. for A000738).

The programs for A292760, there is no canonical definition to state claims against.
-/

/-! ## A292760.P13789113943875442678

`∑[A340764(A003645(n))]`
-/

namespace A292760.P13789113943875442678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A003645 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292760.P13789113943875442678

/-! ## A292760.P11621595034630974091

`A156685(A150743(n+1))`
-/

namespace A292760.P11621595034630974091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156685 (A150743 (n + 1)).toNat

end

end A292760.P11621595034630974091

/-!
# A292761: Expansion of e.g.f. (tan x + sec x)^2*(E.g.f. for A000738).

The programs for A292761, there is no canonical definition to state claims against.
-/

/-! ## A292761.P3725995959722754409

`A140106(or(A204199(n+1), A204208(n+1)))`
-/

namespace A292761.P3725995959722754409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (Int.lor (A204199 (n + 1)) (A204208 (n + 1))).toNat

end

end A292761.P3725995959722754409

/-! ## A292761.P15400407031000326535

`A099802(A002893(n))-(n+1)^A001221(n+1)`
-/

namespace A292761.P15400407031000326535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099802 (A002893 n).toNat : ℚ) - (n + 1 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A292761.P15400407031000326535

/-!
# A292762: Numbers of the form p^k or 2*p^k, where p is a prime == 3 mod 4 and k is odd.

The programs for A292762, the canonical program `A292762.P7139243062585099352` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292762 has offset 1).

The definition of A292762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4970 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292762.P3397337724654110167

`filter[A066499(n+1), A324903(#)]`
-/

namespace A292762.P3397337724654110167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A292762.P3397337724654110167

namespace A292762

/-- `filter[A066499(n+1), A324903(#)]` -/
def P3397337724654110167.Spec : Prop :=
  ∀ n, P3397337724654110167.a n = A292762 (n + 1)

end A292762

/-! ## A292762.P14363209428024949936

`filter[A097987(n+1), A324903(#)]`
-/

namespace A292762.P14363209428024949936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A292762.P14363209428024949936

namespace A292762

/-- `filter[A097987(n+1), A324903(#)]` -/
def P14363209428024949936.Spec : Prop :=
  ∀ n, P14363209428024949936.a n = A292762 (n + 1)

end A292762

/-! ## A292762.P15413918086588989100

`filter[A065156(n+1), A354029(#)]`
-/

namespace A292762.P15413918086588989100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A292762.P15413918086588989100

namespace A292762

/-- `filter[A065156(n+1), A354029(#)]` -/
def P15413918086588989100.Spec : Prop :=
  ∀ n, P15413918086588989100.a n = A292762 (n + 1)

end A292762

/-! ## A292762.P16506282572137491283

`filter[A066499(n+1), A354029(#)]`
-/

namespace A292762.P16506282572137491283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A292762.P16506282572137491283

namespace A292762

/-- `filter[A066499(n+1), A354029(#)]` -/
def P16506282572137491283.Spec : Prop :=
  ∀ n, P16506282572137491283.a n = A292762 (n + 1)

end A292762

/-! ## A292762.P14169496942806891647

`filter[A066499(n+1), A354032(#)]`
-/

namespace A292762.P14169496942806891647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354032 (f1 j).toNat = 1) n)

end

end A292762.P14169496942806891647

namespace A292762

/-- `filter[A066499(n+1), A354032(#)]` -/
def P14169496942806891647.Spec : Prop :=
  ∀ n, P14169496942806891647.a n = A292762 (n + 1)

end A292762

/-! ## A292762.P7291849481003461498

`filter[A097987(n+1), A354029(#)]`
-/

namespace A292762.P7291849481003461498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A292762.P7291849481003461498

namespace A292762

/-- `filter[A097987(n+1), A354029(#)]` -/
def P7291849481003461498.Spec : Prop :=
  ∀ n, P7291849481003461498.a n = A292762 (n + 1)

end A292762

/-! ## A292762.P10695942371682665340

`filter[A097987(n+2), A354032(#)]`
-/

namespace A292762.P10695942371682665340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354032 (f1 j).toNat = 1) n)

end

end A292762.P10695942371682665340

namespace A292762

/-- `filter[A097987(n+2), A354032(#)]` -/
def P10695942371682665340.Spec : Prop :=
  ∀ n, P10695942371682665340.a n = A292762 (n + 1)

end A292762

/-! ## A292762.P10382203144885166590

`filter[A066499(n+1), A295316(#)]`
-/

namespace A292762.P10382203144885166590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A292762.P10382203144885166590

namespace A292762

/-- `filter[A066499(n+1), A295316(#)]` -/
def P10382203144885166590.Spec : Prop :=
  ∀ n, P10382203144885166590.a n = A292762 (n + 1)

end A292762

/-! ## A292762.P17500624378061979886

`filter[A097987(n+3), A295316(#)]`
-/

namespace A292762.P17500624378061979886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A292762.P17500624378061979886

namespace A292762

/-- `filter[A097987(n+3), A295316(#)]` -/
def P17500624378061979886.Spec : Prop :=
  ∀ n, P17500624378061979886.a n = A292762 (n + 1)

end A292762

/-! ## A292762.P7139243062585099352

`filter[A033948(n+1), A354029(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A292762

/-- `filter[A033948(n+1), A354029(#)]` -/
def P7139243062585099352.Spec : Prop :=
  ∀ n, P7139243062585099352.a n = A292762 (n + 1)

theorem P7139243062585099352.correct : P7139243062585099352.Spec := by
  intro n
  simp only [A292762, Nat.add_sub_cancel]

end A292762

/-! ## A292762.P12349688533094065168

`filter[A344180(n), A354029(#)]`
-/

namespace A292762.P12349688533094065168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A292762.P12349688533094065168

namespace A292762

/-- `filter[A344180(n), A354029(#)]` -/
def P12349688533094065168.Spec : Prop :=
  ∀ n, P12349688533094065168.a n = A292762 (n + 1)

end A292762

/-! ## A292762.P9647103853145484238

`filter[A004144(n+1), A354029(#)]`
-/

namespace A292762.P9647103853145484238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A292762.P9647103853145484238

namespace A292762

/-- `filter[A004144(n+1), A354029(#)]` -/
def P9647103853145484238.Spec : Prop :=
  ∀ n, P9647103853145484238.a n = A292762 (n + 1)

end A292762

/-! ## A292762.P2001755010241137025

`filter[A004144(n+2), A354032(#)]`
-/

namespace A292762.P2001755010241137025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354032 (f1 j).toNat = 1) n)

end

end A292762.P2001755010241137025

namespace A292762

/-- `filter[A004144(n+2), A354032(#)]` -/
def P2001755010241137025.Spec : Prop :=
  ∀ n, P2001755010241137025.a n = A292762 (n + 1)

end A292762

/-! ## A292762.P4895428853936909708

`eq[1, A354029(n+1)]+1`
-/

namespace A292762.P4895428853936909708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354029 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A292762.P4895428853936909708

namespace A292762

/-- `eq[1, A354029(n+1)]+1` -/
def P4895428853936909708.Spec : Prop :=
  ∀ n, (P4895428853936909708.a n : ℤ) = A292762 (n + 1)

end A292762

/-! ## A292762.P9577845569798709619

`filter[A319702(n+1), A354029(#)]`
-/

namespace A292762.P9577845569798709619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A292762.P9577845569798709619

namespace A292762

/-- `filter[A319702(n+1), A354029(#)]` -/
def P9577845569798709619.Spec : Prop :=
  ∀ n, P9577845569798709619.a n = A292762 (n + 1)

end A292762

/-! ## A292762.P6525031585905977202

`filter[A336101(n+1), A354029(#)]`
-/

namespace A292762.P6525031585905977202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A292762.P6525031585905977202

namespace A292762

/-- `filter[A336101(n+1), A354029(#)]` -/
def P6525031585905977202.Spec : Prop :=
  ∀ n, P6525031585905977202.a n = A292762 (n + 1)

end A292762

/-! ## A292762.P18097892445821035311

`filter[A070776(n+1), A354029(#)]`
-/

namespace A292762.P18097892445821035311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A292762.P18097892445821035311

namespace A292762

/-- `filter[A070776(n+1), A354029(#)]` -/
def P18097892445821035311.Spec : Prop :=
  ∀ n, P18097892445821035311.a n = A292762 (n + 1)

end A292762

/-! ## A292762.P7141174761489406300

`filter[A305980(n+1), A354029(#)]`
-/

namespace A292762.P7141174761489406300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A292762.P7141174761489406300

namespace A292762

/-- `filter[A305980(n+1), A354029(#)]` -/
def P7141174761489406300.Spec : Prop :=
  ∀ n, P7141174761489406300.a n = A292762 (n + 1)

end A292762

/-! ## A292762.P10649291017525072185

`filter[A342256(n+1), A354029(#)]`
-/

namespace A292762.P10649291017525072185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A292762.P10649291017525072185

namespace A292762

/-- `filter[A342256(n+1), A354029(#)]` -/
def P10649291017525072185.Spec : Prop :=
  ∀ n, P10649291017525072185.a n = A292762 (n + 1)

end A292762

/-! ## A292762.P3395963148348649469

`filter[A081754(n+1), A354029(#)]`
-/

namespace A292762.P3395963148348649469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A292762.P3395963148348649469

namespace A292762

/-- `filter[A081754(n+1), A354029(#)]` -/
def P3395963148348649469.Spec : Prop :=
  ∀ n, P3395963148348649469.a n = A292762 (n + 1)

end A292762

/-!
# A292763: Numbers m such that sigma(m)+phi(m) == 2 mod 4.

The programs for A292763, the canonical program `A292763.P17011171486369911549` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292763 has offset 1).

The definition of A292763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292763.P17011171486369911549

`eq[1, A354032(n+1)]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A292763

/-- `eq[1, A354032(n+1)]+1` -/
def P17011171486369911549.Spec : Prop :=
  ∀ n, (P17011171486369911549.a n : ℤ) = A292763 (n + 1)

theorem P17011171486369911549.correct : P17011171486369911549.Spec := by
  intro n
  simp only [A292763, Nat.add_sub_cancel]

end A292763

/-! ## A292763.P12067723221101351859

`filter[A285801(n+1), A354032(#)]`
-/

namespace A292763.P12067723221101351859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354032 (f1 j).toNat = 1) n)

end

end A292763.P12067723221101351859

namespace A292763

/-- `filter[A285801(n+1), A354032(#)]` -/
def P12067723221101351859.Spec : Prop :=
  ∀ n, P12067723221101351859.a n = A292763 (n + 1)

end A292763

/-! ## A292763.P17068078862427822025

`record[A000027(n+1)*A354032(n+1)]`
-/

namespace A292763.P17068078862427822025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A354032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292763.P17068078862427822025

namespace A292763

/-- `record[A000027(n+1)*A354032(n+1)]` -/
def P17068078862427822025.Spec : Prop :=
  ∀ n, P17068078862427822025.a n = A292763 (n + 1)

end A292763

/-! ## A292763.P6349095429980245321

`filter[A164514(n+1), A354032(#)]`
-/

namespace A292763.P6349095429980245321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354032 (f1 j).toNat = 1) n)

end

end A292763.P6349095429980245321

namespace A292763

/-- `filter[A164514(n+1), A354032(#)]` -/
def P6349095429980245321.Spec : Prop :=
  ∀ n, P6349095429980245321.a n = A292763 (n + 1)

end A292763

/-! ## A292763.P8581197120763026232

`filter[A183300(n+1), A354032(#)]`
-/

namespace A292763.P8581197120763026232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354032 (f1 j).toNat = 1) n)

end

end A292763.P8581197120763026232

namespace A292763

/-- `filter[A183300(n+1), A354032(#)]` -/
def P8581197120763026232.Spec : Prop :=
  ∀ n, P8581197120763026232.a n = A292763 (n + 1)

end A292763

/-! ## A292763.P9185876060779798108

`filter[A213367(n+1), A354032(#)]`
-/

namespace A292763.P9185876060779798108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354032 (f1 j).toNat = 1) n)

end

end A292763.P9185876060779798108

namespace A292763

/-- `filter[A213367(n+1), A354032(#)]` -/
def P9185876060779798108.Spec : Prop :=
  ∀ n, P9185876060779798108.a n = A292763 (n + 1)

end A292763

/-! ## A292763.P8765794143474198336

`filter[A138591(n+1), A354032(#)]`
-/

namespace A292763.P8765794143474198336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354032 (f1 j).toNat = 1) n)

end

end A292763.P8765794143474198336

namespace A292763

/-- `filter[A138591(n+1), A354032(#)]` -/
def P8765794143474198336.Spec : Prop :=
  ∀ n, P8765794143474198336.a n = A292763 (n + 1)

end A292763

/-! ## A292763.P3567419863597399944

`filter[A163162(n+1), A354032(#)]`
-/

namespace A292763.P3567419863597399944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354032 (f1 j).toNat = 1) n)

end

end A292763.P3567419863597399944

namespace A292763

/-- `filter[A163162(n+1), A354032(#)]` -/
def P3567419863597399944.Spec : Prop :=
  ∀ n, P3567419863597399944.a n = A292763 (n + 1)

end A292763

/-! ## A292763.P8131306115364845095

`eq[2, A065387(n+1)%4]+1`
-/

namespace A292763.P8131306115364845095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065387 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A292763.P8131306115364845095

namespace A292763

/-- `eq[2, A065387(n+1)%4]+1` -/
def P8131306115364845095.Spec : Prop :=
  ∀ n, (P8131306115364845095.a n : ℤ) = A292763 (n + 1)

end A292763

/-! ## A292763.P5654352260703816828

`filter[A143051(n+1), A354032(#)]`
-/

namespace A292763.P5654352260703816828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354032 (f1 j).toNat = 1) n)

end

end A292763.P5654352260703816828

namespace A292763

/-- `filter[A143051(n+1), A354032(#)]` -/
def P5654352260703816828.Spec : Prop :=
  ∀ n, P5654352260703816828.a n = A292763 (n + 1)

end A292763

/-! ## A292763.P11458230114652111954

`filter[A153152(n+1), A354032(#)]`
-/

namespace A292763.P11458230114652111954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354032 (f1 j).toNat = 1) n)

end

end A292763.P11458230114652111954

namespace A292763

/-- `filter[A153152(n+1), A354032(#)]` -/
def P11458230114652111954.Spec : Prop :=
  ∀ n, P11458230114652111954.a n = A292763 (n + 1)

end A292763

/-! ## A292763.P91857601872467879

`filter[A078881(n+1), A354032(#)]`
-/

namespace A292763.P91857601872467879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354032 (f1 j).toNat = 1) n)

end

end A292763.P91857601872467879

namespace A292763

/-- `filter[A078881(n+1), A354032(#)]` -/
def P91857601872467879.Spec : Prop :=
  ∀ n, P91857601872467879.a n = A292763 (n + 1)

end A292763

/-! ## A292763.P10901821048741982662

`filter[A199332(n+1), A354032(#)]`
-/

namespace A292763.P10901821048741982662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354032 (f1 j).toNat = 1) n)

end

end A292763.P10901821048741982662

namespace A292763

/-- `filter[A199332(n+1), A354032(#)]` -/
def P10901821048741982662.Spec : Prop :=
  ∀ n, P10901821048741982662.a n = A292763 (n + 1)

end A292763

/-! ## A292763.P7604198060053043397

`filter[A038459(n+1), A354032(#)]`
-/

namespace A292763.P7604198060053043397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354032 (f1 j).toNat = 1) n)

end

end A292763.P7604198060053043397

namespace A292763

/-- `filter[A038459(n+1), A354032(#)]` -/
def P7604198060053043397.Spec : Prop :=
  ∀ n, P7604198060053043397.a n = A292763 (n + 1)

end A292763

/-! ## A292763.P13847606557785880249

`eq[2, A001511(A000203(n+1)+A000010(n+1))]+1`
-/

namespace A292763.P13847606557785880249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A000203 (n + 1) + A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A292763.P13847606557785880249

namespace A292763

/-- `eq[2, A001511(A000203(n+1)+A000010(n+1))]+1` -/
def P13847606557785880249.Spec : Prop :=
  ∀ n, (P13847606557785880249.a n : ℤ) = A292763 (n + 1)

end A292763

/-! ## A292763.P13409941299322617866

`record[A008621(n)*A354032(A008621(n))]`
-/

namespace A292763.P13409941299322617866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n * A354032 (A008621 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292763.P13409941299322617866

namespace A292763

/-- `record[A008621(n)*A354032(A008621(n))]` -/
def P13409941299322617866.Spec : Prop :=
  ∀ n, P13409941299322617866.a n = A292763 (n + 1)

end A292763

/-! ## A292763.P6306696012346279348

`filter[A137442(n+1), A354032(#)]`
-/

namespace A292763.P6306696012346279348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354032 (f1 j).toNat = 1) n)

end

end A292763.P6306696012346279348

namespace A292763

/-- `filter[A137442(n+1), A354032(#)]` -/
def P6306696012346279348.Spec : Prop :=
  ∀ n, P6306696012346279348.a n = A292763 (n + 1)

end A292763

/-!
# A292764: Minimal number of moves for the cyclic variant of Hanoi's tower for 4 pegs and n disks, with the final peg two steps away.

The programs for A292764, the canonical program `A292764.P9377582607670578857` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292764 has offset 1).

The definition of A292764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 432 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292764.P9377582607670578857

`ogf((2+6x+8x^2+8x^3+4x^4+4x^5+4x^6-4x^9)/(1-x-x^2-x^3+2x^5))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A292764

/-- `ogf((2+6x+8x^2+8x^3+4x^4+4x^5+4x^6-4x^9)/(1-x-x^2-x^3+2x^5))` -/
def P9377582607670578857.Spec : Prop :=
  ∀ n, P9377582607670578857.a n = A292764 (n + 1)

theorem P9377582607670578857.correct : P9377582607670578857.Spec := by
  intro n
  simp only [A292764, Nat.add_sub_cancel]

end A292764

/-! ## A292764.P7979333026460756442

`2*A292765(n+1)`
-/

namespace A292764.P7979333026460756442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292765 (n + 1)

end

end A292764.P7979333026460756442

namespace A292764

/-- `2*A292765(n+1)` -/
def P7979333026460756442.Spec : Prop :=
  ∀ n, P7979333026460756442.a n = A292764 (n + 1)

end A292764

/-! ## A292764.P9489049246075363849

`∑{d}[A151800(n), A292765(A076820(#)+n)]`
-/

namespace A292764.P9489049246075363849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A292765 (A076820 d + (n : ℤ)).toNat

end

end A292764.P9489049246075363849

namespace A292764

/-- `∑{d}[A151800(n), A292765(A076820(#)+n)]` -/
def P9489049246075363849.Spec : Prop :=
  ∀ n, P9489049246075363849.a n = A292764 (n + 1)

end A292764

/-! ## A292764.P11973380054454807847

`A292765(A000027(n+1))+A292765(n+1)`
-/

namespace A292764.P11973380054454807847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292765 (A000027 (n + 1)).toNat + A292765 (n + 1)

end

end A292764.P11973380054454807847

namespace A292764

/-- `A292765(A000027(n+1))+A292765(n+1)` -/
def P11973380054454807847.Spec : Prop :=
  ∀ n, P11973380054454807847.a n = A292764 (n + 1)

end A292764

/-! ## A292764.P13747861880718410789

`A292765(n+1)+or(A014025(n)², A292765(n+1))`
-/

namespace A292764.P13747861880718410789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292765 (n + 1) + Int.lor (A014025 n ^ 2) (A292765 (n + 1))

end

end A292764.P13747861880718410789

namespace A292764

/-- `A292765(n+1)+or(A014025(n)², A292765(n+1))` -/
def P13747861880718410789.Spec : Prop :=
  ∀ n, P13747861880718410789.a n = A292764 (n + 1)

end A292764

/-! ## A292764.P4530193340179009703

`A292765(n+1)+A292765(n+1)%A028403(n+1)`
-/

namespace A292764.P4530193340179009703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292765 (n + 1) + Int.tmod (A292765 (n + 1)) (A028403 (n + 1))

end

end A292764.P4530193340179009703

namespace A292764

/-- `A292765(n+1)+A292765(n+1)%A028403(n+1)` -/
def P4530193340179009703.Spec : Prop :=
  ∀ n, P4530193340179009703.a n = A292764 (n + 1)

end A292764

/-! ## A292764.P11801168242526593088

`∑{d}[A089348(n+1), A292765(A076820(#)+n)]`
-/

namespace A292764.P11801168242526593088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A292765 (A076820 d + (n : ℤ)).toNat

end

end A292764.P11801168242526593088

namespace A292764

/-- `∑{d}[A089348(n+1), A292765(A076820(#)+n)]` -/
def P11801168242526593088.Spec : Prop :=
  ∀ n, P11801168242526593088.a n = A292764 (n + 1)

end A292764

/-!
# A292765: A292764(n)/2.

The programs for A292765, the canonical program `A292765.P14869605051105197185` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292765 has offset 1).

The definition of A292765 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292764, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A292765.P14869605051105197185

`A292764(n+1)/2`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A292765

/-- `A292764(n+1)/2` -/
def P14869605051105197185.Spec : Prop :=
  ∀ n, P14869605051105197185.a n = (A292765 (n + 1) : ℚ)

end A292765

/-! ## A292765.P13424970631089102219

`record[A292764(A286544(n))/2]`
-/

namespace A292765.P13424970631089102219
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292764 (A286544 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292765.P13424970631089102219

namespace A292765

/-- `record[A292764(A286544(n))/2]` -/
def P13424970631089102219.Spec : Prop :=
  ∀ n, P13424970631089102219.a n = (A292765 (n + 1) : ℚ)

end A292765

/-! ## A292765.P17401266489947947388

`record[A292764(A328399(n))/2]`
-/

namespace A292765.P17401266489947947388
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292764 (A328399 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292765.P17401266489947947388

namespace A292765

/-- `record[A292764(A328399(n))/2]` -/
def P17401266489947947388.Spec : Prop :=
  ∀ n, P17401266489947947388.a n = (A292765 (n + 1) : ℚ)

end A292765

/-! ## A292765.P5564101955544662638

`ceil(A292764(A328399(2*n))/2)`
-/

namespace A292765.P5564101955544662638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A292764 (A328399 (2 * n)).toNat : ℚ) / 2⌉

end

end A292765.P5564101955544662638

namespace A292765

/-- `ceil(A292764(A328399(2*n))/2)` -/
def P5564101955544662638.Spec : Prop :=
  ∀ n, P5564101955544662638.a n = A292765 (n + 1)

end A292765

/-! ## A292765.P14168820603020856292

`record[A292764(A193592(n))/2]`
-/

namespace A292765.P14168820603020856292
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292764 (A193592 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292765.P14168820603020856292

namespace A292765

/-- `record[A292764(A193592(n))/2]` -/
def P14168820603020856292.Spec : Prop :=
  ∀ n, P14168820603020856292.a n = (A292765 (n + 1) : ℚ)

end A292765

/-!
# A292768: Partial sums of A065387.

The programs for A292768, the canonical program `A292768.P2945223017558604554` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292768 has offset 1).

The definition of A292768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292768.P17516788033826483303

`∑[A065387(n+1)]`
-/

namespace A292768.P17516788033826483303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292768.P17516788033826483303

namespace A292768

/-- `∑[A065387(n+1)]` -/
def P17516788033826483303.Spec : Prop :=
  ∀ n, P17516788033826483303.a n = A292768 (n + 1)

end A292768

/-! ## A292768.P9152187953978855104

`∑[A209187(n+1)+1+n]`
-/

namespace A292768.P9152187953978855104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209187 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292768.P9152187953978855104

namespace A292768

/-- `∑[A209187(n+1)+1+n]` -/
def P9152187953978855104.Spec : Prop :=
  ∀ n, P9152187953978855104.a n = A292768 (n + 1)

end A292768

/-! ## A292768.P75531208700067385

`∑[∑{d}[n+1, #]+A109606(n+1)+1]`
-/

namespace A292768.P75531208700067385
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) + (A109606 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292768.P75531208700067385

namespace A292768

/-- `∑[∑{d}[n+1, #]+A109606(n+1)+1]` -/
def P75531208700067385.Spec : Prop :=
  ∀ n, P75531208700067385.a n = A292768 (n + 1)

end A292768

/-! ## A292768.P13138665750322237943

`∑[∑{d}[n+1, #]+A039649(n+1)-1]`
-/

namespace A292768.P13138665750322237943
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) + (A039649 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292768.P13138665750322237943

namespace A292768

/-- `∑[∑{d}[n+1, #]+A039649(n+1)-1]` -/
def P13138665750322237943.Spec : Prop :=
  ∀ n, P13138665750322237943.a n = A292768 (n + 1)

end A292768

/-! ## A292768.P2945223017558604554

`∑[∑{d}[n+1, #*A007423((n+1)/#)]]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A292768

/-- `∑[∑{d}[n+1, #*A007423((n+1)/#)]]` -/
def P2945223017558604554.Spec : Prop :=
  ∀ n, P2945223017558604554.a n = A292768 (n + 1)

theorem P2945223017558604554.correct : P2945223017558604554.Spec := by
  intro n
  simp only [A292768, Nat.add_sub_cancel]

end A292768

/-! ## A292768.P4790092782708719168

`A024916(n+1)+A002088(n+1)`
-/

namespace A292768.P4790092782708719168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) + A002088 (n + 1)

end

end A292768.P4790092782708719168

namespace A292768

/-- `A024916(n+1)+A002088(n+1)` -/
def P4790092782708719168.Spec : Prop :=
  ∀ n, P4790092782708719168.a n = A292768 (n + 1)

end A292768

/-! ## A292768.P6299112207687692409

`A092249(n+1)+A024916(n+1)`
-/

namespace A292768.P6299112207687692409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092249 (n + 1) + A024916 (n + 1)

end

end A292768.P6299112207687692409

namespace A292768

/-- `A092249(n+1)+A024916(n+1)` -/
def P6299112207687692409.Spec : Prop :=
  ∀ n, P6299112207687692409.a n = A292768 (n + 1)

end A292768

/-! ## A292768.P8485797500537233891

`A366983(n+1)+A063088(n+1)`
-/

namespace A292768.P8485797500537233891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366983 (n + 1) + A063088 (n + 1)

end

end A292768.P8485797500537233891

namespace A292768

/-- `A366983(n+1)+A063088(n+1)` -/
def P8485797500537233891.Spec : Prop :=
  ∀ n, P8485797500537233891.a n = A292768 (n + 1)

end A292768

/-! ## A292768.P2456266607718509633

`A327329(n+1)-A292769(n+1)`
-/

namespace A292768.P2456266607718509633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327329 (n + 1) - A292769 (n + 1)

end

end A292768.P2456266607718509633

namespace A292768

/-- `A327329(n+1)-A292769(n+1)` -/
def P2456266607718509633.Spec : Prop :=
  ∀ n, P2456266607718509633.a n = A292768 (n + 1)

end A292768

/-! ## A292768.P1515947547649654099

`∑[A000203(n+1)+A000010(n+1)]`
-/

namespace A292768.P1515947547649654099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292768.P1515947547649654099

namespace A292768

/-- `∑[A000203(n+1)+A000010(n+1)]` -/
def P1515947547649654099.Spec : Prop :=
  ∀ n, P1515947547649654099.a n = A292768 (n + 1)

end A292768

/-! ## A292768.P8528620019750266572

`∑[A051709(n+1)+A005408(n)+1]`
-/

namespace A292768.P8528620019750266572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (n + 1) + (A005408 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292768.P8528620019750266572

namespace A292768

/-- `∑[A051709(n+1)+A005408(n)+1]` -/
def P8528620019750266572.Spec : Prop :=
  ∀ n, P8528620019750266572.a n = A292768 (n + 1)

end A292768

/-! ## A292768.P18051596687693997798

`A015614(n+1)+A024916(n+1)+1`
-/

namespace A292768.P18051596687693997798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1) + (A024916 (n + 1) + 1)

end

end A292768.P18051596687693997798

namespace A292768

/-- `A015614(n+1)+A024916(n+1)+1` -/
def P18051596687693997798.Spec : Prop :=
  ∀ n, P18051596687693997798.a n = A292768 (n + 1)

end A292768

/-! ## A292768.P929254407276031271

`∑[A000010(n+1)+∑[A340793(n+1)]]`
-/

namespace A292768.P929254407276031271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292768.P929254407276031271

namespace A292768

/-- `∑[A000010(n+1)+∑[A340793(n+1)]]` -/
def P929254407276031271.Spec : Prop :=
  ∀ n, P929254407276031271.a n = A292768 (n + 1)

end A292768

/-! ## A292768.P17655429154991151904

`∑[A051612(n+1)+2*A000010(n+1)]`
-/

namespace A292768.P17655429154991151904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1) + 2 * A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292768.P17655429154991151904

namespace A292768

/-- `∑[A051612(n+1)+2*A000010(n+1)]` -/
def P17655429154991151904.Spec : Prop :=
  ∀ n, P17655429154991151904.a n = A292768 (n + 1)

end A292768

/-! ## A292768.P16318661856030354921

`∑[A000027(∑{d}[n+1, #]+A000010(n+1))]`
-/

namespace A292768.P16318661856030354921
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) + A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292768.P16318661856030354921

namespace A292768

/-- `∑[A000027(∑{d}[n+1, #]+A000010(n+1))]` -/
def P16318661856030354921.Spec : Prop :=
  ∀ n, P16318661856030354921.a n = A292768 (n + 1)

end A292768

/-! ## A292768.P4812567955394538802

`∑[A000010(n+1)+A155085(n+1)-(n+1)]`
-/

namespace A292768.P4812567955394538802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A155085 (n + 1) - (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292768.P4812567955394538802

namespace A292768

/-- `∑[A000010(n+1)+A155085(n+1)-(n+1)]` -/
def P4812567955394538802.Spec : Prop :=
  ∀ n, P4812567955394538802.a n = A292768 (n + 1)

end A292768

/-! ## A292768.P17035439854712270393

`A002088(n+1)+A292769(n+1)+A002088(n+1)`
-/

namespace A292768.P17035439854712270393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) + (A292769 (n + 1) + A002088 (n + 1))

end

end A292768.P17035439854712270393

namespace A292768

/-- `A002088(n+1)+A292769(n+1)+A002088(n+1)` -/
def P17035439854712270393.Spec : Prop :=
  ∀ n, P17035439854712270393.a n = A292768 (n + 1)

end A292768

/-! ## A292768.P18360070622805506556

`A002088(n+1)+A271342(n+1)+A078471(n+1)`
-/

namespace A292768.P18360070622805506556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) + (A271342 (n + 1) + A078471 (n + 1))

end

end A292768.P18360070622805506556

namespace A292768

/-- `A002088(n+1)+A271342(n+1)+A078471(n+1)` -/
def P18360070622805506556.Spec : Prop :=
  ∀ n, P18360070622805506556.a n = A292768 (n + 1)

end A292768

/-! ## A292768.P5976766416195158639

`A399973(n+1)+A308095(n+1)+A002088(n+1)`
-/

namespace A292768.P5976766416195158639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399973 (n + 1) + A308095 (n + 1) + A002088 (n + 1)

end

end A292768.P5976766416195158639

namespace A292768

/-- `A399973(n+1)+A308095(n+1)+A002088(n+1)` -/
def P5976766416195158639.Spec : Prop :=
  ∀ n, P5976766416195158639.a n = A292768 (n + 1)

end A292768

/-! ## A292768.P8062506594974949705

`∑[A000203(n+1)+A003557(n+1)*A173557(n+1)]`
-/

namespace A292768.P8062506594974949705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A003557 (n + 1) * A173557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292768.P8062506594974949705

namespace A292768

/-- `∑[A000203(n+1)+A003557(n+1)*A173557(n+1)]` -/
def P8062506594974949705.Spec : Prop :=
  ∀ n, P8062506594974949705.a n = A292768 (n + 1)

end A292768

/-!
# A292769: Partial sums of A051612.

The programs for A292769, the canonical program `A292769.P7637608606255069320` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292769 has offset 1).

The definition of A292769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292769.P3342693672705127654

`∑[A051612(n+1)]`
-/

namespace A292769.P3342693672705127654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292769.P3342693672705127654

namespace A292769

/-- `∑[A051612(n+1)]` -/
def P3342693672705127654.Spec : Prop :=
  ∀ n, P3342693672705127654.a n = A292769 (n + 1)

theorem P3342693672705127654.correct : P3342693672705127654.Spec := by
  intro n
  simp only [A292769, Nat.add_sub_cancel, A292769.P3342693672705127654.f1, A292769.P3342693672705127654.a, A292769.P7637608606255069320.f1, A292769.P7637608606255069320.a, A051612, A051612.P4135239823752248514.a, A228947, A228947.P1027786129053480284.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292769

/-! ## A292769.P7637608606255069320

`∑[A228947(n+1)+1+n]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A292769

/-- `∑[A228947(n+1)+1+n]` -/
def P7637608606255069320.Spec : Prop :=
  ∀ n, P7637608606255069320.a n = A292769 (n + 1)

theorem P7637608606255069320.correct : P7637608606255069320.Spec := by
  intro n
  simp only [A292769, Nat.add_sub_cancel]

end A292769

/-! ## A292769.P6884100042011825583

`∑[∑{d}[n+1, #]-A000010(n+1)]`
-/

namespace A292769.P6884100042011825583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292769.P6884100042011825583

namespace A292769

/-- `∑[∑{d}[n+1, #]-A000010(n+1)]` -/
def P6884100042011825583.Spec : Prop :=
  ∀ n, P6884100042011825583.a n = A292769 (n + 1)

theorem P6884100042011825583.correct : P6884100042011825583.Spec := by
  intro n
  simp only [A292769, Nat.add_sub_cancel, A292769.P6884100042011825583.f2, A292769.P6884100042011825583.f1, A292769.P6884100042011825583.a, A292769.P7637608606255069320.f1, A292769.P7637608606255069320.a, A000010, A000010.P4673923239450215316.a, A228947, A228947.P1027786129053480284.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292769

/-! ## A292769.P11935037047045448497

`∑[∑{d}[n+1, #]-(A109606(n+1)+1)]`
-/

namespace A292769.P11935037047045448497
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (A109606 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292769.P11935037047045448497

namespace A292769

/-- `∑[∑{d}[n+1, #]-(A109606(n+1)+1)]` -/
def P11935037047045448497.Spec : Prop :=
  ∀ n, P11935037047045448497.a n = A292769 (n + 1)

theorem P11935037047045448497.correct : P11935037047045448497.Spec := by
  intro n
  simp only [A292769, Nat.add_sub_cancel, A292769.P11935037047045448497.f2, A292769.P11935037047045448497.f1, A292769.P11935037047045448497.a, A292769.P7637608606255069320.f1, A292769.P7637608606255069320.a, A109606, A109606.P2415810041766612210.a, A228947, A228947.P1027786129053480284.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292769

/-! ## A292769.P18015724169994516802

`∑[∑{d}[n+1, #]-(A039649(n+1)-1)]`
-/

namespace A292769.P18015724169994516802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (A039649 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292769.P18015724169994516802

namespace A292769

/-- `∑[∑{d}[n+1, #]-(A039649(n+1)-1)]` -/
def P18015724169994516802.Spec : Prop :=
  ∀ n, P18015724169994516802.a n = A292769 (n + 1)

theorem P18015724169994516802.correct : P18015724169994516802.Spec := by
  intro n
  simp only [A292769, Nat.add_sub_cancel, A292769.P18015724169994516802.f2, A292769.P18015724169994516802.f1, A292769.P18015724169994516802.a, A292769.P7637608606255069320.f1, A292769.P7637608606255069320.a, A039649, A039649.P16717312505280968063.a, A228947, A228947.P1027786129053480284.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292769

/-! ## A292769.P16248228013967756858

`A153485(n+1)+A063985(n+1)`
-/

namespace A292769.P16248228013967756858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153485 (n + 1) + A063985 (n + 1)

end

end A292769.P16248228013967756858

namespace A292769

/-- `A153485(n+1)+A063985(n+1)` -/
def P16248228013967756858.Spec : Prop :=
  ∀ n, P16248228013967756858.a n = A292769 (n + 1)

end A292769

/-! ## A292769.P2214440633653159134

`A024916(n+1)-A002088(n+1)`
-/

namespace A292769.P2214440633653159134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - A002088 (n + 1)

end

end A292769.P2214440633653159134

namespace A292769

/-- `A024916(n+1)-A002088(n+1)` -/
def P2214440633653159134.Spec : Prop :=
  ∀ n, P2214440633653159134.a n = A292769 (n + 1)

end A292769

/-! ## A292769.P14710237594643531815

`A024916(n+1)-A092249(n+1)`
-/

namespace A292769.P14710237594643531815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - A092249 (n + 1)

end

end A292769.P14710237594643531815

namespace A292769

/-- `A024916(n+1)-A092249(n+1)` -/
def P14710237594643531815.Spec : Prop :=
  ∀ n, P14710237594643531815.a n = A292769 (n + 1)

end A292769

/-! ## A292769.P5069308605391144794

`A160664(n+1)-A005728(n+1)`
-/

namespace A292769.P5069308605391144794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (n + 1) - A005728 (n + 1)

end

end A292769.P5069308605391144794

namespace A292769

/-- `A160664(n+1)-A005728(n+1)` -/
def P5069308605391144794.Spec : Prop :=
  ∀ n, P5069308605391144794.a n = A292769 (n + 1)

end A292769

/-! ## A292769.P2662909823786186792

`A236632(n+1)-A063088(n+1)`
-/

namespace A292769.P2662909823786186792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236632 (n + 1) - A063088 (n + 1)

end

end A292769.P2662909823786186792

namespace A292769

/-- `A236632(n+1)-A063088(n+1)` -/
def P2662909823786186792.Spec : Prop :=
  ∀ n, P2662909823786186792.a n = A292769 (n + 1)

end A292769

/-! ## A292769.P7505364010446975562

`A327329(n+1)-A292768(n+1)`
-/

namespace A292769.P7505364010446975562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327329 (n + 1) - A292768 (n + 1)

end

end A292769.P7505364010446975562

namespace A292769

/-- `A327329(n+1)-A292768(n+1)` -/
def P7505364010446975562.Spec : Prop :=
  ∀ n, P7505364010446975562.a n = A292769 (n + 1)

end A292769

/-! ## A292769.P11072183601009256799

`∑[A000203(n+1)-A000010(n+1)]`
-/

namespace A292769.P11072183601009256799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292769.P11072183601009256799

namespace A292769

/-- `∑[A000203(n+1)-A000010(n+1)]` -/
def P11072183601009256799.Spec : Prop :=
  ∀ n, P11072183601009256799.a n = A292769 (n + 1)

theorem P11072183601009256799.correct : P11072183601009256799.Spec := by
  intro n
  simp only [A292769, Nat.add_sub_cancel, A292769.P11072183601009256799.f1, A292769.P11072183601009256799.a, A292769.P7637608606255069320.f1, A292769.P7637608606255069320.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A228947, A228947.P1027786129053480284.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292769

/-! ## A292769.P11952999150709998078

`∑[A324047(n+1)-A324045(n+1)]`
-/

namespace A292769.P11952999150709998078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324047 (n + 1) - A324045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292769.P11952999150709998078

namespace A292769

/-- `∑[A324047(n+1)-A324045(n+1)]` -/
def P11952999150709998078.Spec : Prop :=
  ∀ n, P11952999150709998078.a n = A292769 (n + 1)

theorem P11952999150709998078.correct : P11952999150709998078.Spec := by
  intro n
  simp only [A292769, Nat.add_sub_cancel, A292769.P11952999150709998078.f1, A292769.P11952999150709998078.a, A292769.P7637608606255069320.f1, A292769.P7637608606255069320.a, A228947, A228947.P1027786129053480284.a, A324045, A324045.P1593717203067298836.a, A324047, A324047.P16299384145559739800.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033879, A033879.P5965131822542929609.a, A053158, A053158.P11533641159092355549.a, A106315, A106315.P6417438308466386050.f1, A106315.P6417438308466386050.f2, A106315.P6417438308466386050.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292769

/-! ## A292769.P17041302765265105641

`∑[A077101(n+1)/A065387(n+1)]`
-/

namespace A292769.P17041302765265105641
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077101 (n + 1) : ℚ) / (A065387 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292769.P17041302765265105641

namespace A292769

/-- `∑[A077101(n+1)/A065387(n+1)]` -/
def P17041302765265105641.Spec : Prop :=
  ∀ n, P17041302765265105641.a n = (A292769 (n + 1) : ℚ)

end A292769

/-! ## A292769.P11294819490192019010

`A024916(n+1)-(A015614(n+1)+1)`
-/

namespace A292769.P11294819490192019010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - (A015614 (n + 1) + 1)

end

end A292769.P11294819490192019010

namespace A292769

/-- `A024916(n+1)-(A015614(n+1)+1)` -/
def P11294819490192019010.Spec : Prop :=
  ∀ n, P11294819490192019010.a n = A292769 (n + 1)

end A292769

/-! ## A292769.P17581189268129523048

`∑[∑[A340793(n+1)]-A000010(n+1)]`
-/

namespace A292769.P17581189268129523048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292769.P17581189268129523048

namespace A292769

/-- `∑[∑[A340793(n+1)]-A000010(n+1)]` -/
def P17581189268129523048.Spec : Prop :=
  ∀ n, P17581189268129523048.a n = A292769 (n + 1)

end A292769

/-! ## A292769.P17165850281525243307

`∑[A065387(n+1)-2*A000010(n+1)]`
-/

namespace A292769.P17165850281525243307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (n + 1) - 2 * A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292769.P17165850281525243307

namespace A292769

/-- `∑[A065387(n+1)-2*A000010(n+1)]` -/
def P17165850281525243307.Spec : Prop :=
  ∀ n, P17165850281525243307.a n = A292769 (n + 1)

theorem P17165850281525243307.correct : P17165850281525243307.Spec := by
  intro n
  simp only [A292769, Nat.add_sub_cancel, A292769.P17165850281525243307.f1, A292769.P17165850281525243307.a, A292769.P7637608606255069320.f1, A292769.P7637608606255069320.a, A000010, A000010.P4673923239450215316.a, A065387, A065387.P11284875715279330998.a, A228947, A228947.P1027786129053480284.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292769

/-! ## A292769.P15251946516545154125

`∑[2*A000203(n+1)-A065387(n+1)]`
-/

namespace A292769.P15251946516545154125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1) - A065387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292769.P15251946516545154125

namespace A292769

/-- `∑[2*A000203(n+1)-A065387(n+1)]` -/
def P15251946516545154125.Spec : Prop :=
  ∀ n, P15251946516545154125.a n = A292769 (n + 1)

theorem P15251946516545154125.correct : P15251946516545154125.Spec := by
  intro n
  simp only [A292769, Nat.add_sub_cancel, A292769.P15251946516545154125.f1, A292769.P15251946516545154125.a, A292769.P7637608606255069320.f1, A292769.P7637608606255069320.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A065387, A065387.P11284875715279330998.a, A228947, A228947.P1027786129053480284.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292769

/-! ## A292769.P9234153248760717147

`∑[A064987(n+1)/(n+1)-A000010(n+1)]`
-/

namespace A292769.P9234153248760717147
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (A000010 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292769.P9234153248760717147

namespace A292769

/-- `∑[A064987(n+1)/(n+1)-A000010(n+1)]` -/
def P9234153248760717147.Spec : Prop :=
  ∀ n, P9234153248760717147.a n = (A292769 (n + 1) : ℚ)

theorem P9234153248760717147.correct : P9234153248760717147.Spec := by
  intro n
  simp only [A292769, Nat.add_sub_cancel, A292769.P9234153248760717147.f1, A292769.P9234153248760717147.a, A292769.P7637608606255069320.f1, A292769.P7637608606255069320.a, A000010, A000010.P4673923239450215316.a, A064987, A064987.P14181610018234257040.a, A228947, A228947.P1027786129053480284.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292769

/-! ## A292769.P11264434421818553461

`∑[A064987(n+1)/(n+1)-(A109606(n+1)+1)]`
-/

namespace A292769.P11264434421818553461
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (A109606 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292769.P11264434421818553461

namespace A292769

/-- `∑[A064987(n+1)/(n+1)-(A109606(n+1)+1)]` -/
def P11264434421818553461.Spec : Prop :=
  ∀ n, P11264434421818553461.a n = (A292769 (n + 1) : ℚ)

theorem P11264434421818553461.correct : P11264434421818553461.Spec := by
  intro n
  simp only [A292769, Nat.add_sub_cancel, A292769.P11264434421818553461.f1, A292769.P11264434421818553461.a, A292769.P7637608606255069320.f1, A292769.P7637608606255069320.a, A064987, A064987.P14181610018234257040.a, A109606, A109606.P2415810041766612210.a, A228947, A228947.P1027786129053480284.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292769

/-!
# A292770: If sigma(n)+phi(n) is even then a(n) = (sigma(n)+phi(n))/2 otherwise -1.

The programs for A292770, the canonical program `A292770.P13773517797988369441` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292770 has offset 1).

The definition of A292770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2879 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292770.P13773517797988369441

`A027656(A065387(n+1))-1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A292770

/-- `A027656(A065387(n+1))-1` -/
def P13773517797988369441.Spec : Prop :=
  ∀ n, P13773517797988369441.a n = A292770 (n + 1)

theorem P13773517797988369441.correct : P13773517797988369441.Spec := by
  intro n
  simp only [A292770, Nat.add_sub_cancel]

end A292770

/-! ## A292770.P3565817345169564822

`A158416(A065387(n+1)+2)-2`
-/

namespace A292770.P3565817345169564822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A065387 (n + 1) + 2).toNat - 2

end

end A292770.P3565817345169564822

namespace A292770

/-- `A158416(A065387(n+1)+2)-2` -/
def P3565817345169564822.Spec : Prop :=
  ∀ n, P3565817345169564822.a n = A292770 (n + 1)

end A292770

/-! ## A292770.P16020836905330885653

`A134824(n+2)+A027656(A065387(n+1))`
-/

namespace A292770.P16020836905330885653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A027656 (A065387 (n + 1)).toNat

end

end A292770.P16020836905330885653

namespace A292770

/-- `A134824(n+2)+A027656(A065387(n+1))` -/
def P16020836905330885653.Spec : Prop :=
  ∀ n, P16020836905330885653.a n = A292770 (n + 1)

end A292770

/-! ## A292770.P6531751962548587533

`A027656(A000010(n+1)+A000203(n+1))-1`
-/

namespace A292770.P6531751962548587533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A000010 (n + 1) + A000203 (n + 1)).toNat - 1

end

end A292770.P6531751962548587533

namespace A292770

/-- `A027656(A000010(n+1)+A000203(n+1))-1` -/
def P6531751962548587533.Spec : Prop :=
  ∀ n, P6531751962548587533.a n = A292770 (n + 1)

theorem P6531751962548587533.correct : P6531751962548587533.Spec := by
  intro n
  simp only [A292770, Nat.add_sub_cancel, A292770.P6531751962548587533.a, A292770.P13773517797988369441.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A027656, A027656.P3303400326036793752.a, A065387, A065387.P11284875715279330998.a, A003557, A003557.P6364735403900941810.a, A008619, A008619.P16053834178911111118.a, A059841, A059841.P7264174615531153985.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292770

/-! ## A292770.P9331874641373977951

`A033880(A034444(n+1))+A027656(A065387(n+1))`
-/

namespace A292770.P9331874641373977951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A034444 (n + 1)).toNat + A027656 (A065387 (n + 1)).toNat

end

end A292770.P9331874641373977951

namespace A292770

/-- `A033880(A034444(n+1))+A027656(A065387(n+1))` -/
def P9331874641373977951.Spec : Prop :=
  ∀ n, P9331874641373977951.a n = A292770 (n + 1)

end A292770

/-! ## A292770.P2135025276804535816

`A144432(∑[n+1])+A027656(A065387(n+1))`
-/

namespace A292770.P2135025276804535816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144432 (∑ j ∈ Finset.range (n + 1), f1 j) + A027656 (A065387 (n + 1)).toNat

end

end A292770.P2135025276804535816

namespace A292770

/-- `A144432(∑[n+1])+A027656(A065387(n+1))` -/
def P2135025276804535816.Spec : Prop :=
  ∀ n, P2135025276804535816.a n = A292770 (n + 1)

end A292770

/-!
# A292771: If sigma(n)-phi(n) is even then (sigma(n)-phi(n))/2 otherwise -1.

The programs for A292771, the canonical program `A292771.P12174660936694892643` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292771 has offset 1).

The definition of A292771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292771.P12174660936694892643

`A027656(A051612(n+1))-1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A292771

/-- `A027656(A051612(n+1))-1` -/
def P12174660936694892643.Spec : Prop :=
  ∀ n, P12174660936694892643.a n = A292771 (n + 1)

theorem P12174660936694892643.correct : P12174660936694892643.Spec := by
  intro n
  simp only [A292771, Nat.add_sub_cancel]

end A292771

/-! ## A292771.P14307372931333659159

`A057428(n+1)+A027656(A051612(n+1))`
-/

namespace A292771.P14307372931333659159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A027656 (A051612 (n + 1)).toNat

end

end A292771.P14307372931333659159

namespace A292771

/-- `A057428(n+1)+A027656(A051612(n+1))` -/
def P14307372931333659159.Spec : Prop :=
  ∀ n, P14307372931333659159.a n = A292771 (n + 1)

end A292771

/-! ## A292771.P2302835511675155033

`A027656(A000203(n+1)-A000010(n+1))-1`
-/

namespace A292771.P2302835511675155033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A000203 (n + 1) - A000010 (n + 1)).toNat - 1

end

end A292771.P2302835511675155033

namespace A292771

/-- `A027656(A000203(n+1)-A000010(n+1))-1` -/
def P2302835511675155033.Spec : Prop :=
  ∀ n, P2302835511675155033.a n = A292771 (n + 1)

end A292771

/-! ## A292771.P6535451632507670807

`A049347(A016777(n))+A027656(A051612(n+1))`
-/

namespace A292771.P6535451632507670807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A016777 n).toNat + A027656 (A051612 (n + 1)).toNat

end

end A292771.P6535451632507670807

namespace A292771

/-- `A049347(A016777(n))+A027656(A051612(n+1))` -/
def P6535451632507670807.Spec : Prop :=
  ∀ n, P6535451632507670807.a n = A292771 (n + 1)

end A292771

/-! ## A292771.P5780861937192743889

`A144432(A184389(n+1))+A027656(A051612(n+1))`
-/

namespace A292771.P5780861937192743889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144432 (A184389 (n + 1)).toNat + A027656 (A051612 (n + 1)).toNat

end

end A292771.P5780861937192743889

namespace A292771

/-- `A144432(A184389(n+1))+A027656(A051612(n+1))` -/
def P5780861937192743889.Spec : Prop :=
  ∀ n, P5780861937192743889.a n = A292771 (n + 1)

end A292771

/-!
# A292772: a(n) = cardinality of a certain set of natural numbers defined using A117818.

The programs for A292772, there is no canonical definition to state claims against.
-/

/-! ## A292772.P933226929501698243

`A274701(A018116(n+1))`
-/

namespace A292772.P933226929501698243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274701 (A018116 (n + 1)).toNat

end

end A292772.P933226929501698243

/-! ## A292772.P4666989016993654096

`A322901(floor(sqrt(A062092(n))))`
-/

namespace A292772.P4666989016993654096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322901 (Int.sqrt (A062092 n)).toNat

end

end A292772.P4666989016993654096

/-! ## A292772.P13529281182581645489

`A030530(A320356(n+2)-1)`
-/

namespace A292772.P13529281182581645489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (A320356 (n + 2) - 1).toNat

end

end A292772.P13529281182581645489

/-! ## A292772.P574831288672114762

`A167520(ceil(sqrt(A196423(n+1))))`
-/

namespace A292772.P574831288672114762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167520 ⌈Real.sqrt (A196423 (n + 1) : ℝ)⌉.toNat

end

end A292772.P574831288672114762

/-! ## A292772.P5951962413147274948

`A322901(ceil(sqrt(A126656(n+1))))`
-/

namespace A292772.P5951962413147274948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322901 ⌈Real.sqrt (A126656 (n + 1) : ℝ)⌉.toNat

end

end A292772.P5951962413147274948

/-!
# A292773: a(n) is the least integer m such that any choice of m elements in (Z_3)^n contains a subset of size 3 whose sum is zero.

The programs for A292773, there is no canonical definition to state claims against.
-/

/-! ## A292773.P11024105659842986762

`2*A090245(n+1)+1`
-/

namespace A292773.P11024105659842986762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090245 (n + 1) + 1

end

end A292773.P11024105659842986762

/-!
# A292774: a(n) = smallest m such that Sum_{i=1..m} 1/sqrt(prime(i)) >= n.

The programs for A292774, there is no canonical definition to state claims against.
-/

/-! ## A292774.P14350803519654131294

`A000720(A292775(n+1))`
-/

namespace A292774.P14350803519654131294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A292775 (n + 1)).toNat

end

end A292774.P14350803519654131294

/-! ## A292774.P11123895741379511707

`A061395(or(1, A292775(n+1)))`
-/

namespace A292774.P11123895741379511707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A292775 (n + 1))).toNat

end

end A292774.P11123895741379511707

/-! ## A292774.P8610902945434707674

`∑{d}[A292775(n+1), A061395(#)]`
-/

namespace A292774.P8610902945434707674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A292774.P8610902945434707674

/-! ## A292774.P17866959132226438796

`A061395(A292775(n+1))%A000045(n+6)`
-/

namespace A292774.P17866959132226438796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A292775 (n + 1)).toNat) (A000045 (n + 6))

end

end A292774.P17866959132226438796

/-! ## A292774.P6578710698912751402

`A007318(C(2, n))*A061395(A292775(n+1))`
-/

namespace A292774.P6578710698912751402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A061395 (A292775 (n + 1)).toNat

end

end A292774.P6578710698912751402

/-! ## A292774.P2123953497647159802

`A061395(A292775(n+1))+A008683(lcm(4, n+2))`
-/

namespace A292774.P2123953497647159802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A292775 (n + 1)).toNat + A008683 (Nat.lcm 4 (n + 2))

end

end A292774.P2123953497647159802

/-! ## A292774.P10679690906444128419

`A061395(A292775(n+1))+C(2, A000040(n+2))`
-/

namespace A292774.P10679690906444128419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A292775 (n + 1)).toNat + (Nat.choose 2 (A000040 (n + 2)).toNat : ℤ)

end

end A292774.P10679690906444128419

/-! ## A292774.P12256736385008233971

`A014963(20*(n+1))*A061395(A292775(n+1))`
-/

namespace A292774.P12256736385008233971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (20 * (n + 1)) * A061395 (A292775 (n + 1)).toNat

end

end A292774.P12256736385008233971

/-!
# A292775: a(n) = smallest prime q such that Sum_{primes p <= q} 1/sqrt(p) >= n.

The programs for A292775, there is no canonical definition to state claims against.
-/

/-! ## A292775.P10611747920594316894

`A000040(A292774(n+1))`
-/

namespace A292775.P10611747920594316894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A292774 (n + 1)).toNat

end

end A292775.P10611747920594316894

/-! ## A292775.P13410696329061573450

`A008578(A292774(n+1)+1)`
-/

namespace A292775.P13410696329061573450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A292774 (n + 1) + 1).toNat

end

end A292775.P13410696329061573450

/-! ## A292775.P7719582896695289383

`A065091(A292774(n+1)-1)`
-/

namespace A292775.P7719582896695289383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A292774 (n + 1) - 1).toNat

end

end A292775.P7719582896695289383

/-! ## A292775.P1112872900585455190

`A001747(A292774(n+1)+1)/2`
-/

namespace A292775.P1112872900585455190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (A292774 (n + 1) + 1).toNat : ℚ) / 2

end

end A292775.P1112872900585455190

/-! ## A292775.P8741250490735312581

`A141044(n+4)+A006093(A292774(n+1))`
-/

namespace A292775.P8741250490735312581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (n + 4) + A006093 (A292774 (n + 1)).toNat

end

end A292775.P8741250490735312581

/-! ## A292775.P4109563815054945084

`A006093(A292774(n+1))+A007318(C(2, n))`
-/

namespace A292775.P4109563815054945084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A292774 (n + 1)).toNat + A007318 (Nat.choose 2 n)

end

end A292775.P4109563815054945084

/-! ## A292775.P9709286680283152555

`A006093(A292774(n+1))+A007318(val(n+1, 4))`
-/

namespace A292775.P9709286680283152555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A292774 (n + 1)).toNat + A007318 (SequenceMachineLib.valuation (n + 1) 4)

end

end A292775.P9709286680283152555

/-! ## A292775.P8378142329060866887

`A006093(A292774(n+1))+A000041(C(2, n+2))`
-/

namespace A292775.P8378142329060866887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A292774 (n + 1)).toNat + A000041 (Nat.choose 2 (n + 2))

end

end A292775.P8378142329060866887

/-! ## A292775.P9690932914554931989

`A006093(A292774(n+1))+A000005(gcd(n, n+1))`
-/

namespace A292775.P9690932914554931989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A292774 (n + 1)).toNat + A000005 (Nat.gcd n (n + 1))

end

end A292775.P9690932914554931989

/-!
# A292777: First differences of A100290.

The programs for A292777, there is no canonical definition to state claims against.
-/

/-! ## A292777.P3533135313490332809

`Δ[A100290(n+1)]`
-/

namespace A292777.P3533135313490332809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292777.P3533135313490332809

/-! ## A292777.P18217208308113711503

`A100290(n+2)-A100290(n+1)`
-/

namespace A292777.P18217208308113711503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100290 (n + 2) - A100290 (n + 1)

end

end A292777.P18217208308113711503

/-! ## A292777.P17615761490485040528

`Δ[eq[1, A161399(A161398(n+1))]]`
-/

namespace A292777.P17615761490485040528
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161399 (A161398 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A292777.P17615761490485040528

/-! ## A292777.P4655308138093928091

`Δ[eq[1, A161398(A161398(n+1)+1)]]`
-/

namespace A292777.P4655308138093928091
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161398 (A161398 (n + 1) + 1).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A292777.P4655308138093928091

/-! ## A292777.P16564632202320675685

`Δ[lt[A038573((n+1)%A038573(n+1)), 1]]`
-/

namespace A292777.P16564632202320675685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (Int.tmod (n + 1 : ℤ) (A038573 (n + 1))).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A292777.P16564632202320675685

/-!
# A292778: INVERT transform of double factorials.

The programs for A292778, there is no canonical definition to state claims against.
-/

/-! ## A292778.P16451805647251236855

`A277193(A014398(n))`
-/

namespace A292778.P16451805647251236855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 (A014398 n).toNat

end

end A292778.P16451805647251236855

/-! ## A292778.P6345521365215031685

`A262689(A333473(n)+1)`
-/

namespace A292778.P6345521365215031685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A333473 n + 1).toNat

end

end A292778.P6345521365215031685

/-! ## A292778.P3320532852817208694

`A367467(A032203(n+2))`
-/

namespace A292778.P3320532852817208694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367467 (A032203 (n + 2)).toNat

end

end A292778.P3320532852817208694

/-!
# A292779: Interpret the values of the Moebius function mu(k) for k = n to 1 as a balanced ternary number.

The programs for A292779, the canonical program `A292779.P13078214557625591376` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292779 has offset 1).

The definition of A292779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292779.P12553681845300772292

`∑[3^n*round(acot(∏{e}[n+1, -#]))]`
-/

namespace A292779.P12553681845300772292
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * SequenceMachineLib.roundAway (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f2 n), (-(Nat.factorization (f2 n) p : ℤ)) : ℤ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292779.P12553681845300772292

namespace A292779

/-- `∑[3^n*round(acot(∏{e}[n+1, -#]))]` -/
def P12553681845300772292.Spec : Prop :=
  ∀ n, P12553681845300772292.a n = A292779 (n + 1)

end A292779

/-! ## A292779.P13078214557625591376

`∑[3^n*∏{e}[n+1, -floor(1/#)]]`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A292779

/-- `∑[3^n*∏{e}[n+1, -floor(1/#)]]` -/
def P13078214557625591376.Spec : Prop :=
  ∀ n, P13078214557625591376.a n = A292779 (n + 1)

theorem P13078214557625591376.correct : P13078214557625591376.Spec := by
  intro n
  simp only [A292779, Nat.add_sub_cancel]

end A292779

/-! ## A292779.P16984949963066985777

`∑[3^n*round(1/∏{e}[n+1, -#²])]`
-/

namespace A292779.P16984949963066985777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f2 n), (-(Nat.factorization (f2 n) p ^ 2 : ℤ)) : ℤ) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292779.P16984949963066985777

namespace A292779

/-- `∑[3^n*round(1/∏{e}[n+1, -#²])]` -/
def P16984949963066985777.Spec : Prop :=
  ∀ n, P16984949963066985777.a n = A292779 (n + 1)

end A292779

/-! ## A292779.P14149329769674488469

`∑[3^n*A008683(n+1)]`
-/

namespace A292779.P14149329769674488469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292779.P14149329769674488469

namespace A292779

/-- `∑[3^n*A008683(n+1)]` -/
def P14149329769674488469.Spec : Prop :=
  ∀ n, P14149329769674488469.a n = A292779 (n + 1)

end A292779

/-! ## A292779.P13825660597980701480

`∑[3^n*A162512(n+1)%2]`
-/

namespace A292779.P13825660597980701480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * Int.tmod (A162512 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292779.P13825660597980701480

namespace A292779

/-- `∑[3^n*A162512(n+1)%2]` -/
def P13825660597980701480.Spec : Prop :=
  ∀ n, P13825660597980701480.a n = A292779 (n + 1)

end A292779

/-! ## A292779.P12696812448323408652

`∑[A008683(2*n-(n-1))^3*3^n]`
-/

namespace A292779.P12696812448323408652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat ^ 3 * (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292779.P12696812448323408652

namespace A292779

/-- `∑[A008683(2*n-(n-1))^3*3^n]` -/
def P12696812448323408652.Spec : Prop :=
  ∀ n, P12696812448323408652.a n = A292779 (n + 1)

end A292779

/-! ## A292779.P15404602956348853582

`∑[A008683(n+1)*A000244(n)]`
-/

namespace A292779.P15404602956348853582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292779.P15404602956348853582

namespace A292779

/-- `∑[A008683(n+1)*A000244(n)]` -/
def P15404602956348853582.Spec : Prop :=
  ∀ n, P15404602956348853582.a n = A292779 (n + 1)

theorem P15404602956348853582.correct : P15404602956348853582.Spec := by
  intro n
  simp only [A292779, Nat.add_sub_cancel, A292779.P15404602956348853582.f1, A292779.P15404602956348853582.a, A292779.P13078214557625591376.f2, A292779.P13078214557625591376.f1, A292779.P13078214557625591376.a, A000244, A000244.P17162167222172810417.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292779

/-! ## A292779.P216058924428006274

`∑[A008683(n+1)*∑[A025192(n)]]`
-/

namespace A292779.P216058924428006274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292779.P216058924428006274

namespace A292779

/-- `∑[A008683(n+1)*∑[A025192(n)]]` -/
def P216058924428006274.Spec : Prop :=
  ∀ n, P216058924428006274.a n = A292779 (n + 1)

end A292779

/-! ## A292779.P1937388394608735381

`∑[A008683(n+1)*A038754(2*n)]`
-/

namespace A292779.P1937388394608735381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A038754 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292779.P1937388394608735381

namespace A292779

/-- `∑[A008683(n+1)*A038754(2*n)]` -/
def P1937388394608735381.Spec : Prop :=
  ∀ n, P1937388394608735381.a n = A292779 (n + 1)

end A292779

/-! ## A292779.P14055232709865826234

`∑[A008683(n+1)*A182522(2*n+1)]`
-/

namespace A292779.P14055232709865826234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A182522 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292779.P14055232709865826234

namespace A292779

/-- `∑[A008683(n+1)*A182522(2*n+1)]` -/
def P14055232709865826234.Spec : Prop :=
  ∀ n, P14055232709865826234.a n = A292779 (n + 1)

end A292779

/-! ## A292779.P10616416840487022911

`∑[A008683(n+1)*A074324(A005408(n))]`
-/

namespace A292779.P10616416840487022911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A074324 (A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292779.P10616416840487022911

namespace A292779

/-- `∑[A008683(n+1)*A074324(A005408(n))]` -/
def P10616416840487022911.Spec : Prop :=
  ∀ n, P10616416840487022911.a n = A292779 (n + 1)

end A292779

/-!
# A292781: Triangle read by rows: T(n,k) = T(n-k,k-1) with T(0,0) = 1 and T(n,0) = -1/n * Sum_{k=1..A003056(n)} (-1)^k * (2*k+1) * (n+1-A060544(k+1)) * T(n,k).

The programs for A292781, there is no canonical definition to state claims against.
-/

/-! ## A292781.P11379047323351442854

`A000594(∏{e}[A066224(n), #])`
-/

namespace A292781.P11379047323351442854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066224 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A292781.P11379047323351442854

/-! ## A292781.P7715636823800065850

`A000594(∏{e}[A000085(2*n+1), #])`
-/

namespace A292781.P7715636823800065850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A292781.P7715636823800065850

/-! ## A292781.P7303615772580958256

`A278577(∏{e}[A000085(2*n+1), #])`
-/

namespace A292781.P7303615772580958256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278577 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A292781.P7303615772580958256

/-!
# A292782: a(n) = E(2n,n)/2, where E(n,x) is the Euler polynomial.

The programs for A292782, there is no canonical definition to state claims against.
-/

/-! ## A292782.P15661767031002208079

`∑{#}[n-1, (-1)^(n+#+1)*(#+1)^(2*(n+1))]`
-/

namespace A292782.P15661767031002208079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (-1) ^ (n + (k + 1)) * ((k + 1) ^ (2 * (n + 1)) : ℤ)

end

end A292782.P15661767031002208079

/-! ## A292782.P14972425806249043893

`Δ[A350008(n)-∑[A349889(n)]]`
-/

namespace A292782.P14972425806249043893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349889 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350008 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292782.P14972425806249043893

/-! ## A292782.P1435627662680464401

`Δ[A350008(n)]-A349889(n+1)`
-/

namespace A292782.P1435627662680464401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A349889 (n + 1)

end

end A292782.P1435627662680464401

/-! ## A292782.P18415561782146148344

`Δ[A062970(n)]²-A349889(n+1)`
-/

namespace A292782.P18415561782146148344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - A349889 (n + 1)

end

end A292782.P18415561782146148344

/-!
# A292783: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of e.g.f. 1/sqrt(1 - 2*k*x).

The programs for A292783, the canonical program `A292783.P4153119276512767988` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292783 has offset 0).

The definition of A292783 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292783.P4153119276512767988

`(row(n)-col(n))^col(n)*A001147(col(n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A292783

/-- `(row(n)-col(n))^col(n)*A001147(col(n))` -/
def P4153119276512767988.Spec : Prop :=
  ∀ n, P4153119276512767988.a n = A292783 n

theorem P4153119276512767988.correct : P4153119276512767988.Spec := by
  intro n
  simp only [A292783]

end A292783

/-! ## A292783.P6450302767061075268

`(2*col(n))!/col(n)!*((row(n)-col(n))/2)^col(n)`
-/

namespace A292783.P6450302767061075268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * SequenceMachineLib.triCol n) : ℚ) / (Nat.factorial (SequenceMachineLib.triCol n) : ℚ) * (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ) / 2) ^ SequenceMachineLib.triCol n

end

end A292783.P6450302767061075268

namespace A292783

/-- `(2*col(n))!/col(n)!*((row(n)-col(n))/2)^col(n)` -/
def P6450302767061075268.Spec : Prop :=
  ∀ n, P6450302767061075268.a n = (A292783 n : ℚ)

end A292783

/-! ## A292783.P4508096703249206484

`A001147(A002262(n))*A003992(n)`
-/

namespace A292783.P4508096703249206484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (A002262 n).toNat * A003992 n

end

end A292783.P4508096703249206484

namespace A292783

/-- `A001147(A002262(n))*A003992(n)` -/
def P4508096703249206484.Spec : Prop :=
  ∀ n, P4508096703249206484.a n = A292783 n

end A292783

/-! ## A292783.P16022956599530675896

`A001147(A144328(n+1))*A003992(n)`
-/

namespace A292783.P16022956599530675896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (A144328 (n + 1)).toNat * A003992 n

end

end A292783.P16022956599530675896

namespace A292783

/-- `A001147(A144328(n+1))*A003992(n)` -/
def P16022956599530675896.Spec : Prop :=
  ∀ n, P16022956599530675896.a n = A292783 n

end A292783

/-! ## A292783.P2492857775687698990

`A305462(A294046(n)+1)`
-/

namespace A292783.P2492857775687698990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305462 (A294046 n + 1).toNat

end

end A292783.P2492857775687698990

namespace A292783

/-- `A305462(A294046(n)+1)` -/
def P2492857775687698990.Spec : Prop :=
  ∀ n, P2492857775687698990.a n = A292783 n

end A292783

/-!
# A292784: a(n) = n! * [x^n] 1/sqrt(1 - 2*n*x).

The programs for A292784, the canonical program `A292784.P9591025858271369189` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292784 has offset 0).

The definition of A292784 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292784.P9591025858271369189

`A000312(n)*A001147(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A292784

/-- `A000312(n)*A001147(n)` -/
def P9591025858271369189.Spec : Prop :=
  ∀ n, P9591025858271369189.a n = A292784 n

theorem P9591025858271369189.correct : P9591025858271369189.Spec := by
  intro n
  simp only [A292784]

end A292784

/-! ## A292784.P6424419237266414670

`n^n*∏[abs(1-2*n)]`
-/

namespace A292784.P6424419237266414670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A292784.P6424419237266414670

namespace A292784

/-- `n^n*∏[abs(1-2*n)]` -/
def P6424419237266414670.Spec : Prop :=
  ∀ n, P6424419237266414670.a n = A292784 n

end A292784

/-! ## A292784.P8653838547273376081

`A053979(∑[n])/n^-n`
-/

namespace A292784.P8653838547273376081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053979 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A292784.P8653838547273376081

namespace A292784

/-- `A053979(∑[n])/n^-n` -/
def P8653838547273376081.Spec : Prop :=
  ∀ n, P8653838547273376081.a n = (A292784 n : ℚ)

end A292784

/-! ## A292784.P12143820517708827208

`abs(A000312(n)*A330797(n+1))`
-/

namespace A292784.P12143820517708827208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000312 n * A330797 (n + 1)|

end

end A292784.P12143820517708827208

namespace A292784

/-- `abs(A000312(n)*A330797(n+1))` -/
def P12143820517708827208.Spec : Prop :=
  ∀ n, P12143820517708827208.a n = A292784 n

end A292784

/-! ## A292784.P13316568418729031618

`abs(A000312(n)*A055634(2*n))`
-/

namespace A292784.P13316568418729031618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000312 n * A055634 (2 * n)|

end

end A292784.P13316568418729031618

namespace A292784

/-- `abs(A000312(n)*A055634(2*n))` -/
def P13316568418729031618.Spec : Prop :=
  ∀ n, P13316568418729031618.a n = A292784 n

end A292784

/-!
# A292786: a(n) = psi(n) - phi(n).

The programs for A292786, the canonical program `A292786.P1789774906474236372` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292786 has offset 1).

The definition of A292786 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292786.P1789774906474236372

`A001615(n+1)-A000010(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A292786

/-- `A001615(n+1)-A000010(n+1)` -/
def P1789774906474236372.Spec : Prop :=
  ∀ n, P1789774906474236372.a n = A292786 (n + 1)

theorem P1789774906474236372.correct : P1789774906474236372.Spec := by
  intro n
  simp only [A292786, Nat.add_sub_cancel]

end A292786

/-! ## A292786.P2357786123511121566

`2*A318320(n+1)`
-/

namespace A292786.P2357786123511121566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A318320 (n + 1)

end

end A292786.P2357786123511121566

namespace A292786

/-- `2*A318320(n+1)` -/
def P2357786123511121566.Spec : Prop :=
  ∀ n, P2357786123511121566.a n = A292786 (n + 1)

end A292786

/-! ## A292786.P5432410337950735350

`A001615(n+1)-Δ[A002088(n)]`
-/

namespace A292786.P5432410337950735350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) - (f1 (n + 1) - f1 n)

end

end A292786.P5432410337950735350

namespace A292786

/-- `A001615(n+1)-Δ[A002088(n)]` -/
def P5432410337950735350.Spec : Prop :=
  ∀ n, P5432410337950735350.a n = A292786 (n + 1)

end A292786

/-! ## A292786.P9903045650045638746

`A001615(n+1)-Δ[A005728(n)]`
-/

namespace A292786.P9903045650045638746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) - (f1 (n + 1) - f1 n)

end

end A292786.P9903045650045638746

namespace A292786

/-- `A001615(n+1)-Δ[A005728(n)]` -/
def P9903045650045638746.Spec : Prop :=
  ∀ n, P9903045650045638746.a n = A292786 (n + 1)

end A292786

/-! ## A292786.P13678846196854781609

`A306927(n+1)+A051953(n+1)`
-/

namespace A292786.P13678846196854781609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306927 (n + 1) + A051953 (n + 1)

end

end A292786.P13678846196854781609

namespace A292786

/-- `A306927(n+1)+A051953(n+1)` -/
def P13678846196854781609.Spec : Prop :=
  ∀ n, P13678846196854781609.a n = A292786 (n + 1)

theorem P13678846196854781609.correct : P13678846196854781609.Spec := by
  intro n
  simp only [A292786, Nat.add_sub_cancel, A292786.P13678846196854781609.a, A292786.P1789774906474236372.a, A000010, A000010.P4673923239450215316.a, A001615, A001615.P12078511981713404634.a, A051953, A051953.P11179276897610979764.a, A306927, A306927.P17814691939423950955.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292786

/-! ## A292786.P5033251793028467478

`A344705(n+1)+A228947(n+1)`
-/

namespace A292786.P5033251793028467478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344705 (n + 1) + A228947 (n + 1)

end

end A292786.P5033251793028467478

namespace A292786

/-- `A344705(n+1)+A228947(n+1)` -/
def P5033251793028467478.Spec : Prop :=
  ∀ n, P5033251793028467478.a n = A292786 (n + 1)

theorem P5033251793028467478.correct : P5033251793028467478.Spec := by
  intro n
  simp only [A292786, Nat.add_sub_cancel, A292786.P5033251793028467478.a, A292786.P1789774906474236372.a, A000010, A000010.P4673923239450215316.a, A001615, A001615.P12078511981713404634.a, A228947, A228947.P1027786129053480284.a, A344705, A344705.P1217591774318848897.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292786

/-! ## A292786.P16231403543718575441

`A051612(n+1)-A244963(n+1)`
-/

namespace A292786.P16231403543718575441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1) - A244963 (n + 1)

end

end A292786.P16231403543718575441

namespace A292786

/-- `A051612(n+1)-A244963(n+1)` -/
def P16231403543718575441.Spec : Prop :=
  ∀ n, P16231403543718575441.a n = A292786 (n + 1)

theorem P16231403543718575441.correct : P16231403543718575441.Spec := by
  intro n
  simp only [A292786, Nat.add_sub_cancel, A292786.P16231403543718575441.a, A292786.P1789774906474236372.a, A000010, A000010.P4673923239450215316.a, A001615, A001615.P12078511981713404634.a, A051612, A051612.P4135239823752248514.a, A244963, A244963.P8812478636684031312.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292786

/-! ## A292786.P11215395786781710571

`A344753(n+1)-A051709(n+1)`
-/

namespace A292786.P11215395786781710571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344753 (n + 1) - A051709 (n + 1)

end

end A292786.P11215395786781710571

namespace A292786

/-- `A344753(n+1)-A051709(n+1)` -/
def P11215395786781710571.Spec : Prop :=
  ∀ n, P11215395786781710571.a n = A292786 (n + 1)

theorem P11215395786781710571.correct : P11215395786781710571.Spec := by
  intro n
  simp only [A292786, Nat.add_sub_cancel, A292786.P11215395786781710571.a, A292786.P1789774906474236372.a, A000010, A000010.P4673923239450215316.a, A001615, A001615.P12078511981713404634.a, A051709, A051709.P8066883811744733228.a, A344753, A344753.P96052968177767744.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A306927, A306927.P17814691939423950955.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292786

/-! ## A292786.P12267224457589435362

`A001615(n+1)+1-A039649(n+1)`
-/

namespace A292786.P12267224457589435362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) + (1 - A039649 (n + 1))

end

end A292786.P12267224457589435362

namespace A292786

/-- `A001615(n+1)+1-A039649(n+1)` -/
def P12267224457589435362.Spec : Prop :=
  ∀ n, P12267224457589435362.a n = A292786 (n + 1)

theorem P12267224457589435362.correct : P12267224457589435362.Spec := by
  intro n
  simp only [A292786, Nat.add_sub_cancel, A292786.P12267224457589435362.a, A292786.P1789774906474236372.a, A000010, A000010.P4673923239450215316.a, A001615, A001615.P12078511981713404634.a, A039649, A039649.P16717312505280968063.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292786

/-! ## A292786.P7975467981919283964

`A001615(n+1)-(A109606(n+1)+1)`
-/

namespace A292786.P7975467981919283964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) - (A109606 (n + 1) + 1)

end

end A292786.P7975467981919283964

namespace A292786

/-- `A001615(n+1)-(A109606(n+1)+1)` -/
def P7975467981919283964.Spec : Prop :=
  ∀ n, P7975467981919283964.a n = A292786 (n + 1)

theorem P7975467981919283964.correct : P7975467981919283964.Spec := by
  intro n
  simp only [A292786, Nat.add_sub_cancel, A292786.P7975467981919283964.a, A292786.P1789774906474236372.a, A000010, A000010.P4673923239450215316.a, A001615, A001615.P12078511981713404634.a, A109606, A109606.P2415810041766612210.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292786

/-! ## A292786.P6798885758167176969

`2*(A318442(n+1)+A318326(n+1))`
-/

namespace A292786.P6798885758167176969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A318442 (n + 1) + A318326 (n + 1))

end

end A292786.P6798885758167176969

namespace A292786

/-- `2*(A318442(n+1)+A318326(n+1))` -/
def P6798885758167176969.Spec : Prop :=
  ∀ n, P6798885758167176969.a n = A292786 (n + 1)

end A292786

/-! ## A292786.P18194808631561053457

`2*(A291784(n+1)-A000010(n+1))`
-/

namespace A292786.P18194808631561053457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A291784 (n + 1) - A000010 (n + 1))

end

end A292786.P18194808631561053457

namespace A292786

/-- `2*(A291784(n+1)-A000010(n+1))` -/
def P18194808631561053457.Spec : Prop :=
  ∀ n, P18194808631561053457.a n = A292786 (n + 1)

end A292786

/-! ## A292786.P9778656410168700809

`2*(A001615(n+1)-A291784(n+1))`
-/

namespace A292786.P9778656410168700809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001615 (n + 1) - A291784 (n + 1))

end

end A292786.P9778656410168700809

namespace A292786

/-- `2*(A001615(n+1)-A291784(n+1))` -/
def P9778656410168700809.Spec : Prop :=
  ∀ n, P9778656410168700809.a n = A292786 (n + 1)

end A292786

/-! ## A292786.P7208125751010441504

`2*(A157223(n+1)-A329152(n+1))`
-/

namespace A292786.P7208125751010441504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A157223 (n + 1) - A329152 (n + 1))

end

end A292786.P7208125751010441504

namespace A292786

/-- `2*(A157223(n+1)-A329152(n+1))` -/
def P7208125751010441504.Spec : Prop :=
  ∀ n, P7208125751010441504.a n = A292786 (n + 1)

end A292786

/-! ## A292786.P11098063116710841219

`A001615(n+1)+A219428(n+1)-n`
-/

namespace A292786.P11098063116710841219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) + (A219428 (n + 1) - (n : ℤ))

end

end A292786.P11098063116710841219

namespace A292786

/-- `A001615(n+1)+A219428(n+1)-n` -/
def P11098063116710841219.Spec : Prop :=
  ∀ n, P11098063116710841219.a n = A292786 (n + 1)

theorem P11098063116710841219.correct : P11098063116710841219.Spec := by
  intro n
  simp only [A292786, Nat.add_sub_cancel, A292786.P11098063116710841219.a, A292786.P1789774906474236372.a, A000010, A000010.P4673923239450215316.a, A001615, A001615.P12078511981713404634.a, A219428, A219428.P9184341513320465947.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292786

/-! ## A292786.P14584362168030112554

`∑{d}[n+1, A007432(#)*A337524((n+1)/#)]`
-/

namespace A292786.P14584362168030112554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A337524 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A292786.P14584362168030112554

namespace A292786

/-- `∑{d}[n+1, A007432(#)*A337524((n+1)/#)]` -/
def P14584362168030112554.Spec : Prop :=
  ∀ n, P14584362168030112554.a n = A292786 (n + 1)

end A292786

/-! ## A292786.P7947217773685107932

`A001615(n+1)-(abs(A051953(n+1)-n)+1)`
-/

namespace A292786.P7947217773685107932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) - (|A051953 (n + 1) - (n : ℤ)| + 1)

end

end A292786.P7947217773685107932

namespace A292786

/-- `A001615(n+1)-(abs(A051953(n+1)-n)+1)` -/
def P7947217773685107932.Spec : Prop :=
  ∀ n, P7947217773685107932.a n = A292786 (n + 1)

end A292786

/-! ## A292786.P18414652604950796403

`A318320(n+1)+A318442(n+1)+A318326(n+1)`
-/

namespace A292786.P18414652604950796403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318320 (n + 1) + (A318442 (n + 1) + A318326 (n + 1))

end

end A292786.P18414652604950796403

namespace A292786

/-- `A318320(n+1)+A318442(n+1)+A318326(n+1)` -/
def P18414652604950796403.Spec : Prop :=
  ∀ n, P18414652604950796403.a n = A292786 (n + 1)

end A292786

/-! ## A292786.P4721422558652403156

`A001615(n+1)+A051612(n+1)-A000203(n+1)`
-/

namespace A292786.P4721422558652403156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) + (A051612 (n + 1) - A000203 (n + 1))

end

end A292786.P4721422558652403156

namespace A292786

/-- `A001615(n+1)+A051612(n+1)-A000203(n+1)` -/
def P4721422558652403156.Spec : Prop :=
  ∀ n, P4721422558652403156.a n = A292786 (n + 1)

theorem P4721422558652403156.correct : P4721422558652403156.Spec := by
  intro n
  simp only [A292786, Nat.add_sub_cancel, A292786.P4721422558652403156.a, A292786.P1789774906474236372.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001615, A001615.P12078511981713404634.a, A051612, A051612.P4135239823752248514.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292786

/-!
# A292787: For n > 1, a(n) = least positive k, not a power of n, such that the digital sum of k in base n equals the digital sum of k^2 in base n.

The programs for A292787, there is no canonical definition to state claims against.
-/

/-! ## A292787.P963183178579363011

`ceil(A344005(n+1)+acot(n))`
-/

namespace A292787.P963183178579363011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A344005 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌉

end

end A292787.P963183178579363011

/-! ## A292787.P9899335502652270666

`A344005(abs(1-n)+2)+1`
-/

namespace A292787.P9899335502652270666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (|1 - (n : ℤ)| + 2).toNat + 1

end

end A292787.P9899335502652270666

/-! ## A292787.P4226115153761591186

`floor(ceil(acot(n))+sqrt(A345988(n+1)))`
-/

namespace A292787.P4226115153761591186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℝ) + Real.sqrt (A345988 (n + 1) : ℝ)⌋

end

end A292787.P4226115153761591186

/-! ## A292787.P8025019048753784425

`floor(sqrt(A345988(abs(1-n)+2)))+1`
-/

namespace A292787.P8025019048753784425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A345988 (|1 - (n : ℤ)| + 2).toNat) + 1

end

end A292787.P8025019048753784425

/-! ## A292787.P9682074272617084021

`floor(acot(n))-A182665(n+1)+n+2`
-/

namespace A292787.P9682074272617084021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ - A182665 (n + 1) + (n + 2 : ℤ)

end

end A292787.P9682074272617084021

/-! ## A292787.P11957986280469081660

`A028310(n)+2-A182665(n+1)`
-/

namespace A292787.P11957986280469081660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (2 - A182665 (n + 1))

end

end A292787.P11957986280469081660

/-! ## A292787.P15943104033407969056

`A054977(n)*A344005(n+1)+1`
-/

namespace A292787.P15943104033407969056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A344005 (n + 1) + 1

end

end A292787.P15943104033407969056

/-! ## A292787.P9219524909156675549

`A344005(n+1)+2-A000040(n+1)%2`
-/

namespace A292787.P9219524909156675549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (n + 1) + 2 - Int.tmod (A000040 (n + 1)) 2

end

end A292787.P9219524909156675549

/-! ## A292787.P13760353305782929506

`A344005(n+1)-A000032(C(2, n+2))+3`
-/

namespace A292787.P13760353305782929506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (n + 1) - A000032 (Nat.choose 2 (n + 2)) + 3

end

end A292787.P13760353305782929506

/-! ## A292787.P11096556641286821781

`A345999(A345993(n+1))+A344005(n+1)`
-/

namespace A292787.P11096556641286821781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345999 (A345993 (n + 1)).toNat + A344005 (n + 1)

end

end A292787.P11096556641286821781

/-!
# A292790: Congruence-uniform lattices on n unlabeled nodes.

The programs for A292790, there is no canonical definition to state claims against.
-/

/-! ## A292790.P13371668899148722152

`A377408(n+1)-A161305(n+1)`
-/

namespace A292790.P13371668899148722152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377408 (n + 1) - A161305 (n + 1)

end

end A292790.P13371668899148722152

/-! ## A292790.P11749811275551415861

`A377408(n+1)-char[A080196(n+1)]`
-/

namespace A292790.P11749811275551415861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080196 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377408 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A292790.P11749811275551415861

/-! ## A292790.P14712914541950885033

`A377408(n+1)-char[A089768(n+1)]`
-/

namespace A292790.P14712914541950885033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089768 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377408 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A292790.P14712914541950885033

/-! ## A292790.P13580105417795457942

`A377408(n+1)-char[A275516(3*(n+1))]`
-/

namespace A292790.P13580105417795457942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275516 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377408 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A292790.P13580105417795457942

/-! ## A292790.P9475160039942832904

`A377408(n+1)-char[A103568(3*n+4)]`
-/

namespace A292790.P9475160039942832904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103568 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377408 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A292790.P9475160039942832904

/-!
# A292793: 1/4 of the number of self-avoiding paths that are made of alternated vertical and horizontal n consecutive steps. (start point is different from end point.)

The programs for A292793, there is no canonical definition to state claims against.
-/

/-! ## A292793.P16509838766036498099

`∑[A356939(A342528(n))]`
-/

namespace A292793.P16509838766036498099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356939 (A342528 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292793.P16509838766036498099

/-! ## A292793.P7868212228626284849

`A055086(A077832(n))+char[7]`
-/

namespace A292793.P7868212228626284849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A077832 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A292793.P7868212228626284849

/-! ## A292793.P5105251788314817837

`A055086(or(∑[n], A077832(n)))`
-/

namespace A292793.P5105251788314817837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A077832 n)).toNat

end

end A292793.P5105251788314817837

/-! ## A292793.P17354593673397651836

`A261104(A280263((2*n+1)²))`
-/

namespace A292793.P17354593673397651836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A280263 ((2 * n + 1) ^ 2)).toNat

end

end A292793.P17354593673397651836

/-! ## A292793.P659503347788704473

`A001462(A081673(n))-A006054(n)`
-/

namespace A292793.P659503347788704473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A081673 n).toNat - A006054 n

end

end A292793.P659503347788704473

/-!
# A292794: Numbers not congruent to A000045(k) mod A000045(k+1) for all k > 1.

The programs for A292794, there is no canonical definition to state claims against.
-/

/-! ## A292794.P11816624379326359801

`lt[A292032(n), 2]`
-/

namespace A292794.P11816624379326359801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292032 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A292794.P11816624379326359801

/-! ## A292794.P17864281502934087611

`eq[n, A014681(A292031(n))]`
-/

namespace A292794.P17864281502934087611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A292031 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A292794.P17864281502934087611

/-! ## A292794.P2032098587479342328

`eq[A019427(n), A292032(n)]`
-/

namespace A292794.P2032098587479342328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292794.P2032098587479342328

/-! ## A292794.P3346265362300484915

`eq[A019428(n), A292032(n)]`
-/

namespace A292794.P3346265362300484915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292794.P3346265362300484915

/-! ## A292794.P16470094813316908514

`eq[A019429(n), A292032(n)]`
-/

namespace A292794.P16470094813316908514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292794.P16470094813316908514

/-! ## A292794.P12017414363833000118

`eq[A019430(n), A292032(n)]`
-/

namespace A292794.P12017414363833000118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292794.P12017414363833000118

/-! ## A292794.P8097916886268894618

`eq[A019431(n), A292032(n)]`
-/

namespace A292794.P8097916886268894618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292794.P8097916886268894618

/-! ## A292794.P1052732483604527432

`eq[A019432(n), A292032(n)]`
-/

namespace A292794.P1052732483604527432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292794.P1052732483604527432

/-! ## A292794.P2986359721805125653

`eq[A019433(n), A292032(n)]`
-/

namespace A292794.P2986359721805125653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019433 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292794.P2986359721805125653

/-! ## A292794.P3811057574252276525

`eq[A043545(n), A292032(n)]`
-/

namespace A292794.P3811057574252276525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292794.P3811057574252276525

/-! ## A292794.P9972838858487155626

`eq[A091247(n), A292032(n)]`
-/

namespace A292794.P9972838858487155626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292794.P9972838858487155626

/-! ## A292794.P3329157786255301714

`eq[A178226(n), A292032(n)]`
-/

namespace A292794.P3329157786255301714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292794.P3329157786255301714

/-! ## A292794.P6262735717712935559

`eq[A292032(n), A381735(n)]`
-/

namespace A292794.P6262735717712935559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292032 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292794.P6262735717712935559

/-! ## A292794.P3411536183684467861

`eq[A132126(n+1), A292032(n)]`
-/

namespace A292794.P3411536183684467861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292794.P3411536183684467861

/-! ## A292794.P15635124279551945369

`eq[A206774(n+1), A292032(n)]`
-/

namespace A292794.P15635124279551945369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292794.P15635124279551945369

/-! ## A292794.P15157407288597332657

`eq[A292032(n), A295304(n+1)]`
-/

namespace A292794.P15157407288597332657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292032 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295304 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292794.P15157407288597332657

/-! ## A292794.P7966621965133618081

`eq[A057427(A292032(n)²), A292032(n)]`
-/

namespace A292794.P7966621965133618081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A292032 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292794.P7966621965133618081

/-! ## A292794.P1897549268740958737

`eq[A179770(A292032(n)+2), A292032(n)]`
-/

namespace A292794.P1897549268740958737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179770 (A292032 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292794.P1897549268740958737

/-! ## A292794.P14847972905041628037

`eq[A057427(n), A292032(n)]`
-/

namespace A292794.P14847972905041628037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292794.P14847972905041628037

/-! ## A292794.P15953987042360157837

`eq[A101825(n), A292032(n)]`
-/

namespace A292794.P15953987042360157837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292794.P15953987042360157837

/-!
# A292795: Number A(n,k) of sets of nonempty words with a total of n letters over k-ary alphabet such that within each word every letter of the alphabet is at least as frequent as the subsequent alphabet letter; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A292795, there is no canonical definition to state claims against.
-/

/-! ## A292795.P5616266748341184334

`A108611(5*A295028(n+1))`
-/

namespace A292795.P5616266748341184334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (5 * A295028 (n + 1)).toNat

end

end A292795.P5616266748341184334

/-! ## A292795.P6119316100202633807

`A034968(A295028(n+1)^3)`
-/

namespace A292795.P6119316100202633807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A295028 (n + 1) ^ 3).toNat

end

end A292795.P6119316100202633807

/-! ## A292795.P3735199024532050135

`A108611(lcm(5, A295028(n+1)))`
-/

namespace A292795.P3735199024532050135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (Int.lcm 5 (A295028 (n + 1)))

end

end A292795.P3735199024532050135

/-! ## A292795.P17591207047606038268

`∑{d}[A295028(n+1), A307277(#)]`
-/

namespace A292795.P17591207047606038268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A307277 d

end

end A292795.P17591207047606038268

/-! ## A292795.P2259697467181970976

`A007953(A024649(A295028(n+1)))`
-/

namespace A292795.P2259697467181970976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A024649 (A295028 (n + 1)).toNat).toNat

end

end A292795.P2259697467181970976

/-!
# A292796: Number of sets of nonempty words with a total of n letters over n-ary alphabet such that within each word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A292796, there is no canonical definition to state claims against.
-/

/-! ## A292796.P13916444928353232033

`A292795(∑[4*n])`
-/

namespace A292796.P13916444928353232033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292796.P13916444928353232033

/-! ## A292796.P8028356170173666349

`gcd(A000038(n), A292795(A046092(n)))`
-/

namespace A292796.P8028356170173666349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A292795 (A046092 n).toNat)

end

end A292796.P8028356170173666349

/-! ## A292796.P14952343129097709376

`lcm(A033999(n), A292795(A046092(n)))`
-/

namespace A292796.P14952343129097709376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A292795 (A046092 n).toNat)

end

end A292796.P14952343129097709376

/-! ## A292796.P12105031990923263289

`or(A000007(n), A292795(A046092(n)))`
-/

namespace A292796.P12105031990923263289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A292795 (A046092 n).toNat)

end

end A292796.P12105031990923263289

/-! ## A292796.P18250240459471554174

`A292795(A046092(n))/A007318(∑[n])`
-/

namespace A292796.P18250240459471554174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292795 (A046092 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A292796.P18250240459471554174

/-! ## A292796.P11927095677944622760

`A292795(A046092(n))+A000007(n+1)`
-/

namespace A292796.P11927095677944622760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292795 (A046092 n).toNat + A000007 (n + 1)

end

end A292796.P11927095677944622760

/-! ## A292796.P15235958407400460751

`A000034(2*n)*A292795(A046092(n))`
-/

namespace A292796.P15235958407400460751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A292795 (A046092 n).toNat

end

end A292796.P15235958407400460751

/-! ## A292796.P18298215020420504728

`A007913(xor(n, -1)²)*A292795(A046092(n))`
-/

namespace A292796.P18298215020420504728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (Int.xor (n : ℤ) (-1) ^ 2).toNat * A292795 (A046092 n).toNat

end

end A292796.P18298215020420504728

/-! ## A292796.P5117863235651692796

`A006519(Δ[2*n²]-1)*A292795(A046092(n))`
-/

namespace A292796.P5117863235651692796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat * A292795 (A046092 n).toNat

end

end A292796.P5117863235651692796

/-!
# A292797: 2-Hankel transform of ((2*n - 1)!!, 2^n * n).

The programs for A292797, there is no canonical definition to state claims against.
-/

/-! ## A292797.P13109066499284215588

`∏[n!²/A006882(n)]`
-/

namespace A292797.P13109066499284215588
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2 : ℚ) / (A006882 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A292797.P13109066499284215588

/-! ## A292797.P14207913858687130023

`∏[A001044(n)/A006882(n)]`
-/

namespace A292797.P14207913858687130023
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001044 n : ℚ) / (A006882 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A292797.P14207913858687130023

/-! ## A292797.P18334344638911247419

`∏[A000142(n)²/A006882(n)]`
-/

namespace A292797.P18334344638911247419
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n ^ 2 : ℚ) / (A006882 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A292797.P18334344638911247419

/-! ## A292797.P18434803764984391240

`∏[A133942(n)²/A006882(n)]`
-/

namespace A292797.P18434803764984391240
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133942 n ^ 2 : ℚ) / (A006882 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A292797.P18434803764984391240

/-! ## A292797.P17473979026118337298

`∏[A001044(n)/(A128882(n)+1)]`
-/

namespace A292797.P17473979026118337298
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001044 n : ℚ) / (A128882 n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A292797.P17473979026118337298

/-!
# A292798: a(n) = [x^n] 1/(1 - x - n*x/(1 - x - n*x/(1 - x - n*x/(1 - x - n*x/(1 - x - n*x/(1 - ...)))))), a continued fraction.

The programs for A292798, the canonical program `A292798.P1116052473376902396` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292798 has offset 0).

The definition of A292798 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292798.P1116052473376902396

`∑{#}[n, C(n, #)*C(n+#, #)*n^#/(#+1)]`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A292798

/-- `∑{#}[n, C(n, #)*C(n+#, #)*n^#/(#+1)]` -/
def P1116052473376902396.Spec : Prop :=
  ∀ n, P1116052473376902396.a n = (A292798 n : ℚ)

end A292798

/-! ## A292798.P2721662416762483528

`ratio[A028310(n)]*A304936(n)`
-/

namespace A292798.P2721662416762483528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A304936 n : ℚ)

end

end A292798.P2721662416762483528

namespace A292798

/-- `ratio[A028310(n)]*A304936(n)` -/
def P2721662416762483528.Spec : Prop :=
  ∀ n, P2721662416762483528.a n = (A292798 n : ℚ)

end A292798

/-! ## A292798.P366774169169509789

`A107702(∑[4*n])`
-/

namespace A292798.P366774169169509789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107702 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292798.P366774169169509789

namespace A292798

/-- `A107702(∑[4*n])` -/
def P366774169169509789.Spec : Prop :=
  ∀ n, P366774169169509789.a n = A292798 n

end A292798

