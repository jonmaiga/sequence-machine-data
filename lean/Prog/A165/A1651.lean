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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C013
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A165101: Consider the base-8 Kaprekar map n->K(n) defined in A165090. Sequence gives least elements of each cycle of length > 1.

The programs for A165101, there is no canonical definition to state claims against.
-/

/-! ## A165101.P11380303973968300532

`∩[A165097(n+1), A165099(n+1)]`
-/

namespace A165101.P11380303973968300532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165101.P11380303973968300532

/-!
# A165102: Length of cycle mentioned in A165101.

The programs for A165102, there is no canonical definition to state claims against.
-/

/-! ## A165102.P8434412609367074027

`filter[A165100(n+1), A164980(#)]`
-/

namespace A165102.P8434412609367074027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164980 (f1 j).toNat = 1) n)

end

end A165102.P8434412609367074027

/-! ## A165102.P14520957090225531661

`filter[A165100(n+1), A252372(#)]`
-/

namespace A165102.P14520957090225531661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252372 (f1 j).toNat = 1) n)

end

end A165102.P14520957090225531661

/-! ## A165102.P6448402799112169791

`filter[A165100(n+1), A354807(#)]`
-/

namespace A165102.P6448402799112169791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354807 (f1 j).toNat = 1) n)

end

end A165102.P6448402799112169791

/-! ## A165102.P13824540403592336717

`A165100(lt[1, A165100(n+1)]+1)`
-/

namespace A165102.P13824540403592336717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A165102.P13824540403592336717

/-!
# A165108: Smallest member of cycle corresponding to n-th term of A165107.

The programs for A165108, there is no canonical definition to state claims against.
-/

/-! ## A165108.P5550448390259739431

`A165099(A258746(n+1)%A081296(n+1))`
-/

namespace A165108.P5550448390259739431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165099 (Int.tmod (A258746 (n + 1)) (A081296 (n + 1))).toNat

end

end A165108.P5550448390259739431

/-! ## A165108.P3754042372693696908

`A165090(3*A006951(2*(n+1)))`
-/

namespace A165108.P3754042372693696908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165090 (3 * A006951 (2 * (n + 1))).toNat

end

end A165108.P3754042372693696908

/-!
# A165110: a(n) = image of n under the base-9 Kaprekar map n -> (n with digits sorted into descending order) - (n with digits sorted into ascending order).

The programs for A165110, there is no canonical definition to state claims against.
-/

/-! ## A165110.P7484872663259991555

`A319726(n)-A319657(n)`
-/

namespace A165110.P7484872663259991555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319726 n - A319657 n

end

end A165110.P7484872663259991555

/-! ## A165110.P8871444352554816671

`A319747(n)-2*A319657(n)`
-/

namespace A165110.P8871444352554816671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319747 n - 2 * A319657 n

end

end A165110.P8871444352554816671

/-! ## A165110.P4737264145908054789

`2*A319726(n)-A319747(n)`
-/

namespace A165110.P4737264145908054789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319726 n - A319747 n

end

end A165110.P4737264145908054789

/-! ## A165110.P13358453584031368688

`A055959(A319726(n))`
-/

namespace A165110.P13358453584031368688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055959 (A319726 n).toNat

end

end A165110.P13358453584031368688

/-! ## A165110.P4671929942312419731

`A319726(n)-A030108(A319726(n%(n+1)))`
-/

namespace A165110.P4671929942312419731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319726 n - A030108 (A319726 (n % (n + 1))).toNat

end

end A165110.P4671929942312419731

/-! ## A165110.P16141077298940901239

`8*A165111(n)`
-/

namespace A165110.P16141077298940901239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A165111 n

end

end A165110.P16141077298940901239

/-! ## A165110.P13481471926767201666

`A008590(A165111(n))`
-/

namespace A165110.P13481471926767201666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A165111 n).toNat

end

end A165110.P13481471926767201666

/-! ## A165110.P2711417746943797005

`A005843(A005843(A165111(n)+A165111(n)))`
-/

namespace A165110.P2711417746943797005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A005843 (A165111 n + A165111 n).toNat).toNat

end

end A165110.P2711417746943797005

/-! ## A165110.P15200018862385822292

`A002262(2*A055959(n)²)`
-/

namespace A165110.P15200018862385822292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * A055959 n ^ 2).toNat

end

end A165110.P15200018862385822292

/-! ## A165110.P9675183929234333581

`A053616(2*A055959(n)²)`
-/

namespace A165110.P9675183929234333581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (2 * A055959 n ^ 2).toNat

end

end A165110.P9675183929234333581

/-!
# A165111: a(n) = A165110(n)/8.

The programs for A165111, there is no canonical definition to state claims against.
-/

/-! ## A165111.P223676433612617992

`A165110(n)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165111.P223676433612617992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165110 n : ℚ) / 8

end

end A165111.P223676433612617992

/-! ## A165111.P9573343722366641922

`A006085(A165110(n))`
-/

namespace A165111.P9573343722366641922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006085 (A165110 n).toNat

end

end A165111.P9573343722366641922

/-! ## A165111.P14221841286008585935

`A025480(A165110(n)+3)`
-/

namespace A165111.P14221841286008585935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A165110 n + 3).toNat

end

end A165111.P14221841286008585935

/-! ## A165111.P2621107911426150652

`A057360(3*A165110(n))-A165110(n)`
-/

namespace A165111.P2621107911426150652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (3 * A165110 n).toNat - A165110 n

end

end A165111.P2621107911426150652

/-! ## A165111.P6589931158315949989

`A347689(record[A048379(n)])`
-/

namespace A165111.P6589931158315949989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A165111.P6589931158315949989

/-! ## A165111.P6719267436241086489

`A165091(A165110(n))%A165104(n+1)`
-/

namespace A165111.P6719267436241086489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165091 (A165110 n).toNat) (A165104 (n + 1))

end

end A165111.P6719267436241086489

/-! ## A165111.P10645904884752312104

`and(A002223(n+1), A037903(n))`
-/

namespace A165111.P10645904884752312104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002223 (n + 1)) (A037903 n)

end

end A165111.P10645904884752312104

/-! ## A165111.P13673140994393814278

`A064834(A171717(n))`
-/

namespace A165111.P13673140994393814278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A171717 n).toNat

end

end A165111.P13673140994393814278

/-! ## A165111.P148084575933175549

`and(A037903(n), A045535(n))`
-/

namespace A165111.P148084575933175549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037903 n) (A045535 n)

end

end A165111.P148084575933175549

/-! ## A165111.P9586609561834631382

`∑{d}[n+1, A037903(#-1)*A330055((n+1)/#-1)]`
-/

namespace A165111.P9586609561834631382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A037903 (d - 1) * A330055 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A165111.P9586609561834631382

/-!
# A165114: Fixed points of the base-9 Kaprekar map A165110.

The programs for A165114, there is no canonical definition to state claims against.
-/

/-! ## A165114.P12411133885596440172

`A007814(A003952(n))*A165119(3*n+4)`
-/

namespace A165114.P12411133885596440172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A003952 n).toNat * A165119 (3 * n + 4)

end

end A165114.P12411133885596440172

/-!
# A165115: Consider the base-9 Kaprekar map n->K(n) defined in A165110. Sequence gives numbers belonging to cycles, including fixed points.

The programs for A165115, there is no canonical definition to state claims against.
-/

/-! ## A165115.P7775818909689888854

`∪[A165117(n+1), A165119(n+1)]`
-/

namespace A165115.P7775818909689888854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A165115.P7775818909689888854

/-! ## A165115.P17066459610529254429

`∑{e}[3^n, A165117(#)]`
-/

namespace A165115.P17066459610529254429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A165117 (Nat.factorization (f1 n) p)

end

end A165115.P17066459610529254429

/-! ## A165115.P8488188845179887236

`A165117(A028310(n))%A301866(2*n+1)`
-/

namespace A165115.P8488188845179887236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165117 (A028310 n).toNat) (A301866 (2 * n + 1))

end

end A165115.P8488188845179887236

/-! ## A165115.P9811392092318449712

`eq[0, A165112(n)]`
-/

namespace A165115.P9811392092318449712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165112 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165115.P9811392092318449712

/-! ## A165115.P494866382364744018

`2*lt[A165112(2*n), 1]`
-/

namespace A165115.P494866382364744018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165112 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A165115.P494866382364744018

/-!
# A165117: Consider the base-9 Kaprekar map n->K(n) defined in A165110. Sequence gives numbers belonging to cycles of length greater than 1.

The programs for A165117, there is no canonical definition to state claims against.
-/

/-! ## A165117.P10973829370907256179

`filter[A165115(n+2), A292438(#)]`
-/

namespace A165117.P10973829370907256179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165115 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A165117.P10973829370907256179

/-! ## A165117.P11239966002711482098

`A165115(A187829(n+1)+A103379(n+1))`
-/

namespace A165117.P11239966002711482098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165115 (A187829 (n + 1) + A103379 (n + 1)).toNat

end

end A165117.P11239966002711482098

/-! ## A165117.P7433148278043626791

`record[A165115(A358136(n+3))]`
-/

namespace A165117.P7433148278043626791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165115 (A358136 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165117.P7433148278043626791

/-! ## A165117.P16579106808088901579

`record[A165115(A341132(n+3)+1)]`
-/

namespace A165117.P16579106808088901579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165115 (A341132 (n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165117.P16579106808088901579

/-! ## A165117.P14327962747342207403

`A003815(A165115(n+2))`
-/

namespace A165117.P14327962747342207403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (A165115 (n + 2)).toNat

end

end A165117.P14327962747342207403

/-!
# A165118: Length of cycle mentioned in A165117.

The programs for A165118, there is no canonical definition to state claims against.
-/

/-! ## A165118.P14016619348141062389

`A165116(lt[1, A165116(n+1)]+1)`
-/

namespace A165118.P14016619348141062389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165116 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A165118.P14016619348141062389

/-!
# A165119: Consider the base-9 Kaprekar map n->K(n) defined in A165110. Sequence gives least elements of each cycle, including fixed points.

The programs for A165119, there is no canonical definition to state claims against.
-/

/-! ## A165119.P12443803671056436571

`record[A165128(A110157(A246867(n)))]`
-/

namespace A165119.P12443803671056436571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165128 (A110157 (A246867 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165119.P12443803671056436571

/-! ## A165119.P9196758231970087872

`A165128(A279367(n+1)^A196222(n))`
-/

namespace A165119.P9196758231970087872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165128 (SequenceMachineLib.roundAway ((A279367 (n + 1) : ℚ) ^ (A196222 n : ℤ))).toNat

end

end A165119.P9196758231970087872

/-! ## A165119.P2607854715172511419

`A165128(A296712(n+1)^A196222(n))`
-/

namespace A165119.P2607854715172511419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165128 (SequenceMachineLib.roundAway ((A296712 (n + 1) : ℚ) ^ (A196222 n : ℤ))).toNat

end

end A165119.P2607854715172511419

/-! ## A165119.P14784003119071135076

`A165128(C(A076643(n+1), A196222(n)))`
-/

namespace A165119.P14784003119071135076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165128 (Nat.choose (A076643 (n + 1)).toNat (A196222 n).toNat)

end

end A165119.P14784003119071135076

/-! ## A165119.P3048334987668990886

`A165128(C(A076643(n+1), A319657(n)))`
-/

namespace A165119.P3048334987668990886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165128 (Nat.choose (A076643 (n + 1)).toNat (A319657 n).toNat)

end

end A165119.P3048334987668990886

/-!
# A165121: Consider the base-9 Kaprekar map n->K(n) defined in A165110. Sequence gives least elements of each cycle of length > 1.

The programs for A165121, there is no canonical definition to state claims against.
-/

/-! ## A165121.P10757848223620870325

`∩[A165117(n+1), A165119(n+1)]`
-/

namespace A165121.P10757848223620870325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165121.P10757848223620870325

/-! ## A165121.P14633918504826560829

`A165119(lt[A000009(n+2), A152958(2*n+1)])`
-/

namespace A165121.P14633918504826560829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152958 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165119 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A165121.P14633918504826560829

/-! ## A165121.P7300050054645693053

`record[A165128(A241911(3*n+5))]`
-/

namespace A165121.P7300050054645693053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165128 (A241911 (3 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165121.P7300050054645693053

/-! ## A165121.P3226088384545160948

`A165128(∩[(n+1)^2^C(n, 10), A367906(n+2)])`
-/

namespace A165121.P3226088384545160948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 ^ Nat.choose n 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367906 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165128 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A165121.P3226088384545160948

/-!
# A165122: Length of cycle mentioned in A165121.

The programs for A165122, there is no canonical definition to state claims against.
-/

/-! ## A165122.P1335797133889870432

`A165120(lt[1, A165120(n+1)]+1)`
-/

namespace A165122.P1335797133889870432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A165122.P1335797133889870432

/-!
# A165123: Number of cycles of n-digit numbers (including fixed points) under the base-9 Kaprekar map A165110.

The programs for A165123, there is no canonical definition to state claims against.
-/

/-! ## A165123.P11850072645972290145

`A275806(A135491(n)+A110660(n))`
-/

namespace A165123.P11850072645972290145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (A135491 n + A110660 n).toNat

end

end A165123.P11850072645972290145

/-! ## A165123.P2370223362839633841

`A069010(A068911(n)-A000701(n))`
-/

namespace A165123.P2370223362839633841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A068911 n - A000701 n).toNat

end

end A165123.P2370223362839633841

/-! ## A165123.P14543354868150071642

`∑{e}[∑[A002203(A112338(n))]+1, #]`
-/

namespace A165123.P14543354868150071642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (A112338 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A165123.P14543354868150071642

/-! ## A165123.P2873301118602177519

`A001221(A107742(2*n)+A008578(n+1))`
-/

namespace A165123.P2873301118602177519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A107742 (2 * n) + A008578 (n + 1)).toNat

end

end A165123.P2873301118602177519

/-! ## A165123.P16334272321911528194

`A001221(A197529(n+1)*A299276(n+3))`
-/

namespace A165123.P16334272321911528194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A197529 (n + 1) * A299276 (n + 3)).toNat

end

end A165123.P16334272321911528194

/-!
# A165125: Number of n-digit fixed points under the base-9 Kaprekar map A165110.

The programs for A165125, there is no canonical definition to state claims against.
-/

/-! ## A165125.P3591532807256409384

`A096496(n+1)-A000007(A355427(2*n))`
-/

namespace A165125.P3591532807256409384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096496 (n + 1) - A000007 (A355427 (2 * n)).toNat

end

end A165125.P3591532807256409384

/-! ## A165125.P18379777900548128563

`A344838(and(A023987(n+1), A034316(n)))`
-/

namespace A165125.P18379777900548128563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344838 (Int.land (A023987 (n + 1)) (A034316 n)).toNat

end

end A165125.P18379777900548128563

/-! ## A165125.P15410852233255825157

`A297155(or(24, A002530(n)))`
-/

namespace A165125.P15410852233255825157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (Int.lor 24 (A002530 n)).toNat

end

end A165125.P15410852233255825157

/-! ## A165125.P8731517343271958345

`A112753(A009205(abs(A074825(n))))`
-/

namespace A165125.P8731517343271958345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112753 (A009205 |A074825 n|.toNat).toNat

end

end A165125.P8731517343271958345

/-! ## A165125.P446046437673062357

`A198068(A322334(n+1)+A022166(n))`
-/

namespace A165125.P446046437673062357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198068 (A322334 (n + 1) + A022166 n).toNat

end

end A165125.P446046437673062357

/-!
# A165126: Consider the base-9 Kaprekar map x->K(x) described in A165110. Sequence gives the smallest number that belongs to a cycle of length n under repeated iteration of this map, or -1 if there is no cycle of length n.

The programs for A165126, there is no canonical definition to state claims against.
-/

/-! ## A165126.P16376512421962563156

`A165128(A297328(2*(n+1))+A029723(3*n))`
-/

namespace A165126.P16376512421962563156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165128 (A297328 (2 * (n + 1)) + A029723 (3 * n)).toNat

end

end A165126.P16376512421962563156

/-!
# A165128: Smallest member of cycle corresponding to n-th term of A165127.

The programs for A165128, there is no canonical definition to state claims against.
-/

/-! ## A165128.P10876677268428959384

`A165119(A076643(n+1)^A196222(n))`
-/

namespace A165128.P10876677268428959384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165119 (SequenceMachineLib.roundAway ((A076643 (n + 1) : ℚ) ^ (A196222 n : ℤ))).toNat

end

end A165128.P10876677268428959384

/-! ## A165128.P9511446563409813506

`A165119(A160818(n+1)^A120004(n))`
-/

namespace A165128.P9511446563409813506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165119 (SequenceMachineLib.roundAway ((A160818 (n + 1) : ℚ) ^ (A120004 n : ℤ))).toNat

end

end A165128.P9511446563409813506

/-! ## A165128.P15781354786707559311

`A165119(A279367(n+1)^A196222(n))`
-/

namespace A165128.P15781354786707559311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165119 (SequenceMachineLib.roundAway ((A279367 (n + 1) : ℚ) ^ (A196222 n : ℤ))).toNat

end

end A165128.P15781354786707559311

/-! ## A165128.P8590930815082486760

`A165119(A165209(n+1)%A165235(n+1))`
-/

namespace A165128.P8590930815082486760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165119 (Int.tmod (A165209 (n + 1)) (A165235 (n + 1))).toNat

end

end A165128.P8590930815082486760

/-! ## A165128.P5830099472730996454

`A165119(A032555(n+1))`
-/

namespace A165128.P5830099472730996454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165119 (A032555 (n + 1)).toNat

end

end A165128.P5830099472730996454

/-!
# A165130: a(n) = (2^(n+4)-1)*(2^n-1).

The programs for A165130, the canonical program `A165130.P17161077731983361106` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165130 has offset 0).

The definition of A165130 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(n+4)-1)*(2^n-1)` (program `A165130.P17161077731983361106`, by `A165130.P17161077731983361106.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165130.P17161077731983361106

`(2^(n+4)-1)*(2^n-1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165130

/-- `(2^(n+4)-1)*(2^n-1)` -/
def P17161077731983361106.Spec : Prop :=
  ∀ n, P17161077731983361106.a n = A165130 n

theorem P17161077731983361106.correct : P17161077731983361106.Spec := by
  intro n
  simp only [A165130]

end A165130

/-! ## A165130.P11136672388708755985

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=0, a(1)=31, a(2)=189`
-/

namespace A165130.P11136672388708755985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 31, 189] fun n a =>
  7 * a (n - 1) - 14 * a (n - 2) + 8 * a (n - 3)

end

end A165130.P11136672388708755985

namespace A165130

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P11136672388708755985.Spec : Prop :=
  ∀ n, P11136672388708755985.a n = A165130 n

theorem P11136672388708755985.correct : P11136672388708755985.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A165130, Nat.add_sub_cancel, A165130.P11136672388708755985.a, A165130.P17161077731983361106.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A165130, Nat.add_sub_cancel, A165130.P11136672388708755985.a, A165130.P17161077731983361106.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165130

/-! ## A165130.P3579834479692243806

`A020707(n)²-A198275(n)`
-/

namespace A165130.P3579834479692243806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n ^ 2 - A198275 n

end

end A165130.P3579834479692243806

namespace A165130

/-- `A020707(n)²-A198275(n)` -/
def P3579834479692243806.Spec : Prop :=
  ∀ n, P3579834479692243806.a n = A165130 n

end A165130

/-! ## A165130.P2471186304855958225

`A000302(n+2)-A198275(n)`
-/

namespace A165130.P2471186304855958225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (n + 2) - A198275 n

end

end A165130.P2471186304855958225

namespace A165130

/-- `A000302(n+2)-A198275(n)` -/
def P2471186304855958225.Spec : Prop :=
  ∀ n, P2471186304855958225.a n = A165130 n

end A165130

/-! ## A165130.P11531724122713865447

`A020522(n+2)-A198274(n)`
-/

namespace A165130.P11531724122713865447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020522 (n + 2) - A198274 n

end

end A165130.P11531724122713865447

namespace A165130

/-- `A020522(n+2)-A198274(n)` -/
def P11531724122713865447.Spec : Prop :=
  ∀ n, P11531724122713865447.a n = A165130 n

end A165130

/-! ## A165130.P6067817082728002780

`32*A006516(n)-A000225(n)`
-/

namespace A165130.P6067817082728002780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A006516 n - A000225 n

end

end A165130.P6067817082728002780

namespace A165130

/-- `32*A006516(n)-A000225(n)` -/
def P6067817082728002780.Spec : Prop :=
  ∀ n, P6067817082728002780.a n = A165130 n

end A165130

/-! ## A165130.P2860678875016746329

`A020707(n)²+1-A110287(n)`
-/

namespace A165130.P2860678875016746329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n ^ 2 + (1 - A110287 n)

end

end A165130.P2860678875016746329

namespace A165130

/-- `A020707(n)²+1-A110287(n)` -/
def P2860678875016746329.Spec : Prop :=
  ∀ n, P2860678875016746329.a n = A165130 n

end A165130

/-! ## A165130.P8649013600927878533

`A126646(n+1)²-A005010(n)`
-/

namespace A165130.P8649013600927878533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (n + 1) ^ 2 - A005010 n

end

end A165130.P8649013600927878533

namespace A165130

/-- `A126646(n+1)²-A005010(n)` -/
def P8649013600927878533.Spec : Prop :=
  ∀ n, P8649013600927878533.a n = A165130 n

end A165130

/-! ## A165130.P11222997484728466960

`A000079(n+2)²-A198275(n)`
-/

namespace A165130.P11222997484728466960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 2) ^ 2 - A198275 n

end

end A165130.P11222997484728466960

namespace A165130

/-- `A000079(n+2)²-A198275(n)` -/
def P11222997484728466960.Spec : Prop :=
  ∀ n, P11222997484728466960.a n = A165130 n

end A165130

/-! ## A165130.P10411884208705269493

`(1-A020737(n))²-A198275(n)`
-/

namespace A165130.P10411884208705269493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A020737 n) ^ 2 - A198275 n

end

end A165130.P10411884208705269493

namespace A165130

/-- `(1-A020737(n))²-A198275(n)` -/
def P10411884208705269493.Spec : Prop :=
  ∀ n, P10411884208705269493.a n = A165130 n

end A165130

/-! ## A165130.P16341774923902095050

`(2-A020737(n))²-A005010(n)`
-/

namespace A165130.P16341774923902095050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A020737 n) ^ 2 - A005010 n

end

end A165130.P16341774923902095050

namespace A165130

/-- `(2-A020737(n))²-A005010(n)` -/
def P16341774923902095050.Spec : Prop :=
  ∀ n, P16341774923902095050.a n = A165130 n

end A165130

/-! ## A165130.P8539236977139199727

`A131577(n+3)²-A198275(n)`
-/

namespace A165130.P8539236977139199727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 3) ^ 2 - A198275 n

end

end A165130.P8539236977139199727

namespace A165130

/-- `A131577(n+3)²-A198275(n)` -/
def P8539236977139199727.Spec : Prop :=
  ∀ n, P8539236977139199727.a n = A165130 n

end A165130

/-! ## A165130.P15417595113266158260

`A086221(n+1)-A086224(n+1)`
-/

namespace A165130.P15417595113266158260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086221 (n + 1) - A086224 (n + 1)

end

end A165130.P15417595113266158260

namespace A165130

/-- `A086221(n+1)-A086224(n+1)` -/
def P15417595113266158260.Spec : Prop :=
  ∀ n, P15417595113266158260.a n = A165130 n

end A165130

/-! ## A165130.P7266117606444767619

`A000079(2*(n+2))-A198275(n)`
-/

namespace A165130.P7266117606444767619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * (n + 2)) - A198275 n

end

end A165130.P7266117606444767619

namespace A165130

/-- `A000079(2*(n+2))-A198275(n)` -/
def P7266117606444767619.Spec : Prop :=
  ∀ n, P7266117606444767619.a n = A165130 n

end A165130

/-! ## A165130.P16858536060818295392

`A086652(2*n+1)-A086224(n+1)`
-/

namespace A165130.P16858536060818295392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086652 (2 * n + 1) - A086224 (n + 1)

end

end A165130.P16858536060818295392

namespace A165130

/-- `A086652(2*n+1)-A086224(n+1)` -/
def P16858536060818295392.Spec : Prop :=
  ∀ n, P16858536060818295392.a n = A165130 n

end A165130

/-! ## A165130.P6040078721724748637

`A000079(n)*A175164(n)-A000225(n)`
-/

namespace A165130.P6040078721724748637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A175164 n - A000225 n

end

end A165130.P6040078721724748637

namespace A165130

/-- `A000079(n)*A175164(n)-A000225(n)` -/
def P6040078721724748637.Spec : Prop :=
  ∀ n, P6040078721724748637.a n = A165130 n

end A165130

/-! ## A165130.P6287462549336036442

`A020707(n)+A020707(n)²-A171389(n)`
-/

namespace A165130.P6287462549336036442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n + (A020707 n ^ 2 - A171389 n)

end

end A165130.P6287462549336036442

namespace A165130

/-- `A020707(n)+A020707(n)²-A171389(n)` -/
def P6287462549336036442.Spec : Prop :=
  ∀ n, P6287462549336036442.a n = A165130 n

end A165130

/-! ## A165130.P3088641613646564261

`A020707(n)²-(A198274(n)+A020707(n))`
-/

namespace A165130.P3088641613646564261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n ^ 2 - (A198274 n + A020707 n)

end

end A165130.P3088641613646564261

namespace A165130

/-- `A020707(n)²-(A198274(n)+A020707(n))` -/
def P3088641613646564261.Spec : Prop :=
  ∀ n, P3088641613646564261.a n = A165130 n

end A165130

/-! ## A165130.P540061367875801293

`A020737(n)²+A083575(n)-A195744(n)`
-/

namespace A165130.P540061367875801293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020737 n ^ 2 + (A083575 n - A195744 n)

end

end A165130.P540061367875801293

namespace A165130

/-- `A020737(n)²+A083575(n)-A195744(n)` -/
def P540061367875801293.Spec : Prop :=
  ∀ n, P540061367875801293.a n = A165130 n

end A165130

/-! ## A165130.P16358486333014020644

`A000225(n)²+A000225(n)*A110286(n)`
-/

namespace A165130.P16358486333014020644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n ^ 2 + A000225 n * A110286 n

end

end A165130.P16358486333014020644

namespace A165130

/-- `A000225(n)²+A000225(n)*A110286(n)` -/
def P16358486333014020644.Spec : Prop :=
  ∀ n, P16358486333014020644.a n = A165130 n

end A165130

/-!
# A165133: a(n) = (2^(n+4)-1)*(2^n+1).

The programs for A165133, the canonical program `A165133.P11713686712510916748` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165133 has offset 0).

The definition of A165133 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(n+4)-1)*(2^n+1)` (program `A165133.P11713686712510916748`, by `A165133.P11713686712510916748.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165133.P11713686712510916748

`(2^(n+4)-1)*(2^n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165133

/-- `(2^(n+4)-1)*(2^n+1)` -/
def P11713686712510916748.Spec : Prop :=
  ∀ n, P11713686712510916748.a n = A165133 n

theorem P11713686712510916748.correct : P11713686712510916748.Spec := by
  intro n
  simp only [A165133]

end A165133

/-! ## A165133.P11915954672298870874

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=30, a(1)=93, a(2)=315`
-/

namespace A165133.P11915954672298870874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [30, 93, 315] fun n a =>
  7 * a (n - 1) - 14 * a (n - 2) + 8 * a (n - 3)

end

end A165133.P11915954672298870874

namespace A165133

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P11915954672298870874.Spec : Prop :=
  ∀ n, P11915954672298870874.a n = A165133 n

theorem P11915954672298870874.correct : P11915954672298870874.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A165133, Nat.add_sub_cancel, A165133.P11915954672298870874.a, A165133.P11713686712510916748.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A165133, Nat.add_sub_cancel, A165133.P11915954672298870874.a, A165133.P11713686712510916748.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165133

/-! ## A165133.P17750074330944696751

`A176448(n)+A020737(n)²`
-/

namespace A165133.P17750074330944696751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176448 n + A020737 n ^ 2

end

end A165133.P17750074330944696751

namespace A165133

/-- `A176448(n)+A020737(n)²` -/
def P17750074330944696751.Spec : Prop :=
  ∀ n, P17750074330944696751.a n = A165133 n

end A165133

/-! ## A165133.P17187351954974336389

`A196305(n)+A020707(n)²`
-/

namespace A165133.P17187351954974336389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196305 n + A020707 n ^ 2

end

end A165133.P17187351954974336389

namespace A165133

/-- `A196305(n)+A020707(n)²` -/
def P17187351954974336389.Spec : Prop :=
  ∀ n, P17187351954974336389.a n = A165133 n

end A165133

/-! ## A165133.P6524243001056520846

`A220236(n+1)+A175805(n)`
-/

namespace A165133.P6524243001056520846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220236 (n + 1) + A175805 n

end

end A165133.P6524243001056520846

namespace A165133

/-- `A220236(n+1)+A175805(n)` -/
def P6524243001056520846.Spec : Prop :=
  ∀ n, P6524243001056520846.a n = A165133 n

end A165133

/-! ## A165133.P16354409291594625608

`A196305(n)+A000302(n+2)`
-/

namespace A165133.P16354409291594625608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196305 n + A000302 (n + 2)

end

end A165133.P16354409291594625608

namespace A165133

/-- `A196305(n)+A000302(n+2)` -/
def P16354409291594625608.Spec : Prop :=
  ∀ n, P16354409291594625608.a n = A165133 n

end A165133

/-! ## A165133.P8667237008548048827

`A165222(n)-A052548(n+1)`
-/

namespace A165133.P8667237008548048827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165222 n - A052548 (n + 1)

end

end A165133.P8667237008548048827

namespace A165133

/-- `A165222(n)-A052548(n+1)` -/
def P8667237008548048827.Spec : Prop :=
  ∀ n, P8667237008548048827.a n = A165133 n

end A165133

/-! ## A165133.P1029691929699184010

`A235886(n+1)-A083705(n)`
-/

namespace A165133.P1029691929699184010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235886 (n + 1) - A083705 n

end

end A165133.P1029691929699184010

namespace A165133

/-- `A235886(n+1)-A083705(n)` -/
def P1029691929699184010.Spec : Prop :=
  ∀ n, P1029691929699184010.a n = A165133 n

end A165133

/-! ## A165133.P7107334895374531889

`A165222(n)-2*A000051(n)`
-/

namespace A165133.P7107334895374531889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165222 n - 2 * A000051 n

end

end A165133.P7107334895374531889

namespace A165133

/-- `A165222(n)-2*A000051(n)` -/
def P7107334895374531889.Spec : Prop :=
  ∀ n, P7107334895374531889.a n = A165133 n

end A165133

/-! ## A165133.P9037818847536935067

`A020737(n)²+A156127(n)+1`
-/

namespace A165133.P9037818847536935067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020737 n ^ 2 + (A156127 n + 1)

end

end A165133.P9037818847536935067

namespace A165133

/-- `A020737(n)²+A156127(n)+1` -/
def P9037818847536935067.Spec : Prop :=
  ∀ n, P9037818847536935067.a n = A165133 n

end A165133

/-! ## A165133.P1359383919685894464

`record[A052551(n+6)*A052552(n)]`
-/

namespace A165133.P1359383919685894464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (n + 6) * A052552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165133.P1359383919685894464

namespace A165133

/-- `record[A052551(n+6)*A052552(n)]` -/
def P1359383919685894464.Spec : Prop :=
  ∀ n, P1359383919685894464.a n = A165133 n

end A165133

/-! ## A165133.P4472241475493261543

`A086652(2*n+1)+A083705(n+1)-2`
-/

namespace A165133.P4472241475493261543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086652 (2 * n + 1) + (A083705 (n + 1) - 2)

end

end A165133.P4472241475493261543

namespace A165133

/-- `A086652(2*n+1)+A083705(n+1)-2` -/
def P4472241475493261543.Spec : Prop :=
  ∀ n, P4472241475493261543.a n = A165133 n

end A165133

/-! ## A165133.P3292243457754332084

`A000079(n)*A175162(n)-A000051(n)`
-/

namespace A165133.P3292243457754332084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A175162 n - A000051 n

end

end A165133.P3292243457754332084

namespace A165133

/-- `A000079(n)*A175162(n)-A000051(n)` -/
def P3292243457754332084.Spec : Prop :=
  ∀ n, P3292243457754332084.a n = A165133 n

end A165133

/-! ## A165133.P16447245302095270642

`xor(A083705(n), A165222(n))-A083705(n)`
-/

namespace A165133.P16447245302095270642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A083705 n) (A165222 n) - A083705 n

end

end A165133.P16447245302095270642

namespace A165133

/-- `xor(A083705(n), A165222(n))-A083705(n)` -/
def P16447245302095270642.Spec : Prop :=
  ∀ n, P16447245302095270642.a n = A165133 n

end A165133

/-! ## A165133.P8483584465080034925

`A020707(n)+A086225(n)+A020707(n)²`
-/

namespace A165133.P8483584465080034925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n + (A086225 n + A020707 n ^ 2)

end

end A165133.P8483584465080034925

namespace A165133

/-- `A020707(n)+A086225(n)+A020707(n)²` -/
def P8483584465080034925.Spec : Prop :=
  ∀ n, P8483584465080034925.a n = A165133 n

end A165133

/-! ## A165133.P13351985699279922907

`A020707(n)²+A198276(n)-A020707(n)`
-/

namespace A165133.P13351985699279922907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n ^ 2 + (A198276 n - A020707 n)

end

end A165133.P13351985699279922907

namespace A165133

/-- `A020707(n)²+A198276(n)-A020707(n)` -/
def P13351985699279922907.Spec : Prop :=
  ∀ n, P13351985699279922907.a n = A165133 n

end A165133

/-! ## A165133.P1835034922275859108

`A176448(n)+(A086225(n)-A176448(n))²`
-/

namespace A165133.P1835034922275859108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176448 n + (A086225 n - A176448 n) ^ 2

end

end A165133.P1835034922275859108

namespace A165133

/-- `A176448(n)+(A086225(n)-A176448(n))²` -/
def P1835034922275859108.Spec : Prop :=
  ∀ n, P1835034922275859108.a n = A165133 n

end A165133

/-! ## A165133.P8078892552999033247

`A000079(n+1)*A175161(n)-A000051(n)`
-/

namespace A165133.P8078892552999033247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A175161 n - A000051 n

end

end A165133.P8078892552999033247

namespace A165133

/-- `A000079(n+1)*A175161(n)-A000051(n)` -/
def P8078892552999033247.Spec : Prop :=
  ∀ n, P8078892552999033247.a n = A165133 n

end A165133

/-! ## A165133.P7253248580050198912

`A085601(n+1)+A375256(n+2)+A085601(n)`
-/

namespace A165133.P7253248580050198912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085601 (n + 1) + (A375256 (n + 2) + A085601 n)

end

end A165133.P7253248580050198912

namespace A165133

/-- `A085601(n+1)+A375256(n+2)+A085601(n)` -/
def P7253248580050198912.Spec : Prop :=
  ∀ n, P7253248580050198912.a n = A165133 n

end A165133

/-! ## A165133.P12833806921094540639

`A235886(n+1)-xor(A165222(n), A235886(n+1))`
-/

namespace A165133.P12833806921094540639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235886 (n + 1) - Int.xor (A165222 n) (A235886 (n + 1))

end

end A165133.P12833806921094540639

namespace A165133

/-- `A235886(n+1)-xor(A165222(n), A235886(n+1))` -/
def P12833806921094540639.Spec : Prop :=
  ∀ n, P12833806921094540639.a n = A165133 n

end A165133

/-!
# A165134: Number of directed Hamiltonian paths in the n X n knight graph.

The programs for A165134, there is no canonical definition to state claims against.
-/

/-! ## A165134.P10477220874623447154

`A000007(n)+2*A308131(n+1)`
-/

namespace A165134.P10477220874623447154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A308131 (n + 1)

end

end A165134.P10477220874623447154

/-! ## A165134.P6068806266537306726

`A306282(n+1)+2*A308131(n+1)`
-/

namespace A165134.P6068806266537306726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306282 (n + 1) + 2 * A308131 (n + 1)

end

end A165134.P6068806266537306726

/-! ## A165134.P14096784286447860382

`(a(2-A131507(n)+n)+2)*A308131(n+1)` with `a(0)=1`
-/

namespace A165134.P14096784286447860382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (2 - A131507 n + (n : ℤ)).toNat + 2) * A308131 (n + 1)

end

end A165134.P14096784286447860382

/-!
# A165135: The number of n-digit positive papaya numbers.

The programs for A165135, there is no canonical definition to state claims against.
-/

/-! ## A165135.P3167461794381914276

`A052268(n+1)-A165611(n+1)`
-/

namespace A165135.P3167461794381914276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052268 (n + 1) - A165611 (n + 1)

end

end A165135.P3167461794381914276

/-! ## A165135.P14335272392650089098

`Δ[A002283(n)]-A165611(n+1)`
-/

namespace A165135.P14335272392650089098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A165611 (n + 1)

end

end A165135.P14335272392650089098

/-! ## A165135.P17015102327071021881

`Δ[A011557(n)]-A165611(n+1)`
-/

namespace A165135.P17015102327071021881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A165611 (n + 1)

end

end A165135.P17015102327071021881

/-! ## A165135.P13500510939644107916

`Δ[A133472(n)]-A165611(n+1)`
-/

namespace A165135.P13500510939644107916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A165611 (n + 1)

end

end A165135.P13500510939644107916

/-! ## A165135.P9302401297975707854

`Δ[Δ[A002275(n)]]-A165611(n+1)`
-/

namespace A165135.P9302401297975707854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A165611 (n + 1)

end

end A165135.P9302401297975707854

/-!
# A165136: a(n) is the number of patterns for n-digit papaya numbers.

The programs for A165136, there is no canonical definition to state claims against.
-/

/-! ## A165136.P12552287041298772633

`A165137(A077342(n+1))`
-/

namespace A165136.P12552287041298772633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165137 (A077342 (n + 1)).toNat

end

end A165136.P12552287041298772633

/-! ## A165136.P4071619014267982255

`A165137(A242474(n+1))`
-/

namespace A165136.P4071619014267982255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165137 (A242474 (n + 1)).toNat

end

end A165136.P4071619014267982255

/-! ## A165136.P10475211417932456922

`A165137(A351374(n+1))`
-/

namespace A165136.P10475211417932456922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165137 (A351374 (n + 1)).toNat

end

end A165136.P10475211417932456922

/-! ## A165136.P11196915189643871483

`A165137(∑[∑[A072189(n)]])`
-/

namespace A165136.P11196915189643871483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072189 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165137 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A165136.P11196915189643871483

/-! ## A165136.P18196297562291220380

`∏{e}[A000079(n+1), A165137(#)]`
-/

namespace A165136.P18196297562291220380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A165137 (Nat.factorization (f1 n).natAbs p)

end

end A165136.P18196297562291220380

/-!
# A165137: a(n) is the number of patterns for n-character papaya words in an infinite alphabet.

The programs for A165137, there is no canonical definition to state claims against.
-/

/-! ## A165137.P4566994777159529643

`∏{e}[2^n, A165136(#)]`
-/

namespace A165137.P4566994777159529643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A165136 (Nat.factorization (f1 n) p)

end

end A165137.P4566994777159529643

/-! ## A165137.P12402209043206293701

`A165136(A219209(n))`
-/

namespace A165137.P12402209043206293701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165136 (A219209 n).toNat

end

end A165137.P12402209043206293701

/-! ## A165137.P14487946748007322825

`A165136(A250266(n+1))`
-/

namespace A165137.P14487946748007322825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165136 (A250266 (n + 1)).toNat

end

end A165137.P14487946748007322825

/-! ## A165137.P6989559329525365951

`A165136(n^A300385(n+1))`
-/

namespace A165137.P6989559329525365951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165136 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A300385 (n + 1) : ℤ))).toNat

end

end A165137.P6989559329525365951

/-! ## A165137.P1146059961493342988

`A165136(A250265(n+1))`
-/

namespace A165137.P1146059961493342988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165136 (A250265 (n + 1)).toNat

end

end A165137.P1146059961493342988

/-!
# A165138: Smallest prime p > prime(n) such that p+prime(n) is a semiprime.

The programs for A165138, there is no canonical definition to state claims against.
-/

/-! ## A165138.P7483820192316493139

`A084704((2*n)%(n+1)+2)`
-/

namespace A165138.P7483820192316493139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084704 (2 * n % (n + 1) + 2)

end

end A165138.P7483820192316493139

/-! ## A165138.P3655272216437595029

`A084704(∏{d}[n, 1-#]+1+n)`
-/

namespace A165138.P3655272216437595029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084704 (∏ d ∈ Nat.divisors (f1 n), (1 - (d : ℤ)) + 1 + (n : ℤ)).toNat

end

end A165138.P3655272216437595029

/-! ## A165138.P17810873695027225356

`A084704(n-(n+2)%(n+1)+2)`
-/

namespace A165138.P17810873695027225356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084704 ((n : ℤ) - (((n + 2) % (n + 1) : ℕ) : ℤ) + 2).toNat

end

end A165138.P17810873695027225356

/-! ## A165138.P6000298363279061593

`A084704(A254667(n+1))`
-/

namespace A165138.P6000298363279061593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084704 (A254667 (n + 1)).toNat

end

end A165138.P6000298363279061593

/-! ## A165138.P17764526590743914905

`A084704(gcd(2, A000040(n+1))+n)`
-/

namespace A165138.P17764526590743914905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084704 (Int.gcd 2 (A000040 (n + 1)) + n)

end

end A165138.P17764526590743914905

/-! ## A165138.P17222165102292338172

`A084704(A233583(n+2))`
-/

namespace A165138.P17222165102292338172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084704 (A233583 (n + 2)).toNat

end

end A165138.P17222165102292338172

/-!
# A165144: Number of semiprimes between two primes squared.

The programs for A165144, the canonical program `A165144.P9121027213263210810` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165144 has offset 1).

The definition of A165144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165144.P6572309037884292880

`A217019(n+1)-1`
-/

namespace A165144.P6572309037884292880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217019 (n + 1) - 1

end

end A165144.P6572309037884292880

namespace A165144

/-- `A217019(n+1)-1` -/
def P6572309037884292880.Spec : Prop :=
  ∀ n, P6572309037884292880.a n = A165144 (n + 1)

end A165144

/-! ## A165144.P12406346535218974179

`Δ[A128301(n+1)]-1`
-/

namespace A165144.P12406346535218974179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A165144.P12406346535218974179

namespace A165144

/-- `Δ[A128301(n+1)]-1` -/
def P12406346535218974179.Spec : Prop :=
  ∀ n, P12406346535218974179.a n = A165144 (n + 1)

end A165144

/-! ## A165144.P8509280814587837600

`Δ[A128301(n+1)+A001489(n)]`
-/

namespace A165144.P8509280814587837600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128301 (n + 1) + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165144.P8509280814587837600

namespace A165144

/-- `Δ[A128301(n+1)+A001489(n)]` -/
def P8509280814587837600.Spec : Prop :=
  ∀ n, P8509280814587837600.a n = A165144 (n + 1)

end A165144

/-! ## A165144.P2464423054096415721

`A128301(n+2)-1-A128301(n+1)`
-/

namespace A165144.P2464423054096415721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128301 (n + 2) - 1 - A128301 (n + 1)

end

end A165144.P2464423054096415721

namespace A165144

/-- `A128301(n+2)-1-A128301(n+1)` -/
def P2464423054096415721.Spec : Prop :=
  ∀ n, P2464423054096415721.a n = A165144 (n + 1)

end A165144

/-! ## A165144.P9121027213263210810

`Δ[A038108(A000040(n+1))]-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A165144

/-- `Δ[A038108(A000040(n+1))]-1` -/
def P9121027213263210810.Spec : Prop :=
  ∀ n, P9121027213263210810.a n = A165144 (n + 1)

theorem P9121027213263210810.correct : P9121027213263210810.Spec := by
  intro n
  simp only [A165144, Nat.add_sub_cancel]

end A165144

/-! ## A165144.P807317799477508739

`A023443(A217019(n+1))`
-/

namespace A165144.P807317799477508739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A217019 (n + 1)).toNat

end

end A165144.P807317799477508739

namespace A165144

/-- `A023443(A217019(n+1))` -/
def P807317799477508739.Spec : Prop :=
  ∀ n, P807317799477508739.a n = A165144 (n + 1)

end A165144

/-! ## A165144.P2398050340220175892

`A023443(Δ[A128301(n+1)])`
-/

namespace A165144.P2398050340220175892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A165144.P2398050340220175892

namespace A165144

/-- `A023443(Δ[A128301(n+1)])` -/
def P2398050340220175892.Spec : Prop :=
  ∀ n, P2398050340220175892.a n = A165144 (n + 1)

end A165144

/-! ## A165144.P2852945250446468385

`abs(A024000(Δ[A128301(n+1)]))`
-/

namespace A165144.P2852945250446468385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024000 (f1 (n + 1) - f1 n).toNat|

end

end A165144.P2852945250446468385

namespace A165144

/-- `abs(A024000(Δ[A128301(n+1)]))` -/
def P2852945250446468385.Spec : Prop :=
  ∀ n, P2852945250446468385.a n = A165144 (n + 1)

end A165144

/-! ## A165144.P12452034050408591548

`Δ[A205726(Δ[A007504(n)])]-1`
-/

namespace A165144.P12452034050408591548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205726 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A165144.P12452034050408591548

namespace A165144

/-- `Δ[A205726(Δ[A007504(n)])]-1` -/
def P12452034050408591548.Spec : Prop :=
  ∀ n, P12452034050408591548.a n = A165144 (n + 1)

end A165144

/-! ## A165144.P16271556918163977173

`Δ[A205726(A008578(n+2))]-1`
-/

namespace A165144.P16271556918163977173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205726 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A165144.P16271556918163977173

namespace A165144

/-- `Δ[A205726(A008578(n+2))]-1` -/
def P16271556918163977173.Spec : Prop :=
  ∀ n, P16271556918163977173.a n = A165144 (n + 1)

end A165144

/-! ## A165144.P3340130450078415519

`Δ[A205726(sqrt(A001248(n+1)))]-1`
-/

namespace A165144.P3340130450078415519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205726 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A165144.P3340130450078415519

namespace A165144

/-- `Δ[A205726(sqrt(A001248(n+1)))]-1` -/
def P3340130450078415519.Spec : Prop :=
  ∀ n, P3340130450078415519.a n = A165144 (n + 1)

end A165144

/-!
# A165145: Partial sums of A058183.

The programs for A165145, the canonical program `A165145.P4805269214844964162` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165145 has offset 1).

The definition of A165145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165145.P4805269214844964162

`∑[A058183(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A165145

/-- `∑[A058183(n+1)]` -/
def P4805269214844964162.Spec : Prop :=
  ∀ n, P4805269214844964162.a n = A165145 (n + 1)

theorem P4805269214844964162.correct : P4805269214844964162.Spec := by
  intro n
  simp only [A165145, Nat.add_sub_cancel]

end A165145

/-! ## A165145.P18275801510604835959

`∑[A055642(n+1)+a(n-1)]` with `a(0)=1`
-/

namespace A165145.P18275801510604835959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A055642 (n + 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165145.P18275801510604835959

namespace A165145

/-- `∑[A055642(n+1)+a(n-1)]` -/
def P18275801510604835959.Spec : Prop :=
  ∀ n, P18275801510604835959.a n = A165145 (n + 1)

end A165145

/-! ## A165145.P10004986782173867278

`A058183(C(n+1, n))+a(n-1)` with `a(0)=1`
-/

namespace A165145.P10004986782173867278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A058183 (Nat.choose (n + 1) n) + a (n - 1)

end

end A165145.P10004986782173867278

namespace A165145

/-- `A058183(C(n+1, n))+a(n-1)` -/
def P10004986782173867278.Spec : Prop :=
  ∀ n, P10004986782173867278.a n = A165145 (n + 1)

end A165145

/-! ## A165145.P1375797540471401800

`∑[A004216(n+1)+a(n-1)+1]` with `a(0)=1`
-/

namespace A165145.P1375797540471401800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A004216 (n + 1) + (f1 (n - 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165145.P1375797540471401800

namespace A165145

/-- `∑[A004216(n+1)+a(n-1)+1]` -/
def P1375797540471401800.Spec : Prop :=
  ∀ n, P1375797540471401800.a n = A165145 (n + 1)

end A165145

/-! ## A165145.P3076667744813192338

`∑[∑{digits}[n+1, A036370(#)]+a(n-1)]` with `a(0)=1`
-/

namespace A165145.P3076667744813192338
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A036370 x).sum + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165145.P3076667744813192338

namespace A165145

/-- `∑[∑{digits}[n+1, A036370(#)]+a(n-1)]` -/
def P3076667744813192338.Spec : Prop :=
  ∀ n, P3076667744813192338.a n = A165145 (n + 1)

end A165145

/-! ## A165145.P17714904883850363771

`∑[record[A058183(A324343(n))]]`
-/

namespace A165145.P17714904883850363771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058183 (A324343 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165145.P17714904883850363771

namespace A165145

/-- `∑[record[A058183(A324343(n))]]` -/
def P17714904883850363771.Spec : Prop :=
  ∀ n, P17714904883850363771.a n = A165145 (n + 1)

end A165145

/-! ## A165145.P12457294163326135406

`∑[A117804(n+2)-1]`
-/

namespace A165145.P12457294163326135406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165145.P12457294163326135406

namespace A165145

/-- `∑[A117804(n+2)-1]` -/
def P12457294163326135406.Spec : Prop :=
  ∀ n, P12457294163326135406.a n = A165145 (n + 1)

end A165145

/-! ## A165145.P7759308731180888900

`∑[record[A058183(A158416(n))]]`
-/

namespace A165145.P7759308731180888900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058183 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165145.P7759308731180888900

namespace A165145

/-- `∑[record[A058183(A158416(n))]]` -/
def P7759308731180888900.Spec : Prop :=
  ∀ n, P7759308731180888900.a n = A165145 (n + 1)

end A165145

/-! ## A165145.P1801668009760871224

`∑[lt[A272411(n+4), A272379(n)]]`
-/

namespace A165145.P1801668009760871224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272411 (n + 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272379 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165145.P1801668009760871224

namespace A165145

/-- `∑[lt[A272411(n+4), A272379(n)]]` -/
def P1801668009760871224.Spec : Prop :=
  ∀ n, (P1801668009760871224.a n : ℤ) = A165145 (n + 1)

end A165145

/-! ## A165145.P6651948615573591723

`∑[lt[A272411(n+4), A272412(3*n+2)]]`
-/

namespace A165145.P6651948615573591723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272411 (n + 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272412 (3 * n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165145.P6651948615573591723

namespace A165145

/-- `∑[lt[A272411(n+4), A272412(3*n+2)]]` -/
def P6651948615573591723.Spec : Prop :=
  ∀ n, (P6651948615573591723.a n : ℤ) = A165145 (n + 1)

end A165145

/-!
# A165147: a(n) = (3*7^n-3^n)/2.

The programs for A165147, the canonical program `A165147.P4868264087400839866` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165147 has offset 0).

The definition of A165147 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*7^n-3^n)/2` (program `A165147.P4446251668697023612`, by `A165147.P4446251668697023612.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165147.P4446251668697023612

`(3*7^n-3^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165147.P4446251668697023612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 7 ^ n : ℤ) - (3 ^ n : ℤ) : ℚ) / 2

end

end A165147.P4446251668697023612

namespace A165147

/-- `(3*7^n-3^n)/2` -/
def P4446251668697023612.Spec : Prop :=
  ∀ n, P4446251668697023612.a n = (A165147 n : ℚ)

theorem P4446251668697023612.correct : P4446251668697023612.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A165147, Nat.add_sub_cancel, A165147.P4446251668697023612.a, A165147.P4868264087400839866.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A165147, Nat.add_sub_cancel, A165147.P4446251668697023612.a, A165147.P4868264087400839866.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165147

/-! ## A165147.P4868264087400839866

`10*a(n-1)-21*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165147

/-- `10*a(n-1)-21*a(n-2)` -/
def P4868264087400839866.Spec : Prop :=
  ∀ n, P4868264087400839866.a n = A165147 n

theorem P4868264087400839866.correct : P4868264087400839866.Spec := by
  intro n
  simp only [A165147]

end A165147

/-! ## A165147.P8901133973907071840

`ogf((1-x)/(1-10x+21x^2))`
-/

namespace A165147.P8901133973907071840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -10, 21] n

end

end A165147.P8901133973907071840

namespace A165147

/-- `ogf((1-x)/(1-10x+21x^2))` -/
def P8901133973907071840.Spec : Prop :=
  ∀ n, P8901133973907071840.a n = A165147 n

end A165147

/-! ## A165147.P13422013440004321820

`A199417(n)-A007051(n)`
-/

namespace A165147.P13422013440004321820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199417 n - A007051 n

end

end A165147.P13422013440004321820

namespace A165147

/-- `A199417(n)-A007051(n)` -/
def P13422013440004321820.Spec : Prop :=
  ∀ n, P13422013440004321820.a n = A165147 n

end A165147

/-! ## A165147.P6504762892229689769

`A190541(n)+A000244(n)+A190541(n)/2`
-/

namespace A165147.P6504762892229689769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190541 n : ℚ) + ((A000244 n : ℚ) + (A190541 n : ℚ) / 2)

end

end A165147.P6504762892229689769

namespace A165147

/-- `A190541(n)+A000244(n)+A190541(n)/2` -/
def P6504762892229689769.Spec : Prop :=
  ∀ n, P6504762892229689769.a n = (A165147 n : ℚ)

end A165147

/-! ## A165147.P12954953672595586919

`Δ[A155612(n)/4]`
-/

namespace A165147.P12954953672595586919
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155612 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165147.P12954953672595586919

namespace A165147

/-- `Δ[A155612(n)/4]` -/
def P12954953672595586919.Spec : Prop :=
  ∀ n, P12954953672595586919.a n = (A165147 n : ℚ)

end A165147

/-! ## A165147.P7897377746736690065

`Δ[A190541(n)/4]`
-/

namespace A165147.P7897377746736690065
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190541 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165147.P7897377746736690065

namespace A165147

/-- `Δ[A190541(n)/4]` -/
def P7897377746736690065.Spec : Prop :=
  ∀ n, P7897377746736690065.a n = (A165147 n : ℚ)

end A165147

/-! ## A165147.P6930328105281944446

`Δ[(A034494(n)-A003462(n))/2]`
-/

namespace A165147.P6930328105281944446
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034494 n - A003462 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165147.P6930328105281944446

namespace A165147

/-- `Δ[(A034494(n)-A003462(n))/2]` -/
def P6930328105281944446.Spec : Prop :=
  ∀ n, P6930328105281944446.a n = (A165147 n : ℚ)

end A165147

/-! ## A165147.P648063574755690171

`Δ[A081336(n)/2-A007051(n)]`
-/

namespace A165147.P648063574755690171
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081336 n : ℚ) / 2 - (A007051 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165147.P648063574755690171

namespace A165147

/-- `Δ[A081336(n)/2-A007051(n)]` -/
def P648063574755690171.Spec : Prop :=
  ∀ n, P648063574755690171.a n = (A165147 n : ℚ)

end A165147

/-! ## A165147.P13588051461408609056

`Δ[A074608(n)/4-A007051(n)]`
-/

namespace A165147.P13588051461408609056
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074608 n : ℚ) / 4 - (A007051 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165147.P13588051461408609056

namespace A165147

/-- `Δ[A074608(n)/4-A007051(n)]` -/
def P13588051461408609056.Spec : Prop :=
  ∀ n, P13588051461408609056.a n = (A165147 n : ℚ)

end A165147

/-! ## A165147.P7879563281228381802

`A081336(n+1)-A074608(n)-A074608(n)`
-/

namespace A165147.P7879563281228381802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081336 (n + 1) - A074608 n - A074608 n

end

end A165147.P7879563281228381802

namespace A165147

/-- `A081336(n+1)-A074608(n)-A074608(n)` -/
def P7879563281228381802.Spec : Prop :=
  ∀ n, P7879563281228381802.a n = A165147 n

end A165147

/-! ## A165147.P9116889878981110140

`Δ[2*7^n-3^n-A016138(n)]`
-/

namespace A165147.P9116889878981110140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 7 ^ n : ℤ) - (3 ^ n : ℤ) - A016138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165147.P9116889878981110140

namespace A165147

/-- `Δ[2*7^n-3^n-A016138(n)]` -/
def P9116889878981110140.Spec : Prop :=
  ∀ n, P9116889878981110140.a n = A165147 n

end A165147

/-!
# A165148: a(n) = (3*8^n-4^n)/2.

The programs for A165148, the canonical program `A165148.P3569181581809808434` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165148 has offset 0).

The definition of A165148 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*8^n-4^n)/2` (program `A165148.P8378955897676412878`, by `A165148.P8378955897676412878.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165148.P8378955897676412878

`(3*8^n-4^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165148.P8378955897676412878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 8 ^ n : ℤ) - (4 ^ n : ℤ) : ℚ) / 2

end

end A165148.P8378955897676412878

namespace A165148

/-- `(3*8^n-4^n)/2` -/
def P8378955897676412878.Spec : Prop :=
  ∀ n, P8378955897676412878.a n = (A165148 n : ℚ)

theorem P8378955897676412878.correct : P8378955897676412878.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A165148, Nat.add_sub_cancel, A165148.P8378955897676412878.a, A165148.P3569181581809808434.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A165148, Nat.add_sub_cancel, A165148.P8378955897676412878.a, A165148.P3569181581809808434.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165148

/-! ## A165148.P3569181581809808434

`12*a(n-1)-32*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165148

/-- `12*a(n-1)-32*a(n-2)` -/
def P3569181581809808434.Spec : Prop :=
  ∀ n, P3569181581809808434.a n = A165148 n

theorem P3569181581809808434.correct : P3569181581809808434.Spec := by
  intro n
  simp only [A165148]

end A165148

/-! ## A165148.P6594251952246033849

`2^n*Δ[C(2^n, 2)]`
-/

namespace A165148.P6594251952246033849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A165148.P6594251952246033849

namespace A165148

/-- `2^n*Δ[C(2^n, 2)]` -/
def P6594251952246033849.Spec : Prop :=
  ∀ n, P6594251952246033849.a n = A165148 n

end A165148

/-! ## A165148.P383419732929358958

`(C(2^n, 2)+4^n)*2^n`
-/

namespace A165148.P383419732929358958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 ^ n) 2 + 4 ^ n) * 2 ^ n

end

end A165148.P383419732929358958

namespace A165148

/-- `(C(2^n, 2)+4^n)*2^n` -/
def P383419732929358958.Spec : Prop :=
  ∀ n, (P383419732929358958.a n : ℤ) = A165148 n

end A165148

/-! ## A165148.P10212412439926811427

`Δ[(2^n-1)*4^(n-1)]-lcm(2^n-1, floor(4^(n-1)))`
-/

namespace A165148.P10212412439926811427
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - 1 : ℚ) * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (Int.lcm ((2 ^ n : ℤ) - 1) ⌊(4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ : ℚ)

end

end A165148.P10212412439926811427

namespace A165148

/-- `Δ[(2^n-1)*4^(n-1)]-lcm(2^n-1, floor(4^(n-1)))` -/
def P10212412439926811427.Spec : Prop :=
  ∀ n, P10212412439926811427.a n = (A165148 n : ℚ)

end A165148

/-! ## A165148.P6512462940220880297

`2^n*A010036(n)`
-/

namespace A165148.P6512462940220880297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A010036 n

end

end A165148.P6512462940220880297

namespace A165148

/-- `2^n*A010036(n)` -/
def P6512462940220880297.Spec : Prop :=
  ∀ n, P6512462940220880297.a n = A165148 n

end A165148

/-! ## A165148.P10147466017605850715

`2^n*Δ[A006516(n)]`
-/

namespace A165148.P10147466017605850715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A165148.P10147466017605850715

namespace A165148

/-- `2^n*Δ[A006516(n)]` -/
def P10147466017605850715.Spec : Prop :=
  ∀ n, P10147466017605850715.a n = A165148 n

end A165148

/-! ## A165148.P6575446613172764045

`lcm(Δ[C(2^n, 2)], A081294(n))`
-/

namespace A165148.P6575446613172764045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A081294 n)

end

end A165148.P6575446613172764045

namespace A165148

/-- `lcm(Δ[C(2^n, 2)], A081294(n))` -/
def P6575446613172764045.Spec : Prop :=
  ∀ n, (P6575446613172764045.a n : ℤ) = A165148 n

end A165148

/-! ## A165148.P659856742302710848

`2^(n-2)*A093357(n+2)`
-/

namespace A165148.P659856742302710848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A093357 (n + 2) : ℚ)

end

end A165148.P659856742302710848

namespace A165148

/-- `2^(n-2)*A093357(n+2)` -/
def P659856742302710848.Spec : Prop :=
  ∀ n, P659856742302710848.a n = (A165148 n : ℚ)

end A165148

/-! ## A165148.P9883232682171762871

`A011782(2*n)+8*a(n-1)` with `a(0)=1`
-/

namespace A165148.P9883232682171762871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011782 (2 * n) + 8 * a (n - 1)

end

end A165148.P9883232682171762871

namespace A165148

/-- `A011782(2*n)+8*a(n-1)` -/
def P9883232682171762871.Spec : Prop :=
  ∀ n, P9883232682171762871.a n = A165148 n

end A165148

/-! ## A165148.P5909292827398447930

`A052940(n)*A081294(n)`
-/

namespace A165148.P5909292827398447930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052940 n * A081294 n

end

end A165148.P5909292827398447930

namespace A165148

/-- `A052940(n)*A081294(n)` -/
def P5909292827398447930.Spec : Prop :=
  ∀ n, P5909292827398447930.a n = A165148 n

end A165148

/-! ## A165148.P11093313809570358058

`lcm(A009117(n), A010036(n))`
-/

namespace A165148.P11093313809570358058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009117 n) (A010036 n)

end

end A165148.P11093313809570358058

namespace A165148

/-- `lcm(A009117(n), A010036(n))` -/
def P11093313809570358058.Spec : Prop :=
  ∀ n, (P11093313809570358058.a n : ℤ) = A165148 n

end A165148

/-! ## A165148.P12943842582918026014

`Δ[A016152(n)]-A016152(n)`
-/

namespace A165148.P12943842582918026014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A016152 n

end

end A165148.P12943842582918026014

namespace A165148

/-- `Δ[A016152(n)]-A016152(n)` -/
def P12943842582918026014.Spec : Prop :=
  ∀ n, P12943842582918026014.a n = A165148 n

end A165148

/-! ## A165148.P11035899456860282191

`Δ[A006516(n)]*A000079(n)`
-/

namespace A165148.P11035899456860282191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A165148.P11035899456860282191

namespace A165148

/-- `Δ[A006516(n)]*A000079(n)` -/
def P11035899456860282191.Spec : Prop :=
  ∀ n, P11035899456860282191.a n = A165148 n

end A165148

/-! ## A165148.P18382699071181634636

`lcm(Δ[A006516(n)], A081294(n))`
-/

namespace A165148.P18382699071181634636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A081294 n)

end

end A165148.P18382699071181634636

namespace A165148

/-- `lcm(Δ[A006516(n)], A081294(n))` -/
def P18382699071181634636.Spec : Prop :=
  ∀ n, (P18382699071181634636.a n : ℤ) = A165148 n

end A165148

/-! ## A165148.P16610363721363588014

`A010036(n)*A011782(n+1)`
-/

namespace A165148.P16610363721363588014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010036 n * A011782 (n + 1)

end

end A165148.P16610363721363588014

namespace A165148

/-- `A010036(n)*A011782(n+1)` -/
def P16610363721363588014.Spec : Prop :=
  ∀ n, P16610363721363588014.a n = A165148 n

end A165148

/-! ## A165148.P17674351787486186355

`A010036(n)*A131577(n+1)`
-/

namespace A165148.P17674351787486186355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010036 n * A131577 (n + 1)

end

end A165148.P17674351787486186355

namespace A165148

/-- `A010036(n)*A131577(n+1)` -/
def P17674351787486186355.Spec : Prop :=
  ∀ n, P17674351787486186355.a n = A165148 n

end A165148

/-! ## A165148.P2715092477774264295

`A000079(n)*A135098(2*n)`
-/

namespace A165148.P2715092477774264295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A135098 (2 * n)

end

end A165148.P2715092477774264295

namespace A165148

/-- `A000079(n)*A135098(2*n)` -/
def P2715092477774264295.Spec : Prop :=
  ∀ n, P2715092477774264295.a n = A165148 n

end A165148

/-! ## A165148.P17006441161287391058

`Δ[A006516(n)]*Δ[A168616(n)]`
-/

namespace A165148.P17006441161287391058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A165148.P17006441161287391058

namespace A165148

/-- `Δ[A006516(n)]*Δ[A168616(n)]` -/
def P17006441161287391058.Spec : Prop :=
  ∀ n, P17006441161287391058.a n = A165148 n

end A165148

/-! ## A165148.P735379731447646939

`A000079(n)²/2*A153893(n)`
-/

namespace A165148.P735379731447646939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n ^ 2 : ℚ) / 2 * (A153893 n : ℚ)

end

end A165148.P735379731447646939

namespace A165148

/-- `A000079(n)²/2*A153893(n)` -/
def P735379731447646939.Spec : Prop :=
  ∀ n, P735379731447646939.a n = (A165148 n : ℚ)

end A165148

/-!
# A165149: a(n) = (3*9^n - 5^n)/2.

The programs for A165149, the canonical program `A165149.P633638898979146962` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165149 has offset 0).

The definition of A165149 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*9^n-5^n)/2` (program `A165149.P3644768932098415320`, by `A165149.P3644768932098415320.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165149.P3644768932098415320

`(3*9^n-5^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165149.P3644768932098415320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 9 ^ n : ℤ) - (5 ^ n : ℤ) : ℚ) / 2

end

end A165149.P3644768932098415320

namespace A165149

/-- `(3*9^n-5^n)/2` -/
def P3644768932098415320.Spec : Prop :=
  ∀ n, P3644768932098415320.a n = (A165149 n : ℚ)

theorem P3644768932098415320.correct : P3644768932098415320.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A165149, Nat.add_sub_cancel, A165149.P3644768932098415320.a, A165149.P633638898979146962.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A165149, Nat.add_sub_cancel, A165149.P3644768932098415320.a, A165149.P633638898979146962.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165149

/-! ## A165149.P633638898979146962

`14*a(n-1)-45*a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165149

/-- `14*a(n-1)-45*a(n-2)` -/
def P633638898979146962.Spec : Prop :=
  ∀ n, P633638898979146962.a n = A165149 n

theorem P633638898979146962.correct : P633638898979146962.Spec := by
  intro n
  simp only [A165149]

end A165149

/-! ## A165149.P18326769249162463131

`2*A066443(n)-A034478(n)`
-/

namespace A165149.P18326769249162463131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066443 n - A034478 n

end

end A165149.P18326769249162463131

namespace A165149

/-- `2*A066443(n)-A034478(n)` -/
def P18326769249162463131.Spec : Prop :=
  ∀ n, P18326769249162463131.a n = A165149 n

end A165149

/-! ## A165149.P3982375730054041674

`A007051(Δ[n²])-A034478(n)`
-/

namespace A165149.P3982375730054041674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A034478 n

end

end A165149.P3982375730054041674

namespace A165149

/-- `A007051(Δ[n²])-A034478(n)` -/
def P3982375730054041674.Spec : Prop :=
  ∀ n, P3982375730054041674.a n = A165149 n

end A165149

/-! ## A165149.P14579307594035630669

`2*A000244(n)²-A081338(n)`
-/

namespace A165149.P14579307594035630669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000244 n ^ 2 - A081338 n

end

end A165149.P14579307594035630669

namespace A165149

/-- `2*A000244(n)²-A081338(n)` -/
def P14579307594035630669.Spec : Prop :=
  ∀ n, P14579307594035630669.a n = A165149 n

end A165149

/-! ## A165149.P219574608776190484

`A029858(2*n+1)-A137410(n)`
-/

namespace A165149.P219574608776190484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029858 (2 * n + 1) - A137410 n

end

end A165149.P219574608776190484

namespace A165149

/-- `A029858(2*n+1)-A137410(n)` -/
def P219574608776190484.Spec : Prop :=
  ∀ n, P219574608776190484.a n = A165149 n

end A165149

/-! ## A165149.P1035098017393206616

`A003462(Δ[n²])-A121177(n+1)`
-/

namespace A165149.P1035098017393206616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A121177 (n + 1)

end

end A165149.P1035098017393206616

namespace A165149

/-- `A003462(Δ[n²])-A121177(n+1)` -/
def P1035098017393206616.Spec : Prop :=
  ∀ n, P1035098017393206616.a n = A165149 n

end A165149

/-! ## A165149.P2982482958925821024

`A007051(2*n+1)-A294566(2*n+1)`
-/

namespace A165149.P2982482958925821024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (2 * n + 1) - A294566 (2 * n + 1)

end

end A165149.P2982482958925821024

namespace A165149

/-- `A007051(2*n+1)-A294566(2*n+1)` -/
def P2982482958925821024.Spec : Prop :=
  ∀ n, P2982482958925821024.a n = A165149 n

end A165149

/-! ## A165149.P15279426802599176359

`A003462(2*n+1)+1-A294566(2*n+1)`
-/

namespace A165149.P15279426802599176359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (2 * n + 1) + (1 - A294566 (2 * n + 1))

end

end A165149.P15279426802599176359

namespace A165149

/-- `A003462(2*n+1)+1-A294566(2*n+1)` -/
def P15279426802599176359.Spec : Prop :=
  ∀ n, P15279426802599176359.a n = A165149 n

end A165149

/-! ## A165149.P1712094043856089853

`1-(A294566(2*n+1)+A076040(2*n+1))`
-/

namespace A165149.P1712094043856089853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A294566 (2 * n + 1) + A076040 (2 * n + 1))

end

end A165149.P1712094043856089853

namespace A165149

/-- `1-(A294566(2*n+1)+A076040(2*n+1))` -/
def P1712094043856089853.Spec : Prop :=
  ∀ n, P1712094043856089853.a n = A165149 n

end A165149

/-! ## A165149.P7441062159904016212

`2*A000244(A005843(n))-A081338(n)`
-/

namespace A165149.P7441062159904016212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000244 (A005843 n).toNat - A081338 n

end

end A165149.P7441062159904016212

namespace A165149

/-- `2*A000244(A005843(n))-A081338(n)` -/
def P7441062159904016212.Spec : Prop :=
  ∀ n, P7441062159904016212.a n = A165149 n

end A165149

/-! ## A165149.P1996093013988981577

`3^A005843(n)+A000244(n)²-A081338(n)`
-/

namespace A165149.P1996093013988981577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A005843 n : ℤ) + (A000244 n ^ 2 - A081338 n : ℚ)

end

end A165149.P1996093013988981577

namespace A165149

/-- `3^A005843(n)+A000244(n)²-A081338(n)` -/
def P1996093013988981577.Spec : Prop :=
  ∀ n, P1996093013988981577.a n = (A165149 n : ℚ)

end A165149

/-!
# A165150: a(n) = (3*10^n - 6^n)/2.

The programs for A165150, the canonical program `A165150.P9097820400053971385` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165150 has offset 0).

The definition of A165150 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*10^n-6^n)/2` (program `A165150.P11880499329876890472`, by `A165150.P11880499329876890472.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165150.P11880499329876890472

`(3*10^n-6^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165150.P11880499329876890472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 10 ^ n : ℤ) - (6 ^ n : ℤ) : ℚ) / 2

end

end A165150.P11880499329876890472

namespace A165150

/-- `(3*10^n-6^n)/2` -/
def P11880499329876890472.Spec : Prop :=
  ∀ n, P11880499329876890472.a n = (A165150 n : ℚ)

theorem P11880499329876890472.correct : P11880499329876890472.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A165150, Nat.add_sub_cancel, A165150.P11880499329876890472.a, A165150.P9097820400053971385.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A165150, Nat.add_sub_cancel, A165150.P11880499329876890472.a, A165150.P9097820400053971385.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165150

/-! ## A165150.P9097820400053971385

`16*a(n-1)-60*a(n-2)` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165150

/-- `16*a(n-1)-60*a(n-2)` -/
def P9097820400053971385.Spec : Prop :=
  ∀ n, P9097820400053971385.a n = A165150 n

theorem P9097820400053971385.correct : P9097820400053971385.Spec := by
  intro n
  simp only [A165150]

end A165150

/-! ## A165150.P7407243347925693431

`6*(a(n-1)+10^(n-1))` with `a(0)=1`
-/

namespace A165150.P7407243347925693431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  6 * (a (n - 1) + (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A165150.P7407243347925693431

namespace A165150

/-- `6*(a(n-1)+10^(n-1))` -/
def P7407243347925693431.Spec : Prop :=
  ∀ n, P7407243347925693431.a n = (A165150 n : ℚ)

end A165150

/-! ## A165150.P18140622009440154273

`A002283(n)+A152105(n)-A024062(n)`
-/

namespace A165150.P18140622009440154273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n + (A152105 n - A024062 n)

end

end A165150.P18140622009440154273

namespace A165150

/-- `A002283(n)+A152105(n)-A024062(n)` -/
def P18140622009440154273.Spec : Prop :=
  ∀ n, P18140622009440154273.a n = A165150 n

end A165150

/-! ## A165150.P13622249623410154819

`(A081186(n)+A005058(n))*A000079(n)`
-/

namespace A165150.P13622249623410154819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081186 n + A005058 n) * A000079 n

end

end A165150.P13622249623410154819

namespace A165150

/-- `(A081186(n)+A005058(n))*A000079(n)` -/
def P13622249623410154819.Spec : Prop :=
  ∀ n, P13622249623410154819.a n = A165150 n

end A165150

/-! ## A165150.P4187118403754858839

`(A005059(n+1)-A005058(n))*A000079(n)`
-/

namespace A165150.P4187118403754858839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005059 (n + 1) - A005058 n) * A000079 n

end

end A165150.P4187118403754858839

namespace A165150

/-- `(A005059(n+1)-A005058(n))*A000079(n)` -/
def P4187118403754858839.Spec : Prop :=
  ∀ n, P4187118403754858839.a n = A165150 n

end A165150

/-!
# A165151: a(n) = (3*11^n - 7^n)/2.

The programs for A165151, the canonical program `A165151.P14555816669048532378` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165151 has offset 0).

The definition of A165151 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*11^n-7^n)/2` (program `A165151.P6436586906124599595`, by `A165151.P6436586906124599595.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165151.P6436586906124599595

`(3*11^n-7^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165151.P6436586906124599595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 11 ^ n : ℤ) - (7 ^ n : ℤ) : ℚ) / 2

end

end A165151.P6436586906124599595

namespace A165151

/-- `(3*11^n-7^n)/2` -/
def P6436586906124599595.Spec : Prop :=
  ∀ n, P6436586906124599595.a n = (A165151 n : ℚ)

theorem P6436586906124599595.correct : P6436586906124599595.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A165151, Nat.add_sub_cancel, A165151.P6436586906124599595.a, A165151.P14555816669048532378.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A165151, Nat.add_sub_cancel, A165151.P6436586906124599595.a, A165151.P14555816669048532378.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165151

/-! ## A165151.P14555816669048532378

`18*a(n-1)-77*a(n-2)` with `a(0)=1, a(1)=13`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165151

/-- `18*a(n-1)-77*a(n-2)` -/
def P14555816669048532378.Spec : Prop :=
  ∀ n, P14555816669048532378.a n = A165151 n

theorem P14555816669048532378.correct : P14555816669048532378.Spec := by
  intro n
  simp only [A165151]

end A165151

/-! ## A165151.P7714735674816472044

`A152106(n)+A139745(n)`
-/

namespace A165151.P7714735674816472044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152106 n + A139745 n

end

end A165151.P7714735674816472044

namespace A165151

/-- `A152106(n)+A139745(n)` -/
def P7714735674816472044.Spec : Prop :=
  ∀ n, P7714735674816472044.a n = A165151 n

end A165151

/-! ## A165151.P11930612280108663712

`A199018(n)-A120741(n)`
-/

namespace A165151.P11930612280108663712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199018 n - A120741 n

end

end A165151.P11930612280108663712

namespace A165151

/-- `A199018(n)-A120741(n)` -/
def P11930612280108663712.Spec : Prop :=
  ∀ n, P11930612280108663712.a n = A165151 n

end A165151

/-! ## A165151.P8313177300377739724

`A199019(n)/2-A120741(n)`
-/

namespace A165151.P8313177300377739724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199019 n : ℚ) / 2 - (A120741 n : ℚ)

end

end A165151.P8313177300377739724

namespace A165151

/-- `A199019(n)/2-A120741(n)` -/
def P8313177300377739724.Spec : Prop :=
  ∀ n, P8313177300377739724.a n = (A165151 n : ℚ)

end A165151

/-!
# A165152: a(n) = (3*12^n - 8^n)/2.

The programs for A165152, the canonical program `A165152.P6989842242836669858` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165152 has offset 0).

The definition of A165152 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*12^n-8^n)/2` (program `A165152.P15021119148386159389`, by `A165152.P15021119148386159389.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165152.P15021119148386159389

`(3*12^n-8^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165152.P15021119148386159389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 12 ^ n : ℤ) - (8 ^ n : ℤ) : ℚ) / 2

end

end A165152.P15021119148386159389

namespace A165152

/-- `(3*12^n-8^n)/2` -/
def P15021119148386159389.Spec : Prop :=
  ∀ n, P15021119148386159389.a n = (A165152 n : ℚ)

theorem P15021119148386159389.correct : P15021119148386159389.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A165152, Nat.add_sub_cancel, A165152.P15021119148386159389.a, A165152.P6989842242836669858.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A165152, Nat.add_sub_cancel, A165152.P15021119148386159389.a, A165152.P6989842242836669858.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165152

/-! ## A165152.P6989842242836669858

`20*a(n-1)-96*a(n-2)` with `a(0)=1, a(1)=14`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165152

/-- `20*a(n-1)-96*a(n-2)` -/
def P6989842242836669858.Spec : Prop :=
  ∀ n, P6989842242836669858.a n = A165152 n

theorem P6989842242836669858.correct : P6989842242836669858.Spec := by
  intro n
  simp only [A165152]

end A165152

/-! ## A165152.P5664902903033999515

`record[A034008(n)²*A027649(n)]`
-/

namespace A165152.P5664902903033999515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n ^ 2 * A027649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165152.P5664902903033999515

namespace A165152

/-- `record[A034008(n)²*A027649(n)]` -/
def P5664902903033999515.Spec : Prop :=
  ∀ n, P5664902903033999515.a n = A165152 n

end A165152

/-! ## A165152.P9354369374332246718

`(A016129(n)-A006516(n))*A000079(n)`
-/

namespace A165152.P9354369374332246718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016129 n - A006516 n) * A000079 n

end

end A165152.P9354369374332246718

namespace A165152

/-- `(A016129(n)-A006516(n))*A000079(n)` -/
def P9354369374332246718.Spec : Prop :=
  ∀ n, P9354369374332246718.a n = A165152 n

end A165152

/-! ## A165152.P2388019909208943549

`A000302(n)²/A000302(n+1)*A027649(n+1)`
-/

namespace A165152.P2388019909208943549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000302 n ^ 2 : ℚ) / (A000302 (n + 1) : ℚ) * (A027649 (n + 1) : ℚ)

end

end A165152.P2388019909208943549

namespace A165152

/-- `A000302(n)²/A000302(n+1)*A027649(n+1)` -/
def P2388019909208943549.Spec : Prop :=
  ∀ n, P2388019909208943549.a n = (A165152 n : ℚ)

end A165152

/-! ## A165152.P7780431769952459139

`A000302(2*n)/A000302(n+1)*A027649(n+1)`
-/

namespace A165152.P7780431769952459139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000302 (2 * n) : ℚ) / (A000302 (n + 1) : ℚ) * (A027649 (n + 1) : ℚ)

end

end A165152.P7780431769952459139

namespace A165152

/-- `A000302(2*n)/A000302(n+1)*A027649(n+1)` -/
def P7780431769952459139.Spec : Prop :=
  ∀ n, P7780431769952459139.a n = (A165152 n : ℚ)

end A165152

/-! ## A165152.P6718680531854778263

`A004171(2*n)/A004171(n+1)*A027649(n+1)`
-/

namespace A165152.P6718680531854778263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004171 (2 * n) : ℚ) / (A004171 (n + 1) : ℚ) * (A027649 (n + 1) : ℚ)

end

end A165152.P6718680531854778263

namespace A165152

/-- `A004171(2*n)/A004171(n+1)*A027649(n+1)` -/
def P6718680531854778263.Spec : Prop :=
  ∀ n, P6718680531854778263.a n = (A165152 n : ℚ)

end A165152

/-!
# A165153: a(n) = the product of all distinct positive (nonzero) integers that, when written in binary, occur as substrings in the binary representation of n.

The programs for A165153, there is no canonical definition to state claims against.
-/

/-! ## A165153.P13464734995517185702

`A098844(n+1)*A355242(A098844(n+1))`
-/

namespace A165153.P13464734995517185702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098844 (n + 1) * A355242 (A098844 (n + 1)).toNat

end

end A165153.P13464734995517185702

/-! ## A165153.P868839097788524912

`A079068(A047688(n))*A098844(n+1)`
-/

namespace A165153.P868839097788524912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (A047688 n).toNat * A098844 (n + 1)

end

end A165153.P868839097788524912

/-! ## A165153.P7080226772887926560

`A067004(A179215(n))*A098844(n+1)`
-/

namespace A165153.P7080226772887926560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067004 (A179215 n).toNat * A098844 (n + 1)

end

end A165153.P7080226772887926560

/-! ## A165153.P12146898952887525264

`A098844(n+1)*A220122(A034943(n))`
-/

namespace A165153.P12146898952887525264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098844 (n + 1) * A220122 (A034943 n).toNat

end

end A165153.P12146898952887525264

/-! ## A165153.P18329256642181841838

`A098844(n+1)*A288120(A000244(n))`
-/

namespace A165153.P18329256642181841838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098844 (n + 1) * A288120 (A000244 n).toNat

end

end A165153.P18329256642181841838

/-!
# A165154: a(n) = 100*a(n-1) + (-9)^(n-1) for n>0, a(0)=0.

The programs for A165154, the canonical program `A165154.P14229417998286889899` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165154 has offset 0).

The definition of A165154 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165154.P14229417998286889899

`100*a(n-1)+(-9)^(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165154

/-- `100*a(n-1)+(-9)^(n-1)` -/
def P14229417998286889899.Spec : Prop :=
  ∀ n, P14229417998286889899.a n = (A165154 n : ℚ)

end A165154

/-! ## A165154.P6333454230370029118

`(100^n-(-9)^n)/109`
-/

namespace A165154.P6333454230370029118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((100 ^ n : ℤ) - (-9) ^ n : ℚ) / 109

end

end A165154.P6333454230370029118

namespace A165154

/-- `(100^n-(-9)^n)/109` -/
def P6333454230370029118.Spec : Prop :=
  ∀ n, P6333454230370029118.a n = (A165154 n : ℚ)

end A165154

/-! ## A165154.P14228066476966197152

`A172162(n)-A172163(n)`
-/

namespace A165154.P14228066476966197152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172162 n - A172163 n

end

end A165154.P14228066476966197152

namespace A165154

/-- `A172162(n)-A172163(n)` -/
def P14228066476966197152.Spec : Prop :=
  ∀ n, P14228066476966197152.a n = A165154 n

end A165154

/-! ## A165154.P16408266825409048424

`2*A172162(n)-A165155(n)`
-/

namespace A165154.P16408266825409048424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172162 n - A165155 n

end

end A165154.P16408266825409048424

namespace A165154

/-- `2*A172162(n)-A165155(n)` -/
def P16408266825409048424.Spec : Prop :=
  ∀ n, P16408266825409048424.a n = A165154 n

end A165154

/-! ## A165154.P4994061207201295286

`A165155(n)-2*A172163(n)`
-/

namespace A165154.P4994061207201295286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165155 n - 2 * A172163 n

end

end A165154.P4994061207201295286

namespace A165154

/-- `A165155(n)-2*A172163(n)` -/
def P4994061207201295286.Spec : Prop :=
  ∀ n, P4994061207201295286.a n = A165154 n

end A165154

/-! ## A165154.P16848595213930012778

`A172162(n)-A165155(n)%A172162(A151933(n)+n)`
-/

namespace A165154.P16848595213930012778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172162 n - Int.tmod (A165155 n) (A172162 (A151933 n + (n : ℤ)).toNat)

end

end A165154.P16848595213930012778

namespace A165154

/-- `A172162(n)-A165155(n)%A172162(A151933(n)+n)` -/
def P16848595213930012778.Spec : Prop :=
  ∀ n, P16848595213930012778.a n = A165154 n

end A165154

/-! ## A165154.P3051678233498619558

`A165155(n)+2*A172163(n)*A316441(A020639(n+1))`
-/

namespace A165154.P3051678233498619558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165155 n + 2 * A172163 n * A316441 (A020639 (n + 1)).toNat

end

end A165154.P3051678233498619558

namespace A165154

/-- `A165155(n)+2*A172163(n)*A316441(A020639(n+1))` -/
def P3051678233498619558.Spec : Prop :=
  ∀ n, P3051678233498619558.a n = A165154 n

end A165154

/-!
# A165155: a(n) = 100*a(n-1) + 11^(n-1) for n>0, a(0)=0.

The programs for A165155, the canonical program `A165155.P9566686605600857482` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165155 has offset 0).

The definition of A165155 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165155.P9566686605600857482

`(10^(2*n)-11^n)/89`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165155

/-- `(10^(2*n)-11^n)/89` -/
def P9566686605600857482.Spec : Prop :=
  ∀ n, P9566686605600857482.a n = (A165155 n : ℚ)

end A165155

/-! ## A165155.P5972677906367290420

`100*a(n-1)+11^(n-1)` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165155.P5972677906367290420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  100 * a (n - 1) + (11 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A165155.P5972677906367290420

namespace A165155

/-- `100*a(n-1)+11^(n-1)` -/
def P5972677906367290420.Spec : Prop :=
  ∀ n, P5972677906367290420.a n = (A165155 n : ℚ)

end A165155

/-! ## A165155.P11718925120111514265

`A172163(n)+A172162(n)`
-/

namespace A165155.P11718925120111514265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172163 n + A172162 n

end

end A165155.P11718925120111514265

namespace A165155

/-- `A172163(n)+A172162(n)` -/
def P11718925120111514265.Spec : Prop :=
  ∀ n, P11718925120111514265.a n = A165155 n

end A165155

/-! ## A165155.P4705927889653336497

`A165154(n)+2*A172163(n)`
-/

namespace A165155.P4705927889653336497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165154 n + 2 * A172163 n

end

end A165155.P4705927889653336497

namespace A165155

/-- `A165154(n)+2*A172163(n)` -/
def P4705927889653336497.Spec : Prop :=
  ∀ n, P4705927889653336497.a n = A165155 n

end A165155

/-! ## A165155.P14025931487040145739

`2*A172162(n)-A165154(n)`
-/

namespace A165155.P14025931487040145739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172162 n - A165154 n

end

end A165155.P14025931487040145739

namespace A165155

/-- `2*A172162(n)-A165154(n)` -/
def P14025931487040145739.Spec : Prop :=
  ∀ n, P14025931487040145739.a n = A165155 n

end A165155

/-!
# A165156: a(n) = n^(2*n-1)-(2*n-1)^n.

The programs for A165156, the canonical program `A165156.P14391297112090654770` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165156 has offset 1).

The definition of A165156 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165156.P14391297112090654770

`(n+1)^(2*(n+1)-1)-(2*(n+1)-1)^(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165156

/-- `(n+1)^(2*(n+1)-1)-(2*(n+1)-1)^(n+1)` -/
def P14391297112090654770.Spec : Prop :=
  ∀ n, P14391297112090654770.a n = (A165156 (n + 1) : ℚ)

end A165156

/-! ## A165156.P16799354918335097464

`A220417(A081267(n))`
-/

namespace A165156.P16799354918335097464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220417 (A081267 n).toNat

end

end A165156.P16799354918335097464

namespace A165156

/-- `A220417(A081267(n))` -/
def P16799354918335097464.Spec : Prop :=
  ∀ n, P16799354918335097464.a n = A165156 (n + 1)

end A165156

/-! ## A165156.P12435347155119687301

`A220417(A062728(n)+1)`
-/

namespace A165156.P12435347155119687301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220417 (A062728 n + 1).toNat

end

end A165156.P12435347155119687301

namespace A165156

/-- `A220417(A062728(n)+1)` -/
def P12435347155119687301.Spec : Prop :=
  ∀ n, P12435347155119687301.a n = A165156 (n + 1)

end A165156

/-! ## A165156.P6747262009519952806

`A220417(A062725(n)+1+n)`
-/

namespace A165156.P6747262009519952806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220417 (A062725 n + 1 + (n : ℤ)).toNat

end

end A165156.P6747262009519952806

namespace A165156

/-- `A220417(A062725(n)+1+n)` -/
def P6747262009519952806.Spec : Prop :=
  ∀ n, P6747262009519952806.a n = A165156 (n + 1)

end A165156

/-! ## A165156.P8053888433148758684

`A220417(A000217(3*n+1)-n)`
-/

namespace A165156.P8053888433148758684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220417 (A000217 (3 * n + 1) - (n : ℤ)).toNat

end

end A165156.P8053888433148758684

namespace A165156

/-- `A220417(A000217(3*n+1)-n)` -/
def P8053888433148758684.Spec : Prop :=
  ∀ n, P8053888433148758684.a n = A165156 (n + 1)

end A165156

/-!
# A165157: Zero followed by partial sums of A133622.

The programs for A165157, the canonical program `A165157.P4182987027322002924` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165157 has offset 0).

The definition of A165157 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165157.P8304727221656240978

`n+C(1+floor(n/2), 2)`
-/

namespace A165157.P8304727221656240978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + Nat.choose (1 + ⌊(n : ℚ) / 2⌋).toNat 2

end

end A165157.P8304727221656240978

namespace A165157

/-- `n+C(1+floor(n/2), 2)` -/
def P8304727221656240978.Spec : Prop :=
  ∀ n, (P8304727221656240978.a n : ℤ) = A165157 n

end A165157

/-! ## A165157.P4182987027322002924

`2*a(n-2)-a(n-4)+1` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165157

/-- `2*a(n-2)-a(n-4)+1` -/
def P4182987027322002924.Spec : Prop :=
  ∀ n, P4182987027322002924.a n = A165157 n

theorem P4182987027322002924.correct : P4182987027322002924.Spec := by
  intro n
  simp only [A165157]

end A165157

/-! ## A165157.P1804034663935068069

`(2*n*(n+9)-1+(2*n+1)*(-1)^n)/16`
-/

namespace A165157.P1804034663935068069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n * (n + 9) : ℤ) - 1 + (2 * n + 1 : ℤ) * (-1) ^ n : ℚ) / 16

end

end A165157.P1804034663935068069

namespace A165157

/-- `(2*n*(n+9)-1+(2*n+1)*(-1)^n)/16` -/
def P1804034663935068069.Spec : Prop :=
  ∀ n, P1804034663935068069.a n = (A165157 n : ℚ)

theorem P1804034663935068069.correct : P1804034663935068069.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A165157, Nat.add_sub_cancel, A165157.P1804034663935068069.a, A165157.P4182987027322002924.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A165157, Nat.add_sub_cancel, A165157.P1804034663935068069.a, A165157.P4182987027322002924.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165157

/-! ## A165157.P14635537198046636257

`C(∑[log2(gcd(2, n))], 2)+n`
-/

namespace A165157.P14635537198046636257
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 2 + n

end

end A165157.P14635537198046636257

namespace A165157

/-- `C(∑[log2(gcd(2, n))], 2)+n` -/
def P14635537198046636257.Spec : Prop :=
  ∀ n, (P14635537198046636257.a n : ℤ) = A165157 n

end A165157

/-! ## A165157.P5839925908823137947

`C(∑[char[2*n]], 2)+n`
-/

namespace A165157.P5839925908823137947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + n

end

end A165157.P5839925908823137947

namespace A165157

/-- `C(∑[char[2*n]], 2)+n` -/
def P5839925908823137947.Spec : Prop :=
  ∀ n, (P5839925908823137947.a n : ℤ) = A165157 n

end A165157

/-! ## A165157.P17752995930002584213

`∑[n-lcm(2, n)/2]+n`
-/

namespace A165157.P17752995930002584213
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (Nat.lcm 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ)

end

end A165157.P17752995930002584213

namespace A165157

/-- `∑[n-lcm(2, n)/2]+n` -/
def P17752995930002584213.Spec : Prop :=
  ∀ n, P17752995930002584213.a n = (A165157 n : ℚ)

end A165157

/-! ## A165157.P13015501533431562346

`∑[n%or(1, n)]/2+n`
-/

namespace A165157.P13015501533431562346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2 + (n : ℚ)

end

end A165157.P13015501533431562346

namespace A165157

/-- `∑[n%or(1, n)]/2+n` -/
def P13015501533431562346.Spec : Prop :=
  ∀ n, P13015501533431562346.a n = (A165157 n : ℚ)

end A165157

/-! ## A165157.P1419567052962669587

`∑[ceil(n²/2)%(n+1)]`
-/

namespace A165157.P1419567052962669587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n ^ 2 : ℚ) / 2⌉ (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165157.P1419567052962669587

namespace A165157

/-- `∑[ceil(n²/2)%(n+1)]` -/
def P1419567052962669587.Spec : Prop :=
  ∀ n, P1419567052962669587.a n = A165157 n

end A165157

/-! ## A165157.P17443052913128439331

`floor(a(n-2)+n/2+2)` with `a(0)=0, a(1)=1`
-/

namespace A165157.P17443052913128439331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(a (n - 2) : ℚ) + ((n : ℚ) / 2 + 2)⌋

end

end A165157.P17443052913128439331

namespace A165157

/-- `floor(a(n-2)+n/2+2)` -/
def P17443052913128439331.Spec : Prop :=
  ∀ n, P17443052913128439331.a n = A165157 n

end A165157

/-! ## A165157.P14527783602922523635

`ceil(a(n-2)+(n+3)/2)` with `a(0)=0, a(1)=1`
-/

namespace A165157.P14527783602922523635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌈(a (n - 2) : ℚ) + (n + 3 : ℚ) / 2⌉

end

end A165157.P14527783602922523635

namespace A165157

/-- `ceil(a(n-2)+(n+3)/2)` -/
def P14527783602922523635.Spec : Prop :=
  ∀ n, P14527783602922523635.a n = A165157 n

end A165157

/-! ## A165157.P9746284606807833862

`round(a(n-2)+(n+3)/2)` with `a(0)=0, a(1)=1`
-/

namespace A165157.P9746284606807833862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℚ) + (n + 3 : ℚ) / 2)

end

end A165157.P9746284606807833862

namespace A165157

/-- `round(a(n-2)+(n+3)/2)` -/
def P9746284606807833862.Spec : Prop :=
  ∀ n, P9746284606807833862.a n = A165157 n

end A165157

/-! ## A165157.P3528875173151914851

`∑[∑[(-1)^n]+a(n-2)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A165157.P3528875173151914851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165157.P3528875173151914851

namespace A165157

/-- `∑[∑[(-1)^n]+a(n-2)]` -/
def P3528875173151914851.Spec : Prop :=
  ∀ n, P3528875173151914851.a n = A165157 n

end A165157

/-! ## A165157.P15515340151292612425

`∑[∑[∑[(-1)^n]]/a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A165157.P15515340151292612425
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165157.P15515340151292612425

namespace A165157

/-- `∑[∑[∑[(-1)^n]]/a(n-1)]` -/
def P15515340151292612425.Spec : Prop :=
  ∀ n, P15515340151292612425.a n = (A165157 n : ℚ)

end A165157

/-! ## A165157.P5191067312048085750

`∑[a(n-2)+and(1, n+1)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A165157.P5191067312048085750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 2) + Nat.land 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165157.P5191067312048085750

namespace A165157

/-- `∑[a(n-2)+and(1, n+1)]` -/
def P5191067312048085750.Spec : Prop :=
  ∀ n, (P5191067312048085750.a n : ℤ) = A165157 n

end A165157

/-! ## A165157.P18125064575668247889

`∑[∑[1-a(n-1)]/a(n-1)]-1` with `a(0)=1`
-/

namespace A165157.P18125064575668247889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A165157.P18125064575668247889

namespace A165157

/-- `∑[∑[1-a(n-1)]/a(n-1)]-1` -/
def P18125064575668247889.Spec : Prop :=
  ∀ n, P18125064575668247889.a n = (A165157 n : ℚ)

end A165157

/-! ## A165157.P5284489036599490116

`a(n-2)+n+2-∑[a(n-2)²]` with `a(0)=0, a(1)=1`
-/

namespace A165157.P5284489036599490116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + ((n + 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A165157.P5284489036599490116

namespace A165157

/-- `a(n-2)+n+2-∑[a(n-2)²]` -/
def P5284489036599490116.Spec : Prop :=
  ∀ n, P5284489036599490116.a n = A165157 n

end A165157

/-! ## A165157.P18009632421949551314

`A101881(n)-1`
-/

namespace A165157.P18009632421949551314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 n - 1

end

end A165157.P18009632421949551314

namespace A165157

/-- `A101881(n)-1` -/
def P18009632421949551314.Spec : Prop :=
  ∀ n, P18009632421949551314.a n = A165157 n

end A165157

/-! ## A165157.P7305293308594508867

`∑[A158416(n)]-1`
-/

namespace A165157.P7305293308594508867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A165157.P7305293308594508867

namespace A165157

/-- `∑[A158416(n)]-1` -/
def P7305293308594508867.Spec : Prop :=
  ∀ n, P7305293308594508867.a n = A165157 n

end A165157

/-! ## A165157.P11011541779237319145

`∑[A142150(n)]+n`
-/

namespace A165157.P11011541779237319145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A165157.P11011541779237319145

namespace A165157

/-- `∑[A142150(n)]+n` -/
def P11011541779237319145.Spec : Prop :=
  ∀ n, P11011541779237319145.a n = A165157 n

end A165157

/-! ## A165157.P1250071382875643682

`A110660(n)/2+n`
-/

namespace A165157.P1250071382875643682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110660 n : ℚ) / 2 + (n : ℚ)

end

end A165157.P1250071382875643682

namespace A165157

/-- `A110660(n)/2+n` -/
def P1250071382875643682.Spec : Prop :=
  ∀ n, P1250071382875643682.a n = (A165157 n : ℚ)

end A165157

/-!
# A165158: Hypotenuses of primitive Pythagorean triangles such that all 3 sides are composite.

The programs for A165158, there is no canonical definition to state claims against.
-/

/-! ## A165158.P3763989424733667973

`A120961(n+2)+A000007(A102480(n))`
-/

namespace A165158.P3763989424733667973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120961 (n + 2) + A000007 (A102480 n).toNat

end

end A165158.P3763989424733667973

/-! ## A165158.P2680504533814594189

`A285579(n+2)+A000038(A102480(n))`
-/

namespace A165158.P2680504533814594189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285579 (n + 2) + A000038 (A102480 n).toNat

end

end A165158.P2680504533814594189

/-! ## A165158.P6801229408340808507

`A120961(n+2)+A024362(A057229(n+1))`
-/

namespace A165158.P6801229408340808507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120961 (n + 2) + A024362 (A057229 (n + 1)).toNat

end

end A165158.P6801229408340808507

/-! ## A165158.P4600013868950905865

`or(A120961(n+2), A217564(A154982(n)))`
-/

namespace A165158.P4600013868950905865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A120961 (n + 2)) (A217564 (A154982 n).toNat)

end

end A165158.P4600013868950905865

/-! ## A165158.P13376914348587382367

`or(A120961(n+2), A217564(A154983(n)))`
-/

namespace A165158.P13376914348587382367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A120961 (n + 2)) (A217564 (A154983 n).toNat)

end

end A165158.P13376914348587382367

/-!
# A165160: Short legs in primitive Pythagorean triangles with three side lengths of composite integers.

The programs for A165160, there is no canonical definition to state claims against.
-/

/-! ## A165160.P10641742742325735459

`∪[A103246(n+1), A103248(n+1)]%A103248(n+5)`
-/

namespace A165160.P10641742742325735459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103248 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A103248 (n + 5))

end

end A165160.P10641742742325735459

/-!
# A165161: Numerator of the n-th term in the first differences of the binomial transform of the "original" Bernoulli numbers.

The programs for A165161, there is no canonical definition to state claims against.
-/

/-! ## A165161.P5734090554299089597

`A168464(∑[n+1]+1)`
-/

namespace A165161.P5734090554299089597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168464 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A165161.P5734090554299089597

/-! ## A165161.P14665424355674060537

`A051717(n+1)+A051716(n+1)`
-/

namespace A165161.P14665424355674060537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (n + 1) + A051716 (n + 1)

end

end A165161.P14665424355674060537

/-! ## A165161.P277303196262094185

`A051716(n+1)+A051715(∑[n+2]-1)`
-/

namespace A165161.P277303196262094185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051716 (n + 1) + A051715 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A165161.P277303196262094185

/-! ## A165161.P8412905050777692242

`A051717(n+1)-A051714(∑[n+2]-1)`
-/

namespace A165161.P8412905050777692242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (n + 1) - A051714 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A165161.P8412905050777692242

/-! ## A165161.P5550258541160782657

`A051716(n+1)*A129378(n+1)/A129826(n+1)`
-/

namespace A165161.P5550258541160782657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051716 (n + 1) * A129378 (n + 1) : ℚ) / (A129826 (n + 1) : ℚ)

end

end A165161.P5550258541160782657

/-!
# A165162: Triangle T(n,m) with 2*n-1 entries per row, read by rows: the first n entries count down from n to 1, the remaining n-1 entries down from n-1 to 1.

The programs for A165162, the canonical program `A165162.P16797027812994173801` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165162 has offset 1).

The definition of A165162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165162.P1020260292495169479

`ceil(((floor(2*sqrt(n))+1)/2)²-n)`
-/

namespace A165162.P1020260292495169479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((⌊2 * Real.sqrt (n : ℝ)⌋ + 1 : ℚ) / 2) ^ 2 - (n : ℚ)⌉

end

end A165162.P1020260292495169479

namespace A165162

/-- `ceil(((floor(2*sqrt(n))+1)/2)²-n)` -/
def P1020260292495169479.Spec : Prop :=
  ∀ n, P1020260292495169479.a n = A165162 (n + 1)

end A165162

/-! ## A165162.P16906296954758540132

`Δ[a(n+1-floor(2*sqrt(n)))+n]` with `a(0)=2`
-/

namespace A165162.P16906296954758540132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 ((n + 1 : ℤ) - ⌊2 * Real.sqrt (n : ℝ)⌋).toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A165162.P16906296954758540132

namespace A165162

/-- `Δ[a(n+1-floor(2*sqrt(n)))+n]` -/
def P16906296954758540132.Spec : Prop :=
  ∀ n, P16906296954758540132.a n = A165162 (n + 1)

end A165162

/-! ## A165162.P4288855515298324069

`(n²%comp[∑[2*n]])%(n+1)+1`
-/

namespace A165162.P4288855515298324069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 1) + 1

end

end A165162.P4288855515298324069

namespace A165162

/-- `(n²%comp[∑[2*n]])%(n+1)+1` -/
def P4288855515298324069.Spec : Prop :=
  ∀ n, (P4288855515298324069.a n : ℤ) = A165162 (n + 1)

end A165162

/-! ## A165162.P16421457637955908574

`round(sqrt(n))+1-(n-1)%(round(sqrt(n))+1)`
-/

namespace A165162.P16421457637955908574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) + 1 - Int.tmod ((n : ℤ) - 1) (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) + 1)

end

end A165162.P16421457637955908574

namespace A165162

/-- `round(sqrt(n))+1-(n-1)%(round(sqrt(n))+1)` -/
def P16421457637955908574.Spec : Prop :=
  ∀ n, P16421457637955908574.a n = A165162 (n + 1)

end A165162

/-! ## A165162.P6501478225952391172

`A177994(round(sqrt(n))+2*n)`
-/

namespace A165162.P6501478225952391172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177994 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) + (2 * n : ℤ)).toNat

end

end A165162.P6501478225952391172

namespace A165162

/-- `A177994(round(sqrt(n))+2*n)` -/
def P6501478225952391172.Spec : Prop :=
  ∀ n, P6501478225952391172.a n = A165162 (n + 1)

end A165162

/-! ## A165162.P14712165868392152623

`A004736(1-C(round(sqrt(n)), 2)+n)`
-/

namespace A165162.P14712165868392152623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (1 - (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat 2 : ℤ) + (n : ℤ)).toNat

end

end A165162.P14712165868392152623

namespace A165162

/-- `A004736(1-C(round(sqrt(n)), 2)+n)` -/
def P14712165868392152623.Spec : Prop :=
  ∀ n, P14712165868392152623.a n = A165162 (n + 1)

end A165162

/-! ## A165162.P5670019406034349791

`A025581(n-C(round(sqrt(n)), 2))+1`
-/

namespace A165162.P5670019406034349791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (n - Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat 2) + 1

end

end A165162.P5670019406034349791

namespace A165162

/-- `A025581(n-C(round(sqrt(n)), 2))+1` -/
def P5670019406034349791.Spec : Prop :=
  ∀ n, P5670019406034349791.a n = A165162 (n + 1)

end A165162

/-! ## A165162.P18346041844910472847

`A004736(abs(C(comp[(n+1)²]-n, 2)-n)+1)`
-/

namespace A165162.P18346041844910472847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (|(Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)| + 1).toNat

end

end A165162.P18346041844910472847

namespace A165162

/-- `A004736(abs(C(comp[(n+1)²]-n, 2)-n)+1)` -/
def P18346041844910472847.Spec : Prop :=
  ∀ n, P18346041844910472847.a n = A165162 (n + 1)

end A165162

/-! ## A165162.P10946894588637959867

`A152271(floor(2*sqrt(n)))-(2*n-comp[round(sqrt(n+1))²+n])`
-/

namespace A165162.P10946894588637959867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 ⌊2 * Real.sqrt (n : ℝ)⌋.toNat - ((2 * n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ))

end

end A165162.P10946894588637959867

namespace A165162

/-- `A152271(floor(2*sqrt(n)))-(2*n-comp[round(sqrt(n+1))²+n])` -/
def P10946894588637959867.Spec : Prop :=
  ∀ n, P10946894588637959867.a n = A165162 (n + 1)

end A165162

/-! ## A165162.P16797027812994173801

`A122197(A020703(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A165162

/-- `A122197(A020703(n+1))` -/
def P16797027812994173801.Spec : Prop :=
  ∀ n, P16797027812994173801.a n = A165162 (n + 1)

theorem P16797027812994173801.correct : P16797027812994173801.Spec := by
  intro n
  simp only [A165162, Nat.add_sub_cancel]

end A165162

/-! ## A165162.P11761397442428465357

`A055087(A020703(n+2))+1`
-/

namespace A165162.P11761397442428465357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 (A020703 (n + 2)).toNat + 1

end

end A165162.P11761397442428465357

namespace A165162

/-- `A055087(A020703(n+2))+1` -/
def P11761397442428465357.Spec : Prop :=
  ∀ n, P11761397442428465357.a n = A165162 (n + 1)

end A165162

/-! ## A165162.P17607087892849949236

`A004652(A293137(n)+2)-n`
-/

namespace A165162.P17607087892849949236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (A293137 n + 2).toNat - (n : ℤ)

end

end A165162.P17607087892849949236

namespace A165162

/-- `A004652(A293137(n)+2)-n` -/
def P17607087892849949236.Spec : Prop :=
  ∀ n, P17607087892849949236.a n = A165162 (n + 1)

end A165162

/-! ## A165162.P354786373198747678

`A110655(A101776(2*n)²)-n`
-/

namespace A165162.P354786373198747678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A101776 (2 * n) ^ 2).toNat - (n : ℤ)

end

end A165162.P354786373198747678

namespace A165162

/-- `A110655(A101776(2*n)²)-n` -/
def P354786373198747678.Spec : Prop :=
  ∀ n, P354786373198747678.a n = A165162 (n + 1)

end A165162

/-! ## A165162.P6553796368906501329

`A004736(n+1-C(A000194(n), 2))`
-/

namespace A165162.P6553796368906501329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1 - Nat.choose (A000194 n).toNat 2)

end

end A165162.P6553796368906501329

namespace A165162

/-- `A004736(n+1-C(A000194(n), 2))` -/
def P6553796368906501329.Spec : Prop :=
  ∀ n, P6553796368906501329.a n = A165162 (n + 1)

end A165162

/-! ## A165162.P12327005875362269120

`A004652(A183866(n+1)-n)-n`
-/

namespace A165162.P12327005875362269120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (A183866 (n + 1) - (n : ℤ)).toNat - (n : ℤ)

end

end A165162.P12327005875362269120

namespace A165162

/-- `A004652(A183866(n+1)-n)-n` -/
def P12327005875362269120.Spec : Prop :=
  ∀ n, P12327005875362269120.a n = A165162 (n + 1)

end A165162

/-! ## A165162.P887715816320696315

`A008624(A068527(A016813(n)))`
-/

namespace A165162.P887715816320696315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A068527 (A016813 n).toNat).toNat

end

end A165162.P887715816320696315

namespace A165162

/-- `A008624(A068527(A016813(n)))` -/
def P887715816320696315.Spec : Prop :=
  ∀ n, P887715816320696315.a n = A165162 (n + 1)

end A165162

/-! ## A165162.P12850473188830845485

`A110657(A080883(A008586(n)))`
-/

namespace A165162.P12850473188830845485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A080883 (A008586 n).toNat).toNat

end

end A165162.P12850473188830845485

namespace A165162

/-- `A110657(A080883(A008586(n)))` -/
def P12850473188830845485.Spec : Prop :=
  ∀ n, P12850473188830845485.a n = A165162 (n + 1)

end A165162

/-! ## A165162.P15185952188835603756

`A008621(A068527(Δ[A000384(n)]))`
-/

namespace A165162.P15185952188835603756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A068527 (f1 (n + 1) - f1 n).toNat).toNat

end

end A165162.P15185952188835603756

namespace A165162

/-- `A008621(A068527(Δ[A000384(n)]))` -/
def P15185952188835603756.Spec : Prop :=
  ∀ n, P15185952188835603756.a n = A165162 (n + 1)

end A165162

/-! ## A165162.P11623038621790696120

`A122197(A001844(A000196(n))-n)`
-/

namespace A165162.P11623038621790696120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (A001844 (A000196 n).toNat - (n : ℤ)).toNat

end

end A165162.P11623038621790696120

namespace A165162

/-- `A122197(A001844(A000196(n))-n)` -/
def P11623038621790696120.Spec : Prop :=
  ∀ n, P11623038621790696120.a n = A165162 (n + 1)

end A165162

/-! ## A165162.P13604360257132549625

`A349520(A020703(n+1)-A196199(n))`
-/

namespace A165162.P13604360257132549625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (A020703 (n + 1) - A196199 n).toNat

end

end A165162.P13604360257132549625

namespace A165162

/-- `A349520(A020703(n+1)-A196199(n))` -/
def P13604360257132549625.Spec : Prop :=
  ∀ n, P13604360257132549625.a n = A165162 (n + 1)

end A165162

/-!
# A165163: Sequence is obtained from Catalan numbers (A000108) by taking the factorial of each digit and adding them up.

The programs for A165163, the canonical program `A165163.P1554951501839677559` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165163 has offset 0).

The definition of A165163 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061602, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165163.P1554951501839677559

`A061602(A000108(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A165163

/-- `A061602(A000108(n))` -/
def P1554951501839677559.Spec : Prop :=
  ∀ n, P1554951501839677559.a n = A165163 n

theorem P1554951501839677559.correct : P1554951501839677559.Spec := by
  intro n
  simp only [A165163]

end A165163

/-! ## A165163.P1082807103287216337

`∑{digits}[A168491(n), #!]`
-/

namespace A165163.P1082807103287216337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.factorial x).sum

end

end A165163.P1082807103287216337

namespace A165163

/-- `∑{digits}[A168491(n), #!]` -/
def P1082807103287216337.Spec : Prop :=
  ∀ n, (P1082807103287216337.a n : ℤ) = A165163 n

end A165163

/-! ## A165163.P805903339870322248

`∑{digits}[A000108(n), A000142(#)]`
-/

namespace A165163.P805903339870322248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000142 x).sum

end

end A165163.P805903339870322248

namespace A165163

/-- `∑{digits}[A000108(n), A000142(#)]` -/
def P805903339870322248.Spec : Prop :=
  ∀ n, P805903339870322248.a n = A165163 n

end A165163

/-! ## A165163.P795145083462341128

`∑{digits}[C(2*n, n)/(n+1), #!]`
-/

namespace A165163.P795145083462341128
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => Nat.factorial x).sum

end

end A165163.P795145083462341128

namespace A165163

/-- `∑{digits}[C(2*n, n)/(n+1), #!]` -/
def P795145083462341128.Spec : Prop :=
  ∀ n, (P795145083462341128.a n : ℤ) = A165163 n

end A165163

/-! ## A165163.P18307206341231402679

`∑{digits}[A007318(∑[4*n])/(n+1), #!]`
-/

namespace A165163.P18307206341231402679
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => Nat.factorial x).sum

end

end A165163.P18307206341231402679

namespace A165163

/-- `∑{digits}[A007318(∑[4*n])/(n+1), #!]` -/
def P18307206341231402679.Spec : Prop :=
  ∀ n, (P18307206341231402679.a n : ℤ) = A165163 n

end A165163

/-!
# A165165: Numbers without repeated digits that yield only integers when the sum of the leftmost k digits is divided by k for all k = 1, 2, ...

The programs for A165165, there is no canonical definition to state claims against.
-/

/-! ## A165165.P11252709038669745772

`eq[A057979(A110725(n)), A109014(n)]`
-/

namespace A165165.P11252709038669745772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A110725 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165165.P11252709038669745772

/-! ## A165165.P1199429998139960560

`lt[A017887(n), A012494(A347689(n))]`
-/

namespace A165165.P1199429998139960560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012494 (A347689 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A165165.P1199429998139960560

/-! ## A165165.P14909950438221169210

`eq[A059149(A151949(n)²), A109014(n)]`
-/

namespace A165165.P14909950438221169210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059149 (A151949 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A165165.P14909950438221169210

/-! ## A165165.P1231852952411598446

`lt[A059708(3*n+4), A109052(A059717(n))]`
-/

namespace A165165.P1231852952411598446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109052 (A059717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A165165.P1231852952411598446

/-!
# A165183: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^9 = I.

The programs for A165183, there is no canonical definition to state claims against.
-/

/-! ## A165183.P12487555029608010432

`A165745(A065673(n+1))-A042950(n)`
-/

namespace A165183.P12487555029608010432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165745 (A065673 (n + 1)).toNat - A042950 n

end

end A165183.P12487555029608010432

/-! ## A165183.P11001804110362650136

`A165745(n+1)-A004151(A042950(n))`
-/

namespace A165183.P11001804110362650136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165745 (n + 1) - A004151 (A042950 n).toNat

end

end A165183.P11001804110362650136

/-! ## A165183.P14452905363546318181

`A165745(n+1)-A105637(A055010(n+1))`
-/

namespace A165183.P14452905363546318181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165745 (n + 1) - A105637 (A055010 (n + 1)).toNat

end

end A165183.P14452905363546318181

/-! ## A165183.P3733583823562146681

`A003945(n)-A383511(A212804(n))`
-/

namespace A165183.P3733583823562146681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A383511 (A212804 n).toNat

end

end A165183.P3733583823562146681

/-! ## A165183.P6493239473627147645

`A269172(A165745(n+1)-A042950(n))`
-/

namespace A165183.P6493239473627147645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269172 (A165745 (n + 1) - A042950 n).toNat

end

end A165183.P6493239473627147645

/-!
# A165184: Number of reduced words of length n in Coxeter group on 4 generators S_i with relations (S_i)^2 = (S_i S_j)^9 = I.

The programs for A165184, there is no canonical definition to state claims against.
-/

/-! ## A165184.P11267718645911832172

`3*(a(n-1)-A024362(A187044(n)))` with `a(0)=1, a(1)=4`
-/

namespace A165184.P11267718645911832172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * (a (n - 1) - A024362 (A187044 n).toNat)

end

end A165184.P11267718645911832172

/-! ## A165184.P12684067081122006663

`floor(4*3^(n-1))-A326541(A049164(n))`
-/

namespace A165184.P12684067081122006663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A326541 (A049164 n).toNat

end

end A165184.P12684067081122006663

/-! ## A165184.P15444524748308585783

`floor(4*3^(n-1))-A023416(A078214(n+1))`
-/

namespace A165184.P15444524748308585783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A023416 (A078214 (n + 1)).toNat

end

end A165184.P15444524748308585783

/-! ## A165184.P16252361805524552295

`A003946(n)-A173068(A037957(n))`
-/

namespace A165184.P16252361805524552295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - A173068 (A037957 n).toNat

end

end A165184.P16252361805524552295

/-! ## A165184.P14376605566331317172

`A003946(n)-A331416(A191065(n+3))`
-/

namespace A165184.P14376605566331317172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - A331416 (A191065 (n + 3)).toNat

end

end A165184.P14376605566331317172

/-!
# A165185: Number of reduced words of length n in Coxeter group on 5 generators S_i with relations (S_i)^2 = (S_i S_j)^9 = I.

The programs for A165185, there is no canonical definition to state claims against.
-/

/-! ## A165185.P8931424392972201888

`floor(5*4^(n-1))-A010894(A047924(n))`
-/

namespace A165185.P8931424392972201888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A010894 ((A047924 n).toNat + 21)

end

end A165185.P8931424392972201888

/-! ## A165185.P15606110806861086875

`floor(5*4^(n-1))-A116385(A165877(n))`
-/

namespace A165185.P15606110806861086875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A116385 (A165877 n).toNat

end

end A165185.P15606110806861086875

/-! ## A165185.P841543694833875989

`floor(5*4^(n-1))-A010894(A076027(n+1))`
-/

namespace A165185.P841543694833875989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A010894 ((A076027 (n + 1)).toNat + 21)

end

end A165185.P841543694833875989

/-! ## A165185.P10068290869924879938

`A000027(floor(5*4^(n-1))-A088001(n+1))`
-/

namespace A165185.P10068290869924879938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A088001 (n + 1)).toNat

end

end A165185.P10068290869924879938

/-! ## A165185.P3791024143746851523

`floor(5*4^(n-1))-A185255(A190079(n+1))`
-/

namespace A165185.P3791024143746851523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185255 (A190079 (n + 1)).toNat

end

end A165185.P3791024143746851523

/-!
# A165186: a(n) = Sum_{k=1..n} (k*(n-k) mod n).

The programs for A165186, there is no canonical definition to state claims against.
-/

/-! ## A165186.P15962792484784933855

`(n+1)*A014811(n+1)-∑[n²]`
-/

namespace A165186.P15962792484784933855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A014811 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A165186.P15962792484784933855

/-! ## A165186.P11293566627240625726

`∑[∑[n]]-(n+1)*A344552(n+1)`
-/

namespace A165186.P11293566627240625726
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ) * A344552 (n + 1)

end

end A165186.P11293566627240625726

/-! ## A165186.P7534380431232567676

`(n+1)*A014785(n+1)-∑[(n+1)²]`
-/

namespace A165186.P7534380431232567676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A014785 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A165186.P7534380431232567676

/-! ## A165186.P9946944045607334261

`2*A338589(n+1)-A195938(n+1)`
-/

namespace A165186.P9946944045607334261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338589 (n + 1) - A195938 (n + 1)

end

end A165186.P9946944045607334261

/-! ## A165186.P4987726977537743073

`A005843(A338589(n+1))-A195938(n+1)`
-/

namespace A165186.P4987726977537743073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A338589 (n + 1)).toNat - A195938 (n + 1)

end

end A165186.P4987726977537743073

/-!
# A165187: a(n) = n^3*(n+1)^2*(n+2)/12.

The programs for A165187, the canonical program `A165187.P271533036140097410` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165187 has offset 1).

The definition of A165187 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165187.P4138941038970738266

`(n+1)^3*(n+2)²*(n+3)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165187.P4138941038970738266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 * (n + 2) ^ 2 * (n + 3) : ℚ) / 12

end

end A165187.P4138941038970738266

namespace A165187

/-- `(n+1)^3*(n+2)²*(n+3)/12` -/
def P4138941038970738266.Spec : Prop :=
  ∀ n, P4138941038970738266.a n = (A165187 (n + 1) : ℚ)

end A165187

/-! ## A165187.P271533036140097410

`(n+1)*A000217(n+1)*A000292(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A165187

/-- `(n+1)*A000217(n+1)*A000292(n+1)` -/
def P271533036140097410.Spec : Prop :=
  ∀ n, P271533036140097410.a n = A165187 (n + 1)

theorem P271533036140097410.correct : P271533036140097410.Spec := by
  intro n
  simp only [A165187, Nat.add_sub_cancel]

end A165187

/-! ## A165187.P4299115338046675049

`floor((n+1)²/acot(∑[∑[(n+1)²]]))`
-/

namespace A165187.P4299115338046675049
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A165187.P4299115338046675049

namespace A165187

/-- `floor((n+1)²/acot(∑[∑[(n+1)²]]))` -/
def P4299115338046675049.Spec : Prop :=
  ∀ n, P4299115338046675049.a n = A165187 (n + 1)

end A165187

/-! ## A165187.P16972528516076563307

`round((n+1)²/acot(∑[∑[(n+1)²]]))`
-/

namespace A165187.P16972528516076563307
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A165187.P16972528516076563307

namespace A165187

/-- `round((n+1)²/acot(∑[∑[(n+1)²]]))` -/
def P16972528516076563307.Spec : Prop :=
  ∀ n, P16972528516076563307.a n = A165187 (n + 1)

end A165187

/-! ## A165187.P2868523748180581117

`lcm(n+1, (n+1)*∑[n+1]*∑[∑[n+1]])`
-/

namespace A165187.P2868523748180581117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) ((n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)))

end

end A165187.P2868523748180581117

namespace A165187

/-- `lcm(n+1, (n+1)*∑[n+1]*∑[∑[n+1]])` -/
def P2868523748180581117.Spec : Prop :=
  ∀ n, (P2868523748180581117.a n : ℤ) = A165187 (n + 1)

end A165187

/-! ## A165187.P11141306031244701461

`∑[n+1]*A002417(n+1)`
-/

namespace A165187.P11141306031244701461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A002417 (n + 1)

end

end A165187.P11141306031244701461

namespace A165187

/-- `∑[n+1]*A002417(n+1)` -/
def P11141306031244701461.Spec : Prop :=
  ∀ n, P11141306031244701461.a n = A165187 (n + 1)

end A165187

/-! ## A165187.P6843069431169512606

`(n+1)*∑[A117066(n+1)]`
-/

namespace A165187.P6843069431169512606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165187.P6843069431169512606

namespace A165187

/-- `(n+1)*∑[A117066(n+1)]` -/
def P6843069431169512606.Spec : Prop :=
  ∀ n, P6843069431169512606.a n = A165187 (n + 1)

end A165187

/-! ## A165187.P174486998066939930

`(n+1)²*∑[A000330(n+1)]`
-/

namespace A165187.P174486998066939930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165187.P174486998066939930

namespace A165187

/-- `(n+1)²*∑[A000330(n+1)]` -/
def P174486998066939930.Spec : Prop :=
  ∀ n, P174486998066939930.a n = A165187 (n + 1)

end A165187

/-! ## A165187.P7101114145665589076

`(A000330(n+1)+A000292(n))*A000292(n+1)`
-/

namespace A165187.P7101114145665589076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000330 (n + 1) + A000292 n) * A000292 (n + 1)

end

end A165187.P7101114145665589076

namespace A165187

/-- `(A000330(n+1)+A000292(n))*A000292(n+1)` -/
def P7101114145665589076.Spec : Prop :=
  ∀ n, P7101114145665589076.a n = A165187 (n + 1)

end A165187

/-! ## A165187.P17415216586411454663

`(A027480(n)+A000217(n+1))*A000292(n+1)`
-/

namespace A165187.P17415216586411454663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027480 n + A000217 (n + 1)) * A000292 (n + 1)

end

end A165187.P17415216586411454663

namespace A165187

/-- `(A027480(n)+A000217(n+1))*A000292(n+1)` -/
def P17415216586411454663.Spec : Prop :=
  ∀ n, P17415216586411454663.a n = A165187 (n + 1)

end A165187

/-! ## A165187.P10453573573543388347

`(A002412(n+1)-A000292(n))*A000292(n+1)`
-/

namespace A165187.P10453573573543388347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002412 (n + 1) - A000292 n) * A000292 (n + 1)

end

end A165187.P10453573573543388347

namespace A165187

/-- `(A002412(n+1)-A000292(n))*A000292(n+1)` -/
def P10453573573543388347.Spec : Prop :=
  ∀ n, P10453573573543388347.a n = A165187 (n + 1)

end A165187

/-! ## A165187.P2737976753970623189

`(A367379(n+1)+A175254(n+1))*A000292(n+1)`
-/

namespace A165187.P2737976753970623189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A367379 (n + 1) + A175254 (n + 1)) * A000292 (n + 1)

end

end A165187.P2737976753970623189

namespace A165187

/-- `(A367379(n+1)+A175254(n+1))*A000292(n+1)` -/
def P2737976753970623189.Spec : Prop :=
  ∀ n, P2737976753970623189.a n = A165187 (n + 1)

end A165187

/-! ## A165187.P651897466541587649

`(A006331(n+1)-A000292(n+1))*A000292(n+1)`
-/

namespace A165187.P651897466541587649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006331 (n + 1) - A000292 (n + 1)) * A000292 (n + 1)

end

end A165187.P651897466541587649

namespace A165187

/-- `(A006331(n+1)-A000292(n+1))*A000292(n+1)` -/
def P651897466541587649.Spec : Prop :=
  ∀ n, P651897466541587649.a n = A165187 (n + 1)

end A165187

/-! ## A165187.P13158427750821866259

`(n+1)*A004302(n+1)`
-/

namespace A165187.P13158427750821866259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004302 (n + 1)

end

end A165187.P13158427750821866259

namespace A165187

/-- `(n+1)*A004302(n+1)` -/
def P13158427750821866259.Spec : Prop :=
  ∀ n, P13158427750821866259.a n = A165187 (n + 1)

end A165187

/-! ## A165187.P6595740942372575334

`A000292(n+1)*A002411(n+1)`
-/

namespace A165187.P6595740942372575334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A002411 (n + 1)

end

end A165187.P6595740942372575334

namespace A165187

/-- `A000292(n+1)*A002411(n+1)` -/
def P6595740942372575334.Spec : Prop :=
  ∀ n, P6595740942372575334.a n = A165187 (n + 1)

end A165187

/-! ## A165187.P10326446432322774632

`(A008778(n)-A000217(n))*A002411(n+1)`
-/

namespace A165187.P10326446432322774632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008778 n - A000217 n) * A002411 (n + 1)

end

end A165187.P10326446432322774632

namespace A165187

/-- `(A008778(n)-A000217(n))*A002411(n+1)` -/
def P10326446432322774632.Spec : Prop :=
  ∀ n, P10326446432322774632.a n = A165187 (n + 1)

end A165187

/-! ## A165187.P5780423371773050612

`(A002717(n+1)+A002717(n))*A000292(n+1)`
-/

namespace A165187.P5780423371773050612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002717 (n + 1) + A002717 n) * A000292 (n + 1)

end

end A165187.P5780423371773050612

namespace A165187

/-- `(A002717(n+1)+A002717(n))*A000292(n+1)` -/
def P5780423371773050612.Spec : Prop :=
  ∀ n, P5780423371773050612.a n = A165187 (n + 1)

end A165187

/-! ## A165187.P530641834745900436

`(A001296(n+1)-A001296(n))*A000292(n+1)`
-/

namespace A165187.P530641834745900436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001296 (n + 1) - A001296 n) * A000292 (n + 1)

end

end A165187.P530641834745900436

namespace A165187

/-- `(A001296(n+1)-A001296(n))*A000292(n+1)` -/
def P530641834745900436.Spec : Prop :=
  ∀ n, P530641834745900436.a n = A165187 (n + 1)

end A165187

/-! ## A165187.P8497237790857206780

`(A000537(n+1)-A002415(n+1))*A000217(n+1)`
-/

namespace A165187.P8497237790857206780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000537 (n + 1) - A002415 (n + 1)) * A000217 (n + 1)

end

end A165187.P8497237790857206780

namespace A165187

/-- `(A000537(n+1)-A002415(n+1))*A000217(n+1)` -/
def P8497237790857206780.Spec : Prop :=
  ∀ n, P8497237790857206780.a n = A165187 (n + 1)

end A165187

/-! ## A165187.P15102466846528678355

`(A006331(n+1)-A002411(n+1))*A002411(n+1)`
-/

namespace A165187.P15102466846528678355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006331 (n + 1) - A002411 (n + 1)) * A002411 (n + 1)

end

end A165187.P15102466846528678355

namespace A165187

/-- `(A006331(n+1)-A002411(n+1))*A002411(n+1)` -/
def P15102466846528678355.Spec : Prop :=
  ∀ n, P15102466846528678355.a n = A165187 (n + 1)

end A165187

/-!
# A165188: Interleaving of A014125 and zero followed by A014125.

The programs for A165188, the canonical program `A165188.P17491138411917498515` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165188 has offset 1).

The definition of A165188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165188.P7988711643866937508

`A266769(n)-a(n-1)` with `a(0)=1`
-/

namespace A165188.P7988711643866937508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266769 n - a (n - 1)

end

end A165188.P7988711643866937508

namespace A165188

/-- `A266769(n)-a(n-1)` -/
def P7988711643866937508.Spec : Prop :=
  ∀ n, P7988711643866937508.a n = A165188 (n + 1)

end A165188

/-! ## A165188.P17491138411917498515

`A008731(n)+a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A165188

/-- `A008731(n)+a(n-2)` -/
def P17491138411917498515.Spec : Prop :=
  ∀ n, P17491138411917498515.a n = A165188 (n + 1)

theorem P17491138411917498515.correct : P17491138411917498515.Spec := by
  intro n
  simp only [A165188, Nat.add_sub_cancel]

end A165188

/-! ## A165188.P13454787010304730558

`A037240(n)-A083708(n)`
-/

namespace A165188.P13454787010304730558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037240 n - A083708 n

end

end A165188.P13454787010304730558

namespace A165188

/-- `A037240(n)-A083708(n)` -/
def P13454787010304730558.Spec : Prop :=
  ∀ n, P13454787010304730558.a n = A165188 (n + 1)

end A165188

/-! ## A165188.P5969702617334423034

`A254708(n)-A254594(n)`
-/

namespace A165188.P5969702617334423034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254708 n - A254594 n

end

end A165188.P5969702617334423034

namespace A165188

/-- `A254708(n)-A254594(n)` -/
def P5969702617334423034.Spec : Prop :=
  ∀ n, P5969702617334423034.a n = A165188 (n + 1)

end A165188

/-! ## A165188.P119607373913067953

`(A254707(n)+A254594(n))/2`
-/

namespace A165188.P119607373913067953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254707 n + A254594 n : ℚ) / 2

end

end A165188.P119607373913067953

namespace A165188

/-- `(A254707(n)+A254594(n))/2` -/
def P119607373913067953.Spec : Prop :=
  ∀ n, P119607373913067953.a n = (A165188 (n + 1) : ℚ)

end A165188

/-! ## A165188.P4783690653757472907

`2*A254594(n)-A266755(n)`
-/

namespace A165188.P4783690653757472907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A254594 n - A266755 n

end

end A165188.P4783690653757472907

namespace A165188

/-- `2*A254594(n)-A266755(n)` -/
def P4783690653757472907.Spec : Prop :=
  ∀ n, P4783690653757472907.a n = A165188 (n + 1)

end A165188

/-! ## A165188.P12098013291635048600

`A026810(n+2)+A001400(n)-a(n-1)` with `a(0)=1`
-/

namespace A165188.P12098013291635048600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026810 (n + 2) + (A001400 n - a (n - 1))

end

end A165188.P12098013291635048600

namespace A165188

/-- `A026810(n+2)+A001400(n)-a(n-1)` -/
def P12098013291635048600.Spec : Prop :=
  ∀ n, P12098013291635048600.a n = A165188 (n + 1)

end A165188

/-! ## A165188.P6383806539660902170

`A002623(n+1)-(A058187(n+1)+A014125(n))`
-/

namespace A165188.P6383806539660902170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 (n + 1) - (A058187 (n + 1) + A014125 n)

end

end A165188.P6383806539660902170

namespace A165188

/-- `A002623(n+1)-(A058187(n+1)+A014125(n))` -/
def P6383806539660902170.Spec : Prop :=
  ∀ n, P6383806539660902170.a n = A165188 (n + 1)

end A165188

/-! ## A165188.P10835247090848212931

`A057524(n+1)-(A058187(n+1)+A057524(n))`
-/

namespace A165188.P10835247090848212931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057524 (n + 1) - (A058187 (n + 1) + A057524 n)

end

end A165188.P10835247090848212931

namespace A165188

/-- `A057524(n+1)-(A058187(n+1)+A057524(n))` -/
def P10835247090848212931.Spec : Prop :=
  ∀ n, P10835247090848212931.a n = A165188 (n + 1)

end A165188

/-! ## A165188.P901384523565364555

`A251260(n+1)-(A254594(n+1)+A001400(n))`
-/

namespace A165188.P901384523565364555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251260 (n + 1) - (A254594 (n + 1) + A001400 n)

end

end A165188.P901384523565364555

namespace A165188

/-- `A251260(n+1)-(A254594(n+1)+A001400(n))` -/
def P901384523565364555.Spec : Prop :=
  ∀ n, P901384523565364555.a n = A165188 (n + 1)

end A165188

/-! ## A165188.P7815549441424195810

`A026810(n+6-gcd(2, n+1)²)`
-/

namespace A165188.P7815549441424195810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 6 - Nat.gcd 2 (n + 1) ^ 2)

end

end A165188.P7815549441424195810

namespace A165188

/-- `A026810(n+6-gcd(2, n+1)²)` -/
def P7815549441424195810.Spec : Prop :=
  ∀ n, P7815549441424195810.a n = A165188 (n + 1)

end A165188

/-! ## A165188.P6284970731722571018

`A026810(gcd((n+2)², n²)+n+1)`
-/

namespace A165188.P6284970731722571018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (Nat.gcd ((n + 2) ^ 2) (n ^ 2) + (n + 1))

end

end A165188.P6284970731722571018

namespace A165188

/-- `A026810(gcd((n+2)², n²)+n+1)` -/
def P6284970731722571018.Spec : Prop :=
  ∀ n, P6284970731722571018.a n = A165188 (n + 1)

end A165188

/-! ## A165188.P14897627880819058805

`A026810(A097062(n+4))`
-/

namespace A165188.P14897627880819058805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A097062 (n + 4)).toNat

end

end A165188.P14897627880819058805

namespace A165188

/-- `A026810(A097062(n+4))` -/
def P14897627880819058805.Spec : Prop :=
  ∀ n, P14897627880819058805.a n = A165188 (n + 1)

end A165188

/-! ## A165188.P12471569395076596300

`A027636(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A165188.P12471569395076596300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027636 (2 * n) - a (n - 1)

end

end A165188.P12471569395076596300

namespace A165188

/-- `A027636(2*n)-a(n-1)` -/
def P12471569395076596300.Spec : Prop :=
  ∀ n, P12471569395076596300.a n = A165188 (n + 1)

end A165188

/-! ## A165188.P15229888581761313823

`A029034(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A165188.P15229888581761313823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029034 (2 * n) - a (n - 1)

end

end A165188.P15229888581761313823

namespace A165188

/-- `A029034(2*n)-a(n-1)` -/
def P15229888581761313823.Spec : Prop :=
  ∀ n, P15229888581761313823.a n = A165188 (n + 1)

end A165188

/-! ## A165188.P8819653733426427935

`A029253(or(1, 3*xor(1, n)))`
-/

namespace A165188.P8819653733426427935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029253 (Nat.lor 1 (3 * Nat.xor 1 n))

end

end A165188.P8819653733426427935

namespace A165188

/-- `A029253(or(1, 3*xor(1, n)))` -/
def P8819653733426427935.Spec : Prop :=
  ∀ n, P8819653733426427935.a n = A165188 (n + 1)

end A165188

/-! ## A165188.P10031832674773771923

`A029167(A136320(n))`
-/

namespace A165188.P10031832674773771923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029167 (A136320 n).toNat

end

end A165188.P10031832674773771923

namespace A165188

/-- `A029167(A136320(n))` -/
def P10031832674773771923.Spec : Prop :=
  ∀ n, P10031832674773771923.a n = A165188 (n + 1)

end A165188

/-! ## A165188.P799851962542357809

`A029167(2*A166517(n)-1)`
-/

namespace A165188.P799851962542357809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029167 (2 * A166517 n - 1).toNat

end

end A165188.P799851962542357809

namespace A165188

/-- `A029167(2*A166517(n)-1)` -/
def P799851962542357809.Spec : Prop :=
  ∀ n, P799851962542357809.a n = A165188 (n + 1)

end A165188

/-! ## A165188.P17583170069193510781

`A029167(A166517(n)+A166517(n)-1)`
-/

namespace A165188.P17583170069193510781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029167 (A166517 n + (A166517 n - 1)).toNat

end

end A165188.P17583170069193510781

namespace A165188

/-- `A029167(A166517(n)+A166517(n)-1)` -/
def P17583170069193510781.Spec : Prop :=
  ∀ n, P17583170069193510781.a n = A165188 (n + 1)

end A165188

/-! ## A165188.P1212138856947987611

`A029167(A166517(n)-(1-A166517(n)))`
-/

namespace A165188.P1212138856947987611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029167 (A166517 n - (1 - A166517 n)).toNat

end

end A165188.P1212138856947987611

namespace A165188

/-- `A029167(A166517(n)-(1-A166517(n)))` -/
def P1212138856947987611.Spec : Prop :=
  ∀ n, P1212138856947987611.a n = A165188 (n + 1)

end A165188

/-!
# A165189: Partial sums of partial sums of (A001840 interleaved with zeros).

The programs for A165189, the canonical program `A165189.P12331472653171714079` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165189 has offset 1).

The definition of A165189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165189.P12331472653171714079

`∑[A001400(or(1, n))]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A165189

/-- `∑[A001400(or(1, n))]` -/
def P12331472653171714079.Spec : Prop :=
  ∀ n, P12331472653171714079.a n = A165189 (n + 1)

theorem P12331472653171714079.correct : P12331472653171714079.Spec := by
  intro n
  simp only [A165189, Nat.add_sub_cancel]

end A165189

/-! ## A165189.P600090411437074588

`∑[A165188(or(1, n))]`
-/

namespace A165189.P600090411437074588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165188 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165189.P600090411437074588

namespace A165189

/-- `∑[A165188(or(1, n))]` -/
def P600090411437074588.Spec : Prop :=
  ∀ n, P600090411437074588.a n = A165189 (n + 1)

end A165189

/-! ## A165189.P1751633857374826399

`∑[A014125(floor(n/2))]`
-/

namespace A165189.P1751633857374826399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014125 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165189.P1751633857374826399

namespace A165189

/-- `∑[A014125(floor(n/2))]` -/
def P1751633857374826399.Spec : Prop :=
  ∀ n, P1751633857374826399.a n = A165189 (n + 1)

end A165189

/-! ## A165189.P16070572986902776080

`∑[A165188(and(1, n+1)+n)]`
-/

namespace A165189.P16070572986902776080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165188 (Nat.land 1 (n + 1) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165189.P16070572986902776080

namespace A165189

/-- `∑[A165188(and(1, n+1)+n)]` -/
def P16070572986902776080.Spec : Prop :=
  ∀ n, P16070572986902776080.a n = A165189 (n + 1)

end A165189

/-! ## A165189.P1102166946444709436

`A097701(n)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A165189.P1102166946444709436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  A097701 n - a (n - 3)

end

end A165189.P1102166946444709436

namespace A165189

/-- `A097701(n)-a(n-3)` -/
def P1102166946444709436.Spec : Prop :=
  ∀ n, P1102166946444709436.a n = A165189 (n + 1)

end A165189

/-! ## A165189.P9148709634168262558

`∑[A001400(A109613(n))]`
-/

namespace A165189.P9148709634168262558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (A109613 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165189.P9148709634168262558

namespace A165189

/-- `∑[A001400(A109613(n))]` -/
def P9148709634168262558.Spec : Prop :=
  ∀ n, P9148709634168262558.a n = A165189 (n + 1)

end A165189

/-! ## A165189.P12768820846522948787

`∑[A001400(A059841(n)+n)]`
-/

namespace A165189.P12768820846522948787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (A059841 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165189.P12768820846522948787

namespace A165189

/-- `∑[A001400(A059841(n)+n)]` -/
def P12768820846522948787.Spec : Prop :=
  ∀ n, P12768820846522948787.a n = A165189 (n + 1)

end A165189

/-! ## A165189.P12978833560571772258

`A002621(n+1)-A000601(A110654(n))`
-/

namespace A165189.P12978833560571772258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002621 (n + 1) - A000601 (A110654 n).toNat

end

end A165189.P12978833560571772258

namespace A165189

/-- `A002621(n+1)-A000601(A110654(n))` -/
def P12978833560571772258.Spec : Prop :=
  ∀ n, P12978833560571772258.a n = A165189 (n + 1)

end A165189

/-! ## A165189.P13621531138787318931

`A005044(n+1)+A062890(n+1)+A002621(n)`
-/

namespace A165189.P13621531138787318931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) + (A062890 (n + 1) + A002621 n)

end

end A165189.P13621531138787318931

namespace A165189

/-- `A005044(n+1)+A062890(n+1)+A002621(n)` -/
def P13621531138787318931.Spec : Prop :=
  ∀ n, P13621531138787318931.a n = A165189 (n + 1)

end A165189

/-! ## A165189.P4038371719654897548

`∑[A001400(Δ[A000982(n)])]`
-/

namespace A165189.P4038371719654897548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165189.P4038371719654897548

namespace A165189

/-- `∑[A001400(Δ[A000982(n)])]` -/
def P4038371719654897548.Spec : Prop :=
  ∀ n, P4038371719654897548.a n = A165189 (n + 1)

end A165189

/-! ## A165189.P8881363035597197843

`A002621(n+1)-A099770(n+1)`
-/

namespace A165189.P8881363035597197843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002621 (n + 1) - A099770 (n + 1)

end

end A165189.P8881363035597197843

namespace A165189

/-- `A002621(n+1)-A099770(n+1)` -/
def P8881363035597197843.Spec : Prop :=
  ∀ n, P8881363035597197843.a n = A165189 (n + 1)

end A165189

/-! ## A165189.P15792706747176161808

`A002621(n+1)-A000601(A004526(n+1))`
-/

namespace A165189.P15792706747176161808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002621 (n + 1) - A000601 (A004526 (n + 1)).toNat

end

end A165189.P15792706747176161808

namespace A165189

/-- `A002621(n+1)-A000601(A004526(n+1))` -/
def P15792706747176161808.Spec : Prop :=
  ∀ n, P15792706747176161808.a n = A165189 (n + 1)

end A165189

/-! ## A165189.P11006740975011817583

`∑[A001400(A004525(2*n+1))]`
-/

namespace A165189.P11006740975011817583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (A004525 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165189.P11006740975011817583

namespace A165189

/-- `∑[A001400(A004525(2*n+1))]` -/
def P11006740975011817583.Spec : Prop :=
  ∀ n, P11006740975011817583.a n = A165189 (n + 1)

end A165189

/-!
# A165190: G.f.: 1/((1-x^4)*(1-x^5)).

The programs for A165190, the canonical program `A165190.P6990301022694349207` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165190 has offset 0).

The definition of A165190 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165190.P6990301022694349207

`floor((n+4)/4)-floor((n+4)/5)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165190

/-- `floor((n+4)/4)-floor((n+4)/5)` -/
def P6990301022694349207.Spec : Prop :=
  ∀ n, P6990301022694349207.a n = A165190 n

theorem P6990301022694349207.correct : P6990301022694349207.Spec := by
  intro n
  simp only [A165190]

end A165190

/-! ## A165190.P8425060917310992642

`floor(sqrt(A025862(n)))`
-/

namespace A165190.P8425060917310992642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A025862 n)

end

end A165190.P8425060917310992642

namespace A165190

/-- `floor(sqrt(A025862(n)))` -/
def P8425060917310992642.Spec : Prop :=
  ∀ n, P8425060917310992642.a n = A165190 n

end A165190

/-! ## A165190.P13655192465676553526

`Δ[A008672(n)-A008680(n)]`
-/

namespace A165190.P13655192465676553526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008672 n - A008680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165190.P13655192465676553526

namespace A165190

/-- `Δ[A008672(n)-A008680(n)]` -/
def P13655192465676553526.Spec : Prop :=
  ∀ n, P13655192465676553526.a n = A165190 n

end A165190

/-! ## A165190.P6595083091231816427

`Δ[A186347(n+2)-A186384(n+1)]`
-/

namespace A165190.P6595083091231816427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186347 (n + 2) - A186384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165190.P6595083091231816427

namespace A165190

/-- `Δ[A186347(n+2)-A186384(n+1)]` -/
def P6595083091231816427.Spec : Prop :=
  ∀ n, P6595083091231816427.a n = A165190 n

end A165190

/-! ## A165190.P526537053001914382

`Δ[A211535(n+8)]`
-/

namespace A165190.P526537053001914382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211535 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165190.P526537053001914382

namespace A165190

/-- `Δ[A211535(n+8)]` -/
def P526537053001914382.Spec : Prop :=
  ∀ n, P526537053001914382.a n = A165190 n

end A165190

/-! ## A165190.P5500984875855646873

`A033182(abs(2-A166517(n)))`
-/

namespace A165190.P5500984875855646873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 |2 - A166517 n|.toNat

end

end A165190.P5500984875855646873

namespace A165190

/-- `A033182(abs(2-A166517(n)))` -/
def P5500984875855646873.Spec : Prop :=
  ∀ n, P5500984875855646873.a n = A165190 n

end A165190

/-! ## A165190.P8371466900828321337

`A033182(A166517(n+1)-1)`
-/

namespace A165190.P8371466900828321337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A166517 (n + 1) - 1).toNat

end

end A165190.P8371466900828321337

namespace A165190

/-- `A033182(A166517(n+1)-1)` -/
def P8371466900828321337.Spec : Prop :=
  ∀ n, P8371466900828321337.a n = A165190 n

end A165190

/-! ## A165190.P5370035883298104185

`A008651(A166517(n+1)-1)`
-/

namespace A165190.P5370035883298104185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A166517 (n + 1) - 1).toNat

end

end A165190.P5370035883298104185

namespace A165190

/-- `A008651(A166517(n+1)-1)` -/
def P5370035883298104185.Spec : Prop :=
  ∀ n, P5370035883298104185.a n = A165190 n

end A165190

/-! ## A165190.P3793619801327970803

`A033182(A166517(n+2))`
-/

namespace A165190.P3793619801327970803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A166517 (n + 2)).toNat

end

end A165190.P3793619801327970803

namespace A165190

/-- `A033182(A166517(n+2))` -/
def P3793619801327970803.Spec : Prop :=
  ∀ n, P3793619801327970803.a n = A165190 n

end A165190

/-! ## A165190.P2410711654768111297

`A008651(A166517(n+7))`
-/

namespace A165190.P2410711654768111297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A166517 (n + 7)).toNat

end

end A165190.P2410711654768111297

namespace A165190

/-- `A008651(A166517(n+7))` -/
def P2410711654768111297.Spec : Prop :=
  ∀ n, P2410711654768111297.a n = A165190 n

end A165190

/-! ## A165190.P11962028675832885407

`A000194(A025862(n))`
-/

namespace A165190.P11962028675832885407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A025862 n).toNat

end

end A165190.P11962028675832885407

namespace A165190

/-- `A000194(A025862(n))` -/
def P11962028675832885407.Spec : Prop :=
  ∀ n, P11962028675832885407.a n = A165190 n

end A165190

/-! ## A165190.P128589119018047022

`A002266(A053344(A174138(A174138(n+1))))`
-/

namespace A165190.P128589119018047022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A053344 (A174138 (A174138 (n + 1)).toNat).toNat).toNat

end

end A165190.P128589119018047022

namespace A165190

/-- `A002266(A053344(A174138(A174138(n+1))))` -/
def P128589119018047022.Spec : Prop :=
  ∀ n, P128589119018047022.a n = A165190 n

end A165190

/-!
# A165191: Irregular triangle B(n,i) = i-th significant bit of Gray code of n.

The programs for A165191, the canonical program `A165191.P13618219544817875924` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165191 has offset 0).

The definition of A165191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165191.P8031976025258154938

`char[∑[A227736(n+1)]]`
-/

namespace A165191.P8031976025258154938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227736 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A165191.P8031976025258154938

namespace A165191

/-- `char[∑[A227736(n+1)]]` -/
def P8031976025258154938.Spec : Prop :=
  ∀ n, (P8031976025258154938.a n : ℤ) = A165191 n

end A165191

/-! ## A165191.P18232612536077734458

`char[∑[A101211(A227741(n+1))]]`
-/

namespace A165191.P18232612536077734458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101211 (A227741 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A165191.P18232612536077734458

namespace A165191

/-- `char[∑[A101211(A227741(n+1))]]` -/
def P18232612536077734458.Spec : Prop :=
  ∀ n, (P18232612536077734458.a n : ℤ) = A165191 n

end A165191

/-! ## A165191.P12239817908192515863

`Δ[A030308(n)-A030530(n)]²%3`
-/

namespace A165191.P12239817908192515863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n - A030530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) ^ 2) 3

end

end A165191.P12239817908192515863

namespace A165191

/-- `Δ[A030308(n)-A030530(n)]²%3` -/
def P12239817908192515863.Spec : Prop :=
  ∀ n, P12239817908192515863.a n = A165191 n

end A165191

/-! ## A165191.P13618219544817875924

`Δ[A008619(A004202(a(n-1)))]%2` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A165191

/-- `Δ[A008619(A004202(a(n-1)))]%2` -/
def P13618219544817875924.Spec : Prop :=
  ∀ n, P13618219544817875924.a n = A165191 n

theorem P13618219544817875924.correct : P13618219544817875924.Spec := by
  intro n
  simp only [A165191]

end A165191

/-! ## A165191.P17336084322103369532

`(A000040(n+1)*A233932(round(acot(n)+n)))%2`
-/

namespace A165191.P17336084322103369532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) * A233932 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat) 2

end

end A165191.P17336084322103369532

namespace A165191

/-- `(A000040(n+1)*A233932(round(acot(n)+n)))%2` -/
def P17336084322103369532.Spec : Prop :=
  ∀ n, P17336084322103369532.a n = A165191 n

end A165191

/-! ## A165191.P2855357202122642246

`A000120(Δ[A030308(n)-A030530(n)]²)`
-/

namespace A165191.P2855357202122642246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n - A030530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A165191.P2855357202122642246

namespace A165191

/-- `A000120(Δ[A030308(n)-A030530(n)]²)` -/
def P2855357202122642246.Spec : Prop :=
  ∀ n, P2855357202122642246.a n = A165191 n

end A165191

/-! ## A165191.P12144833167611710425

`A002487(Δ[A030308(n)-A030530(n)]²)`
-/

namespace A165191.P12144833167611710425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n - A030530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A165191.P12144833167611710425

namespace A165191

/-- `A002487(Δ[A030308(n)-A030530(n)]²)` -/
def P12144833167611710425.Spec : Prop :=
  ∀ n, P12144833167611710425.a n = A165191 n

end A165191

/-! ## A165191.P4318627941710361425

`A025581(Δ[A030308(n)-A030530(n)]²)`
-/

namespace A165191.P4318627941710361425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n - A030530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A165191.P4318627941710361425

namespace A165191

/-- `A025581(Δ[A030308(n)-A030530(n)]²)` -/
def P4318627941710361425.Spec : Prop :=
  ∀ n, P4318627941710361425.a n = A165191 n

end A165191

/-! ## A165191.P11165989292458753064

`A030190(Δ[A030308(n)-A030530(n)]²)`
-/

namespace A165191.P11165989292458753064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n - A030530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A165191.P11165989292458753064

namespace A165191

/-- `A030190(Δ[A030308(n)-A030530(n)]²)` -/
def P11165989292458753064.Spec : Prop :=
  ∀ n, P11165989292458753064.a n = A165191 n

end A165191

/-! ## A165191.P3941298581141027565

`A030308(Δ[A030308(n)-A030530(n)]²)`
-/

namespace A165191.P3941298581141027565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n - A030530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A165191.P3941298581141027565

namespace A165191

/-- `A030308(Δ[A030308(n)-A030530(n)]²)` -/
def P3941298581141027565.Spec : Prop :=
  ∀ n, P3941298581141027565.a n = A165191 n

end A165191

/-! ## A165191.P13713198854308973984

`A003137(Δ[A030530(n)-A030308(n)]+4)`
-/

namespace A165191.P13713198854308973984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 n - A030308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003137 (f1 (n + 1) - f1 n + 4).toNat

end

end A165191.P13713198854308973984

namespace A165191

/-- `A003137(Δ[A030530(n)-A030308(n)]+4)` -/
def P13713198854308973984.Spec : Prop :=
  ∀ n, P13713198854308973984.a n = A165191 n

end A165191

/-! ## A165191.P7175337796761931677

`A030190(3-Δ[A030308(n)-A030530(n)])`
-/

namespace A165191.P7175337796761931677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n - A030530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (3 - (f1 (n + 1) - f1 n)).toNat

end

end A165191.P7175337796761931677

namespace A165191

/-- `A030190(3-Δ[A030308(n)-A030530(n)])` -/
def P7175337796761931677.Spec : Prop :=
  ∀ n, P7175337796761931677.a n = A165191 n

end A165191

/-! ## A165191.P4329210818666396208

`A030302(3-Δ[A030308(n)-A030530(n)])`
-/

namespace A165191.P4329210818666396208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n - A030530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (3 - (f1 (n + 1) - f1 n)).toNat

end

end A165191.P4329210818666396208

namespace A165191

/-- `A030302(3-Δ[A030308(n)-A030530(n)])` -/
def P4329210818666396208.Spec : Prop :=
  ∀ n, P4329210818666396208.a n = A165191 n

end A165191

/-! ## A165191.P4388344178113836486

`A003137(4-Δ[A030308(n)-A030530(n)])`
-/

namespace A165191.P4388344178113836486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n - A030530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003137 (4 - (f1 (n + 1) - f1 n)).toNat

end

end A165191.P4388344178113836486

namespace A165191

/-- `A003137(4-Δ[A030308(n)-A030530(n)])` -/
def P4388344178113836486.Spec : Prop :=
  ∀ n, P4388344178113836486.a n = A165191 n

end A165191

/-! ## A165191.P18338481981099852851

`A000120(Δ[A030308(n)-A030530(n)]^4)`
-/

namespace A165191.P18338481981099852851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n - A030530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((f1 (n + 1) - f1 n) ^ 4).toNat

end

end A165191.P18338481981099852851

namespace A165191

/-- `A000120(Δ[A030308(n)-A030530(n)]^4)` -/
def P18338481981099852851.Spec : Prop :=
  ∀ n, P18338481981099852851.a n = A165191 n

end A165191

/-! ## A165191.P5895689636537785811

`A233932(round(acot(n)+n))%A020639(A000010(n+2))`
-/

namespace A165191.P5895689636537785811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233932 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat) (A020639 (A000010 (n + 2)).toNat)

end

end A165191.P5895689636537785811

namespace A165191

/-- `A233932(round(acot(n)+n))%A020639(A000010(n+2))` -/
def P5895689636537785811.Spec : Prop :=
  ∀ n, P5895689636537785811.a n = A165191 n

end A165191

/-! ## A165191.P15745510716590776914

`A233932(A028310(n))%A020639(A000010(n+2))`
-/

namespace A165191.P15745510716590776914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233932 (A028310 n).toNat) (A020639 (A000010 (n + 2)).toNat)

end

end A165191.P15745510716590776914

namespace A165191

/-- `A233932(A028310(n))%A020639(A000010(n+2))` -/
def P15745510716590776914.Spec : Prop :=
  ∀ n, P15745510716590776914.a n = A165191 n

end A165191

/-!
# A165192: a(0) = 1, a(1) = 2, a(3) = 3, a(n) = a(n-1) - a(n-3).

The programs for A165192, the canonical program `A165192.P5693163484177958761` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165192 has offset 0).

The definition of A165192 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-a(n-3)` (program `A165192.P5693163484177958761`, by `A165192.P5693163484177958761.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165192.P5693163484177958761

`a(n-1)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A165192

/-- `a(n-1)-a(n-3)` -/
def P5693163484177958761.Spec : Prop :=
  ∀ n, P5693163484177958761.a n = A165192 n

theorem P5693163484177958761.correct : P5693163484177958761.Spec := by
  intro n
  simp only [A165192]

end A165192

/-! ## A165192.P7759199245149118529

`(-1)^n*A104771(n)`
-/

namespace A165192.P7759199245149118529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A104771 n

end

end A165192.P7759199245149118529

namespace A165192

/-- `(-1)^n*A104771(n)` -/
def P7759199245149118529.Spec : Prop :=
  ∀ n, P7759199245149118529.a n = A165192 n

end A165192

/-! ## A165192.P1170769170118171895

`ogf((1+x+x^2)/(1-x+x^3))`
-/

namespace A165192.P1170769170118171895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, -1, 0, 1] n

end

end A165192.P1170769170118171895

namespace A165192

/-- `ogf((1+x+x^2)/(1-x+x^3))` -/
def P1170769170118171895.Spec : Prop :=
  ∀ n, P1170769170118171895.a n = A165192 n

end A165192

/-! ## A165192.P7487996949207940078

`A050935(n+1)+∑[A050935(n+4)]`
-/

namespace A165192.P7487996949207940078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165192.P7487996949207940078

namespace A165192

/-- `A050935(n+1)+∑[A050935(n+4)]` -/
def P7487996949207940078.Spec : Prop :=
  ∀ n, P7487996949207940078.a n = A165192 n

end A165192

/-! ## A165192.P12137221383871984422

`A104771(n)/A033999(n+2)`
-/

namespace A165192.P12137221383871984422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104771 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A165192.P12137221383871984422

namespace A165192

/-- `A104771(n)/A033999(n+2)` -/
def P12137221383871984422.Spec : Prop :=
  ∀ n, P12137221383871984422.a n = (A165192 n : ℚ)

end A165192

/-! ## A165192.P12430614162117767711

`A104771(n)*A219977(n²)`
-/

namespace A165192.P12430614162117767711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104771 n * A219977 (n ^ 2)

end

end A165192.P12430614162117767711

namespace A165192

/-- `A104771(n)*A219977(n²)` -/
def P12430614162117767711.Spec : Prop :=
  ∀ n, P12430614162117767711.a n = A165192 n

end A165192

/-!
# A165193: Eigensequence of triangle A038208.

The programs for A165193, there is no canonical definition to state claims against.
-/

/-! ## A165193.P14890969726431635661

`A032649(a(n-1))+2` with `a(0)=1, a(1)=1`
-/

namespace A165193.P14890969726431635661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A032649 (a (n - 1)).toNat + 2

end

end A165193.P14890969726431635661

/-!
# A165194: Triangle of 2^(n-1) terms by rows, left half of (n+1)-th row = row n; right half = "reverse and increment" row n; using terms in A000110.

The programs for A165194, the canonical program `A165194.P12314185476837874606` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165194 has offset 1).

The definition of A165194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165194.P2230439185970359928

`A050315(A362160(n))`
-/

namespace A165194.P2230439185970359928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 (A362160 n).toNat

end

end A165194.P2230439185970359928

namespace A165194

/-- `A050315(A362160(n))` -/
def P2230439185970359928.Spec : Prop :=
  ∀ n, P2230439185970359928.a n = A165194 (n + 1)

end A165194

/-! ## A165194.P12314185476837874606

`A165195(A062050(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A165194

/-- `A165195(A062050(n+1))` -/
def P12314185476837874606.Spec : Prop :=
  ∀ n, P12314185476837874606.a n = A165194 (n + 1)

theorem P12314185476837874606.correct : P12314185476837874606.Spec := by
  intro n
  simp only [A165194, Nat.add_sub_cancel]

end A165194

/-! ## A165194.P15866417649058795974

`A165195(A281589(n+1))`
-/

namespace A165194.P15866417649058795974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165195 (A281589 (n + 1)).toNat

end

end A165194.P15866417649058795974

namespace A165194

/-- `A165195(A281589(n+1))` -/
def P15866417649058795974.Spec : Prop :=
  ∀ n, P15866417649058795974.a n = A165194 (n + 1)

end A165194

/-! ## A165194.P11921047495475340734

`A000110(A088696(n+1)-1)`
-/

namespace A165194.P11921047495475340734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A088696 (n + 1) - 1).toNat

end

end A165194.P11921047495475340734

namespace A165194

/-- `A000110(A088696(n+1)-1)` -/
def P11921047495475340734.Spec : Prop :=
  ∀ n, P11921047495475340734.a n = A165194 (n + 1)

end A165194

/-! ## A165194.P16244426201382006752

`A000001(A164308(n))`
-/

namespace A165194.P16244426201382006752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A164308 n).toNat

end

end A165194.P16244426201382006752

namespace A165194

/-- `A000001(A164308(n))` -/
def P16244426201382006752.Spec : Prop :=
  ∀ n, P16244426201382006752.a n = A165194 (n + 1)

end A165194

/-!
# A165195: Rows of triangle A165194 tend to this sequence; generated from A000110.

The programs for A165195, the canonical program `A165195.P3193999175642746180` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165195 has offset 1).

The definition of A165195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165195.P14742018731805740276

`A000110(A005811(n))`
-/

namespace A165195.P14742018731805740276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A005811 n).toNat

end

end A165195.P14742018731805740276

namespace A165195

/-- `A000110(A005811(n))` -/
def P14742018731805740276.Spec : Prop :=
  ∀ n, P14742018731805740276.a n = A165195 (n + 1)

end A165195

/-! ## A165195.P3193999175642746180

`A050315(xor(n, floor(n/2)))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A165195

/-- `A050315(xor(n, floor(n/2)))` -/
def P3193999175642746180.Spec : Prop :=
  ∀ n, P3193999175642746180.a n = A165195 (n + 1)

theorem P3193999175642746180.correct : P3193999175642746180.Spec := by
  intro n
  simp only [A165195, Nat.add_sub_cancel]

end A165195

/-! ## A165195.P775276236328523154

`A050315(floor(n/2)+and(n, Δ[-n²]))`
-/

namespace A165195.P775276236328523154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 (⌊(n : ℚ) / 2⌋ + Int.land (n : ℤ) (f1 (n + 1) - f1 n)).toNat

end

end A165195.P775276236328523154

namespace A165195

/-- `A050315(floor(n/2)+and(n, Δ[-n²]))` -/
def P775276236328523154.Spec : Prop :=
  ∀ n, P775276236328523154.a n = A165195 (n + 1)

end A165195

/-! ## A165195.P11431737997959333444

`A050315(A003188(n))`
-/

namespace A165195.P11431737997959333444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 (A003188 n).toNat

end

end A165195.P11431737997959333444

namespace A165195

/-- `A050315(A003188(n))` -/
def P11431737997959333444.Spec : Prop :=
  ∀ n, P11431737997959333444.a n = A165195 (n + 1)

end A165195

/-! ## A165195.P8932196001743054261

`A050315(A280995(n))`
-/

namespace A165195.P8932196001743054261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 (A280995 n).toNat

end

end A165195.P8932196001743054261

namespace A165195

/-- `A050315(A280995(n))` -/
def P8932196001743054261.Spec : Prop :=
  ∀ n, P8932196001743054261.a n = A165195 (n + 1)

end A165195

/-! ## A165195.P4961785782756479946

`A050315(A281553(n))`
-/

namespace A165195.P4961785782756479946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 (A281553 n).toNat

end

end A165195.P4961785782756479946

namespace A165195

/-- `A050315(A281553(n))` -/
def P4961785782756479946.Spec : Prop :=
  ∀ n, P4961785782756479946.a n = A165195 (n + 1)

end A165195

/-! ## A165195.P15336175439914745635

`A050315(A300838(n))`
-/

namespace A165195.P15336175439914745635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 (A300838 n).toNat

end

end A165195.P15336175439914745635

namespace A165195

/-- `A050315(A300838(n))` -/
def P15336175439914745635.Spec : Prop :=
  ∀ n, P15336175439914745635.a n = A165195 (n + 1)

end A165195

/-! ## A165195.P10991295688970573482

`A050315(A341915(n))`
-/

namespace A165195.P10991295688970573482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 (A341915 n).toNat

end

end A165195.P10991295688970573482

namespace A165195

/-- `A050315(A341915(n))` -/
def P10991295688970573482.Spec : Prop :=
  ∀ n, P10991295688970573482.a n = A165195 (n + 1)

end A165195

/-! ## A165195.P674093097179510754

`A050315(A395535(n))`
-/

namespace A165195.P674093097179510754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 (A395535 n).toNat

end

end A165195.P674093097179510754

namespace A165195

/-- `A050315(A395535(n))` -/
def P674093097179510754.Spec : Prop :=
  ∀ n, P674093097179510754.a n = A165195 (n + 1)

end A165195

/-! ## A165195.P8061744182076082444

`A050315(xor(n, 2*n)-n%2)`
-/

namespace A165195.P8061744182076082444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 (Nat.xor n (2 * n) - n % 2)

end

end A165195.P8061744182076082444

namespace A165195

/-- `A050315(xor(n, 2*n)-n%2)` -/
def P8061744182076082444.Spec : Prop :=
  ∀ n, P8061744182076082444.a n = A165195 (n + 1)

end A165195

/-! ## A165195.P12246160728088967536

`A050315(2*xor(n, ∑[char[2*(n+1)]]))`
-/

namespace A165195.P12246160728088967536
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 (2 * Nat.xor n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A165195.P12246160728088967536

namespace A165195

/-- `A050315(2*xor(n, ∑[char[2*(n+1)]]))` -/
def P12246160728088967536.Spec : Prop :=
  ∀ n, P12246160728088967536.a n = A165195 (n + 1)

end A165195

/-! ## A165195.P11486730781599822703

`A050315(A341910(n))`
-/

namespace A165195.P11486730781599822703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 (A341910 n).toNat

end

end A165195.P11486730781599822703

namespace A165195

/-- `A050315(A341910(n))` -/
def P11486730781599822703.Spec : Prop :=
  ∀ n, P11486730781599822703.a n = A165195 (n + 1)

end A165195

/-! ## A165195.P4387859871394925285

`A165194(A004760(n+2))`
-/

namespace A165195.P4387859871394925285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165194 (A004760 (n + 2)).toNat

end

end A165195.P4387859871394925285

namespace A165195

/-- `A165194(A004760(n+2))` -/
def P4387859871394925285.Spec : Prop :=
  ∀ n, P4387859871394925285.a n = A165195 (n + 1)

end A165195

/-! ## A165195.P11554118736698638735

`A165194(A206332(n+1))`
-/

namespace A165195.P11554118736698638735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165194 (A206332 (n + 1)).toNat

end

end A165195.P11554118736698638735

namespace A165195

/-- `A165194(A206332(n+1))` -/
def P11554118736698638735.Spec : Prop :=
  ∀ n, P11554118736698638735.a n = A165195 (n + 1)

end A165195

/-!
# A165196: Partial sums of A165195.

The programs for A165196, the canonical program `A165196.P14945103063248019176` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165196 has offset 1).

The definition of A165196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165196.P14945103063248019176

`∑[A165195(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A165196

/-- `∑[A165195(n+1)]` -/
def P14945103063248019176.Spec : Prop :=
  ∀ n, P14945103063248019176.a n = A165196 (n + 1)

theorem P14945103063248019176.correct : P14945103063248019176.Spec := by
  intro n
  simp only [A165196, Nat.add_sub_cancel]

end A165196

/-! ## A165196.P3504945818885373794

`∑[A000110(A005811(n))]`
-/

namespace A165196.P3504945818885373794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A005811 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165196.P3504945818885373794

namespace A165196

/-- `∑[A000110(A005811(n))]` -/
def P3504945818885373794.Spec : Prop :=
  ∀ n, P3504945818885373794.a n = A165196 (n + 1)

end A165196

/-! ## A165196.P15682979377814781168

`∑[A000110(A136004(n)-4)]`
-/

namespace A165196.P15682979377814781168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A136004 n - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165196.P15682979377814781168

namespace A165196

/-- `∑[A000110(A136004(n)-4)]` -/
def P15682979377814781168.Spec : Prop :=
  ∀ n, P15682979377814781168.a n = A165196 (n + 1)

end A165196

/-! ## A165196.P7270362940609777510

`∑[A000110(n-A236840(n))]`
-/

namespace A165196.P7270362940609777510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 ((n : ℤ) - A236840 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165196.P7270362940609777510

namespace A165196

/-- `∑[A000110(n-A236840(n))]` -/
def P7270362940609777510.Spec : Prop :=
  ∀ n, P7270362940609777510.a n = A165196 (n + 1)

end A165196

/-! ## A165196.P5298418246879627369

`∑[A000110(∑[A121238(n)]-1)]`
-/

namespace A165196.P5298418246879627369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121238 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (∑ j ∈ Finset.range (n + 1), f2 j - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165196.P5298418246879627369

namespace A165196

/-- `∑[A000110(∑[A121238(n)]-1)]` -/
def P5298418246879627369.Spec : Prop :=
  ∀ n, P5298418246879627369.a n = A165196 (n + 1)

end A165196

/-!
# A165197: Smallest integers whose binary digits "1" define a polyomino if sorted into a quadrant shape.

The programs for A165197, there is no canonical definition to state claims against.
-/

/-! ## A165197.P3605497883819119346

`eq[char[A246521(n+1)], A178334(n)]`
-/

namespace A165197.P3605497883819119346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246521 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A165197.P3605497883819119346

/-! ## A165197.P16497935476840829502

`eq[char[A246521(n+1)], A178489(n)]`
-/

namespace A165197.P16497935476840829502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246521 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A165197.P16497935476840829502

/-! ## A165197.P10084604951246892076

`record[A246521(n+2)%A299040(n+3)]`
-/

namespace A165197.P10084604951246892076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246521 (n + 2)) (A299040 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165197.P10084604951246892076

/-! ## A165197.P11033862486940277265

`A262882(A246559(n+2))`
-/

namespace A165197.P11033862486940277265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262882 (A246559 (n + 2)).toNat

end

end A165197.P11033862486940277265

/-! ## A165197.P3447945160215315714

`∑[record[A193958(n)]%A347861(n)]`
-/

namespace A165197.P3447945160215315714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193958 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) (A347861 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165197.P3447945160215315714

/-!
# A165198: Primes from integers by taking the factorial of each digit and adding them up.

The programs for A165198, there is no canonical definition to state claims against.
-/

/-! ## A165198.P15835605626866289014

`p?[A061602(n)]`
-/

namespace A165198.P15835605626866289014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165198.P15835605626866289014

/-! ## A165198.P2481680320285367589

`p?[1-A108911(n+1)+n]`
-/

namespace A165198.P2481680320285367589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A108911 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165198.P2481680320285367589

/-! ## A165198.P10121464795878281200

`p?[A241404(n+1)-(n+1)]`
-/

namespace A165198.P10121464795878281200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241404 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165198.P10121464795878281200

/-! ## A165198.P16745568435278169685

`A061602(∪[A084405(n+1), A358998(n+1)])`
-/

namespace A165198.P16745568435278169685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358998 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A165198.P16745568435278169685

/-! ## A165198.P17318746103133214693

`∑{digits}[A165451(n+1), #!]`
-/

namespace A165198.P17318746103133214693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.factorial x).sum

end

end A165198.P17318746103133214693

/-! ## A165198.P4463724631128454409

`A061602(A165451(n+1))`
-/

namespace A165198.P4463724631128454409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 (A165451 (n + 1)).toNat

end

end A165198.P4463724631128454409

/-! ## A165198.P8630296613176684629

`∑{digits}[A165451(n+1), A000142(#)]`
-/

namespace A165198.P8630296613176684629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000142 x).sum

end

end A165198.P8630296613176684629

/-!
# A165199: a(n) is obtained by flipping every second bit in the binary representation of n starting at the second-most significant bit and on downwards.

The programs for A165199, the canonical program `A165199.P18080261923669933743` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165199 has offset 0).

The definition of A165199 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165199.P7378156925440115550

`A129594(A056539(n))`
-/

namespace A165199.P7378156925440115550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129594 (A056539 n).toNat

end

end A165199.P7378156925440115550

namespace A165199

/-- `A129594(A056539(n))` -/
def P7378156925440115550.Spec : Prop :=
  ∀ n, P7378156925440115550.a n = A165199 n

end A165199

/-! ## A165199.P8885316968798546506

`A245443(A193231(n))`
-/

namespace A165199.P8885316968798546506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245443 (A193231 n).toNat

end

end A165199.P8885316968798546506

namespace A165199

/-- `A245443(A193231(n))` -/
def P8885316968798546506.Spec : Prop :=
  ∀ n, P8885316968798546506.a n = A165199 n

end A165199

/-! ## A165199.P15798131816953483391

`A193231(A245444(n))`
-/

namespace A165199.P15798131816953483391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A245444 n).toNat

end

end A165199.P15798131816953483391

namespace A165199

/-- `A193231(A245444(n))` -/
def P15798131816953483391.Spec : Prop :=
  ∀ n, P15798131816953483391.a n = A165199 n

end A165199

/-! ## A165199.P18080261923669933743

`2*a(floor(n/2))+A000035(n+A000523(n))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A165199

/-- `2*a(floor(n/2))+A000035(n+A000523(n))` -/
def P18080261923669933743.Spec : Prop :=
  ∀ n, P18080261923669933743.a n = A165199 n

theorem P18080261923669933743.correct : P18080261923669933743.Spec := by
  intro n
  simp only [A165199]

end A165199

/-! ## A165199.P14376538050786105430

`A075158(A243353(n)-1)`
-/

namespace A165199.P14376538050786105430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075158 (A243353 n - 1).toNat

end

end A165199.P14376538050786105430

namespace A165199

/-- `A075158(A243353(n)-1)` -/
def P14376538050786105430.Spec : Prop :=
  ∀ n, P14376538050786105430.a n = A165199 n

end A165199

/-! ## A165199.P5570015800639749946

`A075158(A241909(1+A075157(n))-1)`
-/

namespace A165199.P5570015800639749946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075158 (A241909 (1 + A075157 n).toNat - 1).toNat

end

end A165199.P5570015800639749946

namespace A165199

/-- `A075158(A241909(1+A075157(n))-1)` -/
def P5570015800639749946.Spec : Prop :=
  ∀ n, P5570015800639749946.a n = A165199 n

end A165199

/-! ## A165199.P15005657386285981942

`xor(n, A002264(2^ceil(log2(n+1))))`
-/

namespace A165199.P15005657386285981942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A002264 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat)

end

end A165199.P15005657386285981942

namespace A165199

/-- `xor(n, A002264(2^ceil(log2(n+1))))` -/
def P15005657386285981942.Spec : Prop :=
  ∀ n, P15005657386285981942.a n = A165199 n

end A165199

/-! ## A165199.P429562583479868679

`A180200(A003188(n))`
-/

namespace A165199.P429562583479868679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A003188 n).toNat

end

end A165199.P429562583479868679

namespace A165199

/-- `A180200(A003188(n))` -/
def P429562583479868679.Spec : Prop :=
  ∀ n, P429562583479868679.a n = A165199 n

end A165199

/-! ## A165199.P9437425164123392289

`A006068(A180201(n))`
-/

namespace A165199.P9437425164123392289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A180201 n).toNat

end

end A165199.P9437425164123392289

namespace A165199

/-- `A006068(A180201(n))` -/
def P9437425164123392289.Spec : Prop :=
  ∀ n, P9437425164123392289.a n = A165199 n

end A165199

/-! ## A165199.P976850442062441218

`A233279(A154436(n))`
-/

namespace A165199.P976850442062441218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A154436 n).toNat

end

end A165199.P976850442062441218

namespace A165199

/-- `A233279(A154436(n))` -/
def P976850442062441218.Spec : Prop :=
  ∀ n, P976850442062441218.a n = A165199 n

end A165199

/-! ## A165199.P7401187299186324609

`A154435(A233280(n))`
-/

namespace A165199.P7401187299186324609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154435 (A233280 n).toNat

end

end A165199.P7401187299186324609

namespace A165199

/-- `A154435(A233280(n))` -/
def P7401187299186324609.Spec : Prop :=
  ∀ n, P7401187299186324609.a n = A165199 n

end A165199

/-! ## A165199.P6775192761414228671

`A335858(A341915(n))`
-/

namespace A165199.P6775192761414228671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335858 (A341915 n).toNat

end

end A165199.P6775192761414228671

namespace A165199

/-- `A335858(A341915(n))` -/
def P6775192761414228671.Spec : Prop :=
  ∀ n, P6775192761414228671.a n = A165199 n

end A165199

/-! ## A165199.P7634305214262503568

`A375184(A375183(n))`
-/

namespace A165199.P7634305214262503568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375184 (A375183 n).toNat

end

end A165199.P7634305214262503568

namespace A165199

/-- `A375184(A375183(n))` -/
def P7634305214262503568.Spec : Prop :=
  ∀ n, P7634305214262503568.a n = A165199 n

end A165199

/-! ## A165199.P436593856824827764

`A180200(A286548(n)+n)`
-/

namespace A165199.P436593856824827764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A286548 n + (n : ℤ)).toNat

end

end A165199.P436593856824827764

namespace A165199

/-- `A180200(A286548(n)+n)` -/
def P436593856824827764.Spec : Prop :=
  ∀ n, P436593856824827764.a n = A165199 n

end A165199

/-! ## A165199.P1436955811062889684

`A180200(xor(n, A004526(n)))`
-/

namespace A165199.P1436955811062889684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (Int.xor (n : ℤ) (A004526 n)).toNat

end

end A165199.P1436955811062889684

namespace A165199

/-- `A180200(xor(n, A004526(n)))` -/
def P1436955811062889684.Spec : Prop :=
  ∀ n, P1436955811062889684.a n = A165199 n

end A165199

/-! ## A165199.P10540346513500288575

`xor(n, A292600(A003817(n)))`
-/

namespace A165199.P10540346513500288575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A292600 (A003817 n).toNat)

end

end A165199.P10540346513500288575

namespace A165199

/-- `xor(n, A292600(A003817(n)))` -/
def P10540346513500288575.Spec : Prop :=
  ∀ n, P10540346513500288575.a n = A165199 n

end A165199

/-! ## A165199.P10112079497625754745

`xor(A180200(n), A292600(n))`
-/

namespace A165199.P10112079497625754745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A180200 n) (A292600 n)

end

end A165199.P10112079497625754745

namespace A165199

/-- `xor(A180200(n), A292600(n))` -/
def P10112079497625754745.Spec : Prop :=
  ∀ n, P10112079497625754745.a n = A165199 n

end A165199

/-! ## A165199.P9047544893695756982

`A245443(xor(n, A280507(n)))`
-/

namespace A165199.P9047544893695756982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245443 (Int.xor (n : ℤ) (A280507 n)).toNat

end

end A165199.P9047544893695756982

namespace A165199

/-- `A245443(xor(n, A280507(n)))` -/
def P9047544893695756982.Spec : Prop :=
  ∀ n, P9047544893695756982.a n = A165199 n

end A165199

/-! ## A165199.P6137048824884910002

`A180200(xor(n, A002265(2*n)))`
-/

namespace A165199.P6137048824884910002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (Int.xor (n : ℤ) (A002265 (2 * n))).toNat

end

end A165199.P6137048824884910002

namespace A165199

/-- `A180200(xor(n, A002265(2*n)))` -/
def P6137048824884910002.Spec : Prop :=
  ∀ n, P6137048824884910002.a n = A165199 n

end A165199

/-! ## A165199.P9739438808661074520

`xor(n, A292600(A092323(2*n+1)))`
-/

namespace A165199.P9739438808661074520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A292600 (A092323 (2 * n + 1)).toNat)

end

end A165199.P9739438808661074520

namespace A165199

/-- `xor(n, A292600(A092323(2*n+1)))` -/
def P9739438808661074520.Spec : Prop :=
  ∀ n, P9739438808661074520.a n = A165199 n

end A165199

