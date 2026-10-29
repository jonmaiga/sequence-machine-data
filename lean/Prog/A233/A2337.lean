import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
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
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A233701: Number of (n+2)X(1+2) 0..3 arrays with no increasing sequence of length 3 horizontally, vertically, diagonally downwards or antidiagonally downwards.

The programs for A233701, there is no canonical definition to state claims against.
-/

/-! ## A233701.P4681266619594918703

`A233705(∑[n+1])`
-/

namespace A233701.P4681266619594918703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233705 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233701.P4681266619594918703

/-! ## A233701.P9291383829464146188

`record[A233705(A093055(n+1))]`
-/

namespace A233701.P9291383829464146188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233705 (A093055 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233701.P9291383829464146188

/-! ## A233701.P16415342257768422983

`record[A023531(n)*A233705(n+1)]`
-/

namespace A233701.P16415342257768422983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A233705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233701.P16415342257768422983

/-! ## A233701.P18118311726876034353

`record[A103452(n)*A233705(n+1)]`
-/

namespace A233701.P18118311726876034353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A233705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233701.P18118311726876034353

/-!
# A233702: Number of (n+2)X(2+2) 0..3 arrays with no increasing sequence of length 3 horizontally, vertically, diagonally downwards or antidiagonally downwards.

The programs for A233702, there is no canonical definition to state claims against.
-/

/-! ## A233702.P4619258307055568654

`A233705(∑[n+2])`
-/

namespace A233702.P4619258307055568654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233705 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233702.P4619258307055568654

/-!
# A233704: 

The programs for A233704, there is no canonical definition to state claims against.
-/

/-! ## A233704.P4407727413698172501

`A233705(A056000(n)+7)`
-/

namespace A233704.P4407727413698172501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233705 (A056000 n + 7).toNat

end

end A233704.P4407727413698172501

/-!
# A233706: Number of (1+2)X(n+2) 0..3 arrays with no increasing sequence of length 3 horizontally, vertically, diagonally downwards or antidiagonally downwards.

The programs for A233706, there is no canonical definition to state claims against.
-/

/-! ## A233706.P4505077434543768384

`A233705(∑[n]+1)`
-/

namespace A233706.P4505077434543768384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233705 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233706.P4505077434543768384

/-! ## A233706.P1561515139607851901

`lcm(2, A233705(A000124(n)))`
-/

namespace A233706.P1561515139607851901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233705 (A000124 n).toNat)

end

end A233706.P1561515139607851901

/-! ## A233706.P17564501282999229074

`record[root(A233705(n+1), A059268(n))]`
-/

namespace A233706.P17564501282999229074
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233705 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233706.P17564501282999229074

/-! ## A233706.P3022123223540557425

`record[gcd(A233705(n+1), A324688(n))]`
-/

namespace A233706.P3022123223540557425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A233705 (n + 1)) (A324688 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233706.P3022123223540557425

/-! ## A233706.P949012589308065011

`A233705(A000124(n))%A233716(n+1)`
-/

namespace A233706.P949012589308065011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233705 (A000124 n).toNat) (A233716 (n + 1))

end

end A233706.P949012589308065011

/-!
# A233707: Number of (2+2)X(n+2) 0..3 arrays with no increasing sequence of length 3 horizontally, vertically, diagonally downwards or antidiagonally downwards.

The programs for A233707, there is no canonical definition to state claims against.
-/

/-! ## A233707.P17212783336157933146

`A233705(A133263(n+1))`
-/

namespace A233707.P17212783336157933146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233705 (A133263 (n + 1)).toNat

end

end A233707.P17212783336157933146

/-! ## A233707.P680685815494923859

`A233705(A000096(n)+3)`
-/

namespace A233707.P680685815494923859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233705 (A000096 n + 3).toNat

end

end A233707.P680685815494923859

/-! ## A233707.P14368077582345994123

`A233705(A167499(n)-3)`
-/

namespace A233707.P14368077582345994123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233705 (A167499 n - 3).toNat

end

end A233707.P14368077582345994123

/-! ## A233707.P16898736906444943901

`A233705(A000124(n+1)+1)`
-/

namespace A233707.P16898736906444943901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233705 (A000124 (n + 1) + 1).toNat

end

end A233707.P16898736906444943901

/-!
# A233708: 

The programs for A233708, there is no canonical definition to state claims against.
-/

/-! ## A233708.P646061494228923916

`A233705(A167499(n)+n)`
-/

namespace A233708.P646061494228923916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233705 (A167499 n + (n : ℤ)).toNat

end

end A233708.P646061494228923916

/-! ## A233708.P13437900968518775339

`A233705(A133263(n+2)+1)`
-/

namespace A233708.P13437900968518775339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233705 (A133263 (n + 2) + 1).toNat

end

end A233708.P13437900968518775339

/-!
# A233709: Number of (n+1)X(n+1) 0..4 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 14.

The programs for A233709, there is no canonical definition to state claims against.
-/

/-! ## A233709.P7152850945596877349

`A233717((n+1)²+n²)`
-/

namespace A233709.P7152850945596877349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233717 ((n + 1) ^ 2 + n ^ 2)

end

end A233709.P7152850945596877349

/-!
# A233710: Number of (n+1) X (1+1) 0..4 arrays with every 2 X 2 subblock having the sum of the squares of the edge differences equal to 14.

The programs for A233710, there is no canonical definition to state claims against.
-/

/-! ## A233710.P13607926507468530774

`A233717(∑[n]+1)`
-/

namespace A233710.P13607926507468530774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233717 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233710.P13607926507468530774

/-! ## A233710.P6991848149893179532

`lcm(2, A233717(A000124(n)))`
-/

namespace A233710.P6991848149893179532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233717 (A000124 n).toNat)

end

end A233710.P6991848149893179532

/-! ## A233710.P7169800786018472545

`record[A010054(n)*A233717(n+1)]`
-/

namespace A233710.P7169800786018472545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233710.P7169800786018472545

/-! ## A233710.P1457444503221685669

`record[root(A233717(n+1), A053123(n))]`
-/

namespace A233710.P1457444503221685669
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233717 (n + 1) : ℝ) ^ (1 / (A053123 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233710.P1457444503221685669

/-! ## A233710.P2074391528257874296

`record[A233717(n+1)/A057004(n+1)]`
-/

namespace A233710.P2074391528257874296
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233717 (n + 1) : ℚ) / (A057004 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233710.P2074391528257874296

/-!
# A233711: Number of (n+1)X(2+1) 0..4 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 14.

The programs for A233711, there is no canonical definition to state claims against.
-/

/-! ## A233711.P13136989944990877473

`A233717(∑[n+1]+2)`
-/

namespace A233711.P13136989944990877473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233717 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233711.P13136989944990877473

/-! ## A233711.P8383989686447559272

`record[root(A233717(n+2), A053123(n))]`
-/

namespace A233711.P8383989686447559272
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233717 (n + 2) : ℝ) ^ (1 / (A053123 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233711.P8383989686447559272

/-! ## A233711.P12810662472771892720

`and(1-4/2, A233717(A278512(2*(n+2))))`
-/

namespace A233711.P12810662472771892720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (1 - (4 : ℚ) / 2)) (A233717 (A278512 (2 * (n + 2))).toNat)

end

end A233711.P12810662472771892720

/-! ## A233711.P13371759423636658523

`A233717(A278512(2*(n+2)))%A016930(n+1)`
-/

namespace A233711.P13371759423636658523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233717 (A278512 (2 * (n + 2))).toNat) (A016930 (n + 1))

end

end A233711.P13371759423636658523

/-! ## A233711.P15319541282801169591

`record[A233717(Δ[A003453(n+5)])]`
-/

namespace A233711.P15319541282801169591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233717 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233711.P15319541282801169591

/-!
# A233712: Number of (n+1)X(3+1) 0..4 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 14.

The programs for A233712, there is no canonical definition to state claims against.
-/

/-! ## A233712.P17304726750217199557

`A233717(∑[n+2]+4)`
-/

namespace A233712.P17304726750217199557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233717 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233712.P17304726750217199557

/-! ## A233712.P13428603817616330384

`lcm(2, A233717(A167614(n+1)))`
-/

namespace A233712.P13428603817616330384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233717 (A167614 (n + 1)).toNat)

end

end A233712.P13428603817616330384

/-! ## A233712.P10466050464535797082

`A335453(n+1)+A233717(A167614(n+1))`
-/

namespace A233712.P10466050464535797082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335453 (n + 1) + A233717 (A167614 (n + 1)).toNat

end

end A233712.P10466050464535797082

/-! ## A233712.P10384872321922136414

`A233717(A167614(n+1))*A336468(n+1)`
-/

namespace A233712.P10384872321922136414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233717 (A167614 (n + 1)).toNat * A336468 (n + 1)

end

end A233712.P10384872321922136414

/-! ## A233712.P3313984006331344581

`record[A233717(A167614(∑{e}[n+1, #]+1))]`
-/

namespace A233712.P3313984006331344581
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233717 (A167614 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233712.P3313984006331344581

/-!
# A233713: Number of (n+1) X (4+1) 0..4 arrays with every 2 X 2 subblock having the sum of the squares of the edge differences equal to 14.

The programs for A233713, there is no canonical definition to state claims against.
-/

/-! ## A233713.P9467098434673011109

`A233717(A374004(n+1))`
-/

namespace A233713.P9467098434673011109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233717 (A374004 (n + 1)).toNat

end

end A233713.P9467098434673011109

/-! ## A233713.P16079944825482535763

`A233717(A052905(n)+9)`
-/

namespace A233713.P16079944825482535763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233717 (A052905 n + 9).toNat

end

end A233713.P16079944825482535763

/-! ## A233713.P8010492310711790881

`A233717(A055999(n)+10)`
-/

namespace A233713.P8010492310711790881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233717 (A055999 n + 10).toNat

end

end A233713.P8010492310711790881

/-! ## A233713.P7946004875834285944

`A233717(A167614(n+2)+1)`
-/

namespace A233713.P7946004875834285944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233717 (A167614 (n + 2) + 1).toNat

end

end A233713.P7946004875834285944

/-! ## A233713.P4415034332507855356

`A233717(Δ[A264443(n)-n²])`
-/

namespace A233713.P4415034332507855356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233717 (f1 (n + 1) - f1 n).toNat

end

end A233713.P4415034332507855356

/-!
# A233714: Number of (n+1) X (5+1) 0..4 arrays with every 2 X 2 subblock having the sum of the squares of the edge differences equal to 14.

The programs for A233714, there is no canonical definition to state claims against.
-/

/-! ## A233714.P7589859310069481073

`A233717(A374005(n+1))`
-/

namespace A233714.P7589859310069481073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233717 (A374005 (n + 1)).toNat

end

end A233714.P7589859310069481073

/-! ## A233714.P12332603656179482472

`A233717(A155212(n)+13)`
-/

namespace A233714.P12332603656179482472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233717 (A155212 n + 13).toNat

end

end A233714.P12332603656179482472

/-! ## A233714.P12842741848640368933

`A233717(A056000(n)+15)`
-/

namespace A233714.P12842741848640368933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233717 (A056000 n + 15).toNat

end

end A233714.P12842741848640368933

/-! ## A233714.P11236378235423065813

`A233717(eq[6, A131818(n+1)])`
-/

namespace A233714.P11236378235423065813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233714.P11236378235423065813

/-! ## A233714.P1192955641212119978

`A233717(eq[4, A025581(n)]-(n-5))`
-/

namespace A233714.P1192955641212119978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233717 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - ((n : ℤ) - 5)).toNat

end

end A233714.P1192955641212119978

/-!
# A233715: Number of (n+1)X(6+1) 0..4 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 14.

The programs for A233715, there is no canonical definition to state claims against.
-/

/-! ## A233715.P11766757396941902865

`A233717(A374007(n+1))`
-/

namespace A233715.P11766757396941902865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233717 (A374007 (n + 1)).toNat

end

end A233715.P11766757396941902865

/-! ## A233715.P13996648283877355136

`A233717(eq[7, A131818(n+1)])`
-/

namespace A233715.P13996648283877355136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233715.P13996648283877355136

/-! ## A233715.P3540804735487384574

`A233717(A052905(n+3))`
-/

namespace A233715.P3540804735487384574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233717 (A052905 (n + 3)).toNat

end

end A233715.P3540804735487384574

/-! ## A233715.P11684211563081660138

`A233717(A056119(n)+16)`
-/

namespace A233715.P11684211563081660138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233717 (A056119 n + 16).toNat

end

end A233715.P11684211563081660138

/-! ## A233715.P2274749761092017090

`A233717(eq[3, A219347(n)])`
-/

namespace A233715.P2274749761092017090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233715.P2274749761092017090

/-!
# A233716: Number of (n+1)X(7+1) 0..4 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 14.

The programs for A233716, there is no canonical definition to state claims against.
-/

/-! ## A233716.P3646017581441051283

`A233717(A374008(n+1))`
-/

namespace A233716.P3646017581441051283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233717 (A374008 (n + 1)).toNat

end

end A233716.P3646017581441051283

/-! ## A233716.P16063040903134297312

`A233717(eq[6, A193592(n)])`
-/

namespace A233716.P16063040903134297312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233716.P16063040903134297312

/-! ## A233716.P14888599854089317538

`A233717(eq[2, A219347(n)-2])`
-/

namespace A233716.P14888599854089317538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233716.P14888599854089317538

/-!
# A233718: Number of (n+1)X(1+1) 0..7 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 26.

The programs for A233718, there is no canonical definition to state claims against.
-/

/-! ## A233718.P12311171128293204380

`A233724(∑[n]+1)`
-/

namespace A233718.P12311171128293204380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233724 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233718.P12311171128293204380

/-! ## A233718.P8589206479718037264

`lcm(2, A233724(A000124(n)))`
-/

namespace A233718.P8589206479718037264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233724 (A000124 n).toNat)

end

end A233718.P8589206479718037264

/-! ## A233718.P13427853844202585043

`record[A233724(A114091(n+1))]`
-/

namespace A233718.P13427853844202585043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233724 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233718.P13427853844202585043

/-! ## A233718.P11603717956651913149

`record[A233724(A249742(n+1))]`
-/

namespace A233718.P11603717956651913149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233724 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233718.P11603717956651913149

/-! ## A233718.P7767291931312565634

`record[A233724(A286234(n+1))]`
-/

namespace A233718.P7767291931312565634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233724 (A286234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233718.P7767291931312565634

/-!
# A233719: Number of (n+1) X (2+1) 0..7 arrays with every 2 X 2 subblock having the sum of the squares of the edge differences equal to 26.

The programs for A233719, there is no canonical definition to state claims against.
-/

/-! ## A233719.P6804826312148610950

`A233724(∑[n+1]+2)`
-/

namespace A233719.P6804826312148610950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233724 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233719.P6804826312148610950

/-! ## A233719.P10394030074377727945

`record[A233724(A114091(n+1)+1)]`
-/

namespace A233719.P10394030074377727945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233724 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233719.P10394030074377727945

/-! ## A233719.P10855867189844152871

`record[A233724(Δ[A003453(n+5)])]`
-/

namespace A233719.P10855867189844152871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233724 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233719.P10855867189844152871

/-! ## A233719.P4891555953177986472

`record[A233724(A249742(2*(n+1))-1)]`
-/

namespace A233719.P4891555953177986472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233724 (A249742 (2 * (n + 1)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233719.P4891555953177986472

/-!
# A233720: Number of (n+1)X(3+1) 0..7 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 26.

The programs for A233720, there is no canonical definition to state claims against.
-/

/-! ## A233720.P9746065837461803189

`A233724(∑[n+2]+4)`
-/

namespace A233720.P9746065837461803189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233724 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233720.P9746065837461803189

/-! ## A233720.P4621157850482509634

`lcm(2, A233724(A167614(n+1)))`
-/

namespace A233720.P4621157850482509634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233724 (A167614 (n + 1)).toNat)

end

end A233720.P4621157850482509634

/-! ## A233720.P2065985695864125

`A233724(A167614(n+1))+A061858(n)`
-/

namespace A233720.P2065985695864125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233724 (A167614 (n + 1)).toNat + A061858 n

end

end A233720.P2065985695864125

/-! ## A233720.P8893861326969821924

`A233724(A167614(n+1))+A086080(n)`
-/

namespace A233720.P8893861326969821924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233724 (A167614 (n + 1)).toNat + A086080 n

end

end A233720.P8893861326969821924

/-! ## A233720.P1557065796457163738

`A233724(A167614(n+1))+A185284(n)`
-/

namespace A233720.P1557065796457163738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233724 (A167614 (n + 1)).toNat + A185284 n

end

end A233720.P1557065796457163738

/-!
# A233721: Number of (n+1)X(4+1) 0..7 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 26.

The programs for A233721, there is no canonical definition to state claims against.
-/

/-! ## A233721.P9048062917271979939

`A233724(A374004(n+1))`
-/

namespace A233721.P9048062917271979939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233724 (A374004 (n + 1)).toNat

end

end A233721.P9048062917271979939

/-! ## A233721.P15666727982817464142

`A233724(A141214(n)+7)`
-/

namespace A233721.P15666727982817464142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233724 (A141214 n + 7).toNat

end

end A233721.P15666727982817464142

/-! ## A233721.P17091934826759653767

`A233724(A052905(n)+9)`
-/

namespace A233721.P17091934826759653767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233724 (A052905 n + 9).toNat

end

end A233721.P17091934826759653767

/-! ## A233721.P12151667394704522955

`A233724(A055999(n)+10)`
-/

namespace A233721.P12151667394704522955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233724 (A055999 n + 10).toNat

end

end A233721.P12151667394704522955

/-! ## A233721.P16239334818532770707

`A233724(eq[5, A066657(n)])`
-/

namespace A233721.P16239334818532770707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233724 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233721.P16239334818532770707

/-!
# A233722: Number of (n+1)X(5+1) 0..7 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 26.

The programs for A233722, there is no canonical definition to state claims against.
-/

/-! ## A233722.P9839384813758526886

`A233724(A374005(n+1))`
-/

namespace A233722.P9839384813758526886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233724 (A374005 (n + 1)).toNat

end

end A233722.P9839384813758526886

/-! ## A233722.P12505778292433058642

`A233724(A155212(n)+13)`
-/

namespace A233722.P12505778292433058642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233724 (A155212 n + 13).toNat

end

end A233722.P12505778292433058642

/-! ## A233722.P376633965554923536

`A233724(A056000(n)+15)`
-/

namespace A233722.P376633965554923536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233724 (A056000 n + 15).toNat

end

end A233722.P376633965554923536

/-! ## A233722.P8697977436824838363

`A233724(eq[7, A066657(n)])`
-/

namespace A233722.P8697977436824838363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233724 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233722.P8697977436824838363

/-! ## A233722.P18412625325266239716

`A233724(eq[6, A131818(n+1)])`
-/

namespace A233722.P18412625325266239716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233724 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233722.P18412625325266239716

/-!
# A233723: Number of (n+1)X(6+1) 0..7 arrays with every 2X2 subblock having the sum of the squares of the edge differences equal to 26.

The programs for A233723, there is no canonical definition to state claims against.
-/

/-! ## A233723.P7092459930908516738

`A233724(A374007(n+1))`
-/

namespace A233723.P7092459930908516738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233724 (A374007 (n + 1)).toNat

end

end A233723.P7092459930908516738

/-! ## A233723.P12447601778917810252

`A233724(A166136(n+4))`
-/

namespace A233723.P12447601778917810252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233724 (A166136 (n + 4)).toNat

end

end A233723.P12447601778917810252

/-! ## A233723.P7788732170184482832

`A233724(A167614(n+4)+3)`
-/

namespace A233723.P7788732170184482832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233724 (A167614 (n + 4) + 3).toNat

end

end A233723.P7788732170184482832

/-! ## A233723.P6565659087588060807

`A233724(A056000(n+1)+16)`
-/

namespace A233723.P6565659087588060807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233724 (A056000 (n + 1) + 16).toNat

end

end A233723.P6565659087588060807

/-!
# A233725: Number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 6 and no adjacent elements equal.

The programs for A233725, there is no canonical definition to state claims against.
-/

/-! ## A233725.P5228083902718867429

`A233733(∑[4*n]+1)`
-/

namespace A233725.P5228083902718867429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233725.P5228083902718867429

/-! ## A233725.P17145132651758816985

`lcm(2, A233733(A001844(n)))`
-/

namespace A233725.P17145132651758816985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233733 (A001844 n).toNat)

end

end A233725.P17145132651758816985

/-! ## A233725.P2456769342053592114

`record[gcd(A114327(n), A233733(n+1))]`
-/

namespace A233725.P2456769342053592114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A233733 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233725.P2456769342053592114

/-! ## A233725.P13696915361422019342

`A233733(A001844(n))+A151795(n)`
-/

namespace A233725.P13696915361422019342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (A001844 n).toNat + A151795 n

end

end A233725.P13696915361422019342

/-! ## A233725.P12844442832402916508

`A233733(A001844(n))+A035322(n+1)`
-/

namespace A233725.P12844442832402916508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (A001844 n).toNat + A035322 (n + 1)

end

end A233725.P12844442832402916508

/-!
# A233726: Number of (n+1) X (1+1) 0..3 arrays with every 2 X 2 subblock having the sum of the absolute values of the edge differences equal to 6 and no adjacent elements equal.

The programs for A233726, the canonical program `A233726.P2515852289689003742` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233726 has offset 1).

The definition of A233726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233726.P2515852289689003742

`ogf((40+28x-88x^2-24x^3)/(1-3x-5x^2+7x^3+2x^4))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A233726

/-- `ogf((40+28x-88x^2-24x^3)/(1-3x-5x^2+7x^3+2x^4))` -/
def P2515852289689003742.Spec : Prop :=
  ∀ n, P2515852289689003742.a n = A233726 (n + 1)

theorem P2515852289689003742.correct : P2515852289689003742.Spec := by
  intro n
  simp only [A233726, Nat.add_sub_cancel]

end A233726

/-! ## A233726.P17929668908836012636

`A233733(∑[n]+1)`
-/

namespace A233726.P17929668908836012636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233726.P17929668908836012636

namespace A233726

/-- `A233733(∑[n]+1)` -/
def P17929668908836012636.Spec : Prop :=
  ∀ n, P17929668908836012636.a n = A233726 (n + 1)

end A233726

/-! ## A233726.P4340659784877631712

`lcm(2, A233733(A000124(n)))`
-/

namespace A233726.P4340659784877631712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233733 (A000124 n).toNat)

end

end A233726.P4340659784877631712

namespace A233726

/-- `lcm(2, A233733(A000124(n)))` -/
def P4340659784877631712.Spec : Prop :=
  ∀ n, (P4340659784877631712.a n : ℤ) = A233726 (n + 1)

end A233726

/-! ## A233726.P7281239619901781025

`record[A010054(n)*A233733(n+1)]`
-/

namespace A233726.P7281239619901781025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233726.P7281239619901781025

namespace A233726

/-- `record[A010054(n)*A233733(n+1)]` -/
def P7281239619901781025.Spec : Prop :=
  ∀ n, P7281239619901781025.a n = A233726 (n + 1)

end A233726

/-! ## A233726.P6247486957044778630

`record[gcd(A002262(n), A233733(n+1))]`
-/

namespace A233726.P6247486957044778630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A233733 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233726.P6247486957044778630

namespace A233726

/-- `record[gcd(A002262(n), A233733(n+1))]` -/
def P6247486957044778630.Spec : Prop :=
  ∀ n, (P6247486957044778630.a n : ℤ) = A233726 (n + 1)

end A233726

/-!
# A233727: Number of (n+1)X(2+1) 0..3 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 6 and no adjacent elements equal.

The programs for A233727, there is no canonical definition to state claims against.
-/

/-! ## A233727.P7740074244644062327

`A233733(∑[n+1]+2)`
-/

namespace A233727.P7740074244644062327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233727.P7740074244644062327

/-! ## A233727.P2473453051673259909

`record[A010054(n)*A233733(n+2)]`
-/

namespace A233727.P2473453051673259909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233733 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233727.P2473453051673259909

/-! ## A233727.P9146508428668916124

`record[gcd(A002262(n), A233733(n+2))]`
-/

namespace A233727.P9146508428668916124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A233733 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233727.P9146508428668916124

/-! ## A233727.P6252653981568505055

`record[A233733(A133263(∑[(-1)^(n%3)]))]`
-/

namespace A233727.P6252653981568505055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (A133263 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233727.P6252653981568505055

/-! ## A233727.P14188222505590943827

`record[A233733(Δ[A003453(n+5)])]`
-/

namespace A233727.P14188222505590943827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233727.P14188222505590943827

/-!
# A233728: Number of (n+1)X(3+1) 0..3 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 6 and no adjacent elements equal.

The programs for A233728, there is no canonical definition to state claims against.
-/

/-! ## A233728.P4709244390982740466

`A233733(∑[n+2]+4)`
-/

namespace A233728.P4709244390982740466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233728.P4709244390982740466

/-! ## A233728.P1631972701900343624

`lcm(2, A233733(A167614(n+1)))`
-/

namespace A233728.P1631972701900343624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233733 (A167614 (n + 1)).toNat)

end

end A233728.P1631972701900343624

/-! ## A233728.P11091787662966420937

`A233733(A167614(n+1))+A137579(n)`
-/

namespace A233728.P11091787662966420937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (A167614 (n + 1)).toNat + A137579 n

end

end A233728.P11091787662966420937

/-! ## A233728.P10632690338289656021

`A233733(A167614(n+1))+A185037(n)`
-/

namespace A233728.P10632690338289656021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (A167614 (n + 1)).toNat + A185037 n

end

end A233728.P10632690338289656021

/-! ## A233728.P18263145381757867925

`A233733(A167614(n+1))+A034550(n+1)`
-/

namespace A233728.P18263145381757867925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (A167614 (n + 1)).toNat + A034550 (n + 1)

end

end A233728.P18263145381757867925

/-!
# A233729: Number of (n+1)X(4+1) 0..3 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 6 and no adjacent elements equal.

The programs for A233729, there is no canonical definition to state claims against.
-/

/-! ## A233729.P14556615890745447834

`A233733(A374004(n+1))`
-/

namespace A233729.P14556615890745447834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (A374004 (n + 1)).toNat

end

end A233729.P14556615890745447834

/-! ## A233729.P3117858420034139528

`A233733(A141214(n)+7)`
-/

namespace A233729.P3117858420034139528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (A141214 n + 7).toNat

end

end A233729.P3117858420034139528

/-! ## A233729.P1378402022258655027

`A233733(A052905(n)+9)`
-/

namespace A233729.P1378402022258655027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (A052905 n + 9).toNat

end

end A233729.P1378402022258655027

/-! ## A233729.P9055178660026445279

`A233733(A167614(n+2)+1)`
-/

namespace A233729.P9055178660026445279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (A167614 (n + 2) + 1).toNat

end

end A233729.P9055178660026445279

/-! ## A233729.P1210906100769628851

`A233733(A055998(n+1)+7)`
-/

namespace A233729.P1210906100769628851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (A055998 (n + 1) + 7).toNat

end

end A233729.P1210906100769628851

/-!
# A233730: Number of (n+1)X(5+1) 0..3 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 6 and no adjacent elements equal.

The programs for A233730, there is no canonical definition to state claims against.
-/

/-! ## A233730.P9951304396878521377

`A233733(A374005(n+1))`
-/

namespace A233730.P9951304396878521377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (A374005 (n + 1)).toNat

end

end A233730.P9951304396878521377

/-! ## A233730.P17435811999830661649

`A233733(A167499(n+3))`
-/

namespace A233730.P17435811999830661649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (A167499 (n + 3)).toNat

end

end A233730.P17435811999830661649

/-! ## A233730.P2706138690216688296

`A233733(A056000(n)+15)`
-/

namespace A233730.P2706138690216688296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (A056000 n + 15).toNat

end

end A233730.P2706138690216688296

/-! ## A233730.P353232216719031288

`A233733(A038722(Δ[A264443(n)]))`
-/

namespace A233730.P353232216719031288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A233730.P353232216719031288

/-! ## A233730.P16214948635048208740

`A233733(Δ[A264443(n)])`
-/

namespace A233730.P16214948635048208740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (f1 (n + 1) - f1 n).toNat

end

end A233730.P16214948635048208740

/-!
# A233731: Number of (n+1)X(6+1) 0..3 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 6 and no adjacent elements equal.

The programs for A233731, there is no canonical definition to state claims against.
-/

/-! ## A233731.P16082383219679121815

`A233733(A374007(n+1))`
-/

namespace A233731.P16082383219679121815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (A374007 (n + 1)).toNat

end

end A233731.P16082383219679121815

/-! ## A233731.P10858594190031206882

`A233733(A000217(n+5)+6)`
-/

namespace A233731.P10858594190031206882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (A000217 (n + 5) + 6).toNat

end

end A233731.P10858594190031206882

/-! ## A233731.P16879793993894301167

`A233733(eq[7, A131818(n+1)])`
-/

namespace A233731.P16879793993894301167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233731.P16879793993894301167

/-! ## A233731.P6034064173579136576

`A233733(eq[6, A025581(n)]-2*n)`
-/

namespace A233731.P6034064173579136576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A233731.P6034064173579136576

/-! ## A233731.P15744944586670938308

`A233733(A052905(n+3))`
-/

namespace A233731.P15744944586670938308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (A052905 (n + 3)).toNat

end

end A233731.P15744944586670938308

/-!
# A233732: Number of (n+1)X(7+1) 0..3 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 6 and no adjacent elements equal.

The programs for A233732, there is no canonical definition to state claims against.
-/

/-! ## A233732.P2954133139513498652

`A233733(A374008(n+1))`
-/

namespace A233732.P2954133139513498652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (A374008 (n + 1)).toNat

end

end A233732.P2954133139513498652

/-! ## A233732.P43401020607334058

`A233733(A141214(n+3)+10)`
-/

namespace A233732.P43401020607334058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (A141214 (n + 3) + 10).toNat

end

end A233732.P43401020607334058

/-! ## A233732.P10036430756387408764

`A233733(eq[8, A131818(n+1)])`
-/

namespace A233732.P10036430756387408764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233732.P10036430756387408764

/-! ## A233732.P3618770036568071964

`A233733(eq[4, A219347(n)])`
-/

namespace A233732.P3618770036568071964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233732.P3618770036568071964

/-! ## A233732.P8761072528484507844

`A233733(eq[6, A193592(n)])`
-/

namespace A233732.P8761072528484507844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233732.P8761072528484507844

/-!
# A233734: Central terms of triangles A019538 and A090582.

The programs for A233734, there is no canonical definition to state claims against.
-/

/-! ## A233734.P9443075271952331602

`A129506(n+1)*(n+1)!`
-/

namespace A233734.P9443075271952331602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129506 (n + 1) * (Nat.factorial (n + 1) : ℤ)

end

end A233734.P9443075271952331602

/-! ## A233734.P5140375287131394276

`(n+1)*A185157(n+1)`
-/

namespace A233734.P5140375287131394276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A185157 (n + 1)

end

end A233734.P5140375287131394276

/-! ## A233734.P16307224748116888214

`Δ[A007489(n)]*A129506(n+1)`
-/

namespace A233734.P16307224748116888214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A129506 (n + 1)

end

end A233734.P16307224748116888214

/-! ## A233734.P13159115084602805586

`A000142(n+1)*A129506(n+1)`
-/

namespace A233734.P13159115084602805586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A129506 (n + 1)

end

end A233734.P13159115084602805586

/-! ## A233734.P973172408175800669

`A000142(n+1)*A106800(A056220(n+1))`
-/

namespace A233734.P973172408175800669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A106800 (A056220 (n + 1)).toNat

end

end A233734.P973172408175800669

/-!
# A233736: a(n) = 8*binomial(5*n + 8, n)/(5*n + 8).

The programs for A233736, the canonical program `A233736.P17789680142832867079` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233736 has offset 0).

The definition of A233736 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A233736.anchor (n : ℕ) : (A233736 n : ℚ) = (8 * Nat.choose (5 * n + 8) n : ℚ) / (5 * n + 8 : ℚ)` in `Proof.A233.A233736`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A233736.P17789680142832867079

`8*C(5*n+8, n)/(5*n+8)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A233736

/-- `8*C(5*n+8, n)/(5*n+8)` -/
def P17789680142832867079.Spec : Prop :=
  ∀ n, P17789680142832867079.a n = (A233736 n : ℚ)

end A233736

/-! ## A233736.P15842428747798432290

`A118971(n+1)-A118970(n+1)`
-/

namespace A233736.P15842428747798432290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118971 (n + 1) - A118970 (n + 1)

end

end A233736.P15842428747798432290

namespace A233736

/-- `A118971(n+1)-A118970(n+1)` -/
def P15842428747798432290.Spec : Prop :=
  ∀ n, P15842428747798432290.a n = A233736 n

end A233736

/-! ## A233736.P599796316070491607

`A118971(C(n+1, n))%A118970(n+1)`
-/

namespace A233736.P599796316070491607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118971 (Nat.choose (n + 1) n)) (A118970 (n + 1))

end

end A233736.P599796316070491607

namespace A233736

/-- `A118971(C(n+1, n))%A118970(n+1)` -/
def P599796316070491607.Spec : Prop :=
  ∀ n, P599796316070491607.a n = A233736 n

end A233736

/-! ## A233736.P15094673636974283283

`A118971(A000027(n+1))%A118970(n+1)`
-/

namespace A233736.P15094673636974283283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118971 (A000027 (n + 1)).toNat) (A118970 (n + 1))

end

end A233736.P15094673636974283283

namespace A233736

/-- `A118971(A000027(n+1))%A118970(n+1)` -/
def P15094673636974283283.Spec : Prop :=
  ∀ n, P15094673636974283283.a n = A233736 n

end A233736

/-! ## A233736.P1216338051143615176

`A118971(A028310(n+1))%A118970(n+1)`
-/

namespace A233736.P1216338051143615176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118971 (A028310 (n + 1)).toNat) (A118970 (n + 1))

end

end A233736.P1216338051143615176

namespace A233736

/-- `A118971(A028310(n+1))%A118970(n+1)` -/
def P1216338051143615176.Spec : Prop :=
  ∀ n, P1216338051143615176.a n = A233736 n

end A233736

/-! ## A233736.P9552184492129675691

`A118971(n+1)-(A233669(n)+A118969(n+1))`
-/

namespace A233736.P9552184492129675691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118971 (n + 1) - (A233669 n + A118969 (n + 1))

end

end A233736.P9552184492129675691

namespace A233736

/-- `A118971(n+1)-(A233669(n)+A118969(n+1))` -/
def P9552184492129675691.Spec : Prop :=
  ∀ n, P9552184492129675691.a n = A233736 n

end A233736

/-!
# A233737: a(n) = 9*binomial(5*n+9, n)/(5*n+9).

The programs for A233737, the canonical program `A233737.P11445290408204490189` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233737 has offset 0).

The definition of A233737 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A233737.anchor (n : ℕ) : (A233737 n : ℚ) = (9 * Nat.choose (5 * n + 9) n : ℚ) / (5 * n + 9 : ℚ)` in `Proof.A233.A233737`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A233737.P11445290408204490189

`9*C(5*n+9, n)/(5*n+9)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A233737

/-- `9*C(5*n+9, n)/(5*n+9)` -/
def P11445290408204490189.Spec : Prop :=
  ∀ n, P11445290408204490189.a n = (A233737 n : ℚ)

end A233737

/-! ## A233737.P9302023409282438920

`A002294(n+2)-A118971(n+1)`
-/

namespace A233737.P9302023409282438920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002294 (n + 2) - A118971 (n + 1)

end

end A233737.P9302023409282438920

namespace A233737

/-- `A002294(n+2)-A118971(n+1)` -/
def P9302023409282438920.Spec : Prop :=
  ∀ n, P9302023409282438920.a n = A233737 n

end A233737

/-! ## A233737.P6212704748346111541

`A143546(2*(n+2))-A118971(n+1)`
-/

namespace A233737.P6212704748346111541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143546 (2 * (n + 2)) - A118971 (n + 1)

end

end A233737.P6212704748346111541

namespace A233737

/-- `A143546(2*(n+2))-A118971(n+1)` -/
def P6212704748346111541.Spec : Prop :=
  ∀ n, P6212704748346111541.a n = A233737 n

end A233737

/-! ## A233737.P13273831815615276188

`A002294(n+2)%A118971(A028310(n+1))`
-/

namespace A233737.P13273831815615276188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002294 (n + 2)) (A118971 (A028310 (n + 1)).toNat)

end

end A233737.P13273831815615276188

namespace A233737

/-- `A002294(n+2)%A118971(A028310(n+1))` -/
def P13273831815615276188.Spec : Prop :=
  ∀ n, P13273831815615276188.a n = A233737 n

end A233737

/-! ## A233737.P10352011525020799634

`A233668(n+1)-(A233738(n)+A118971(n+1))`
-/

namespace A233737.P10352011525020799634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233668 (n + 1) - (A233738 n + A118971 (n + 1))

end

end A233737.P10352011525020799634

namespace A233737

/-- `A233668(n+1)-(A233738(n)+A118971(n+1))` -/
def P10352011525020799634.Spec : Prop :=
  ∀ n, P10352011525020799634.a n = A233737 n

end A233737

/-! ## A233737.P13273016586332459103

`A143546(2*(n+2))-(A233736(n)+A118970(n+1))`
-/

namespace A233737.P13273016586332459103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143546 (2 * (n + 2)) - (A233736 n + A118970 (n + 1))

end

end A233737.P13273016586332459103

namespace A233737

/-- `A143546(2*(n+2))-(A233736(n)+A118970(n+1))` -/
def P13273016586332459103.Spec : Prop :=
  ∀ n, P13273016586332459103.a n = A233737 n

end A233737

/-!
# A233738: a(n) = 2*binomial(5*n+10, n)/(n+2).

The programs for A233738, the canonical program `A233738.P7215724747704707185` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233738 has offset 0).

The definition of A233738 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A233738.P7215724747704707185

`2*A004344(n)/(n+2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A233738

/-- `2*A004344(n)/(n+2)` -/
def P7215724747704707185.Spec : Prop :=
  ∀ n, P7215724747704707185.a n = (A233738 n : ℚ)

end A233738

/-! ## A233738.P16612983836083353407

`2*C(5*n+10, n)/(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A233738.P16612983836083353407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (5 * n + 10) n : ℚ) / (n + 2 : ℚ)

end

end A233738.P16612983836083353407

namespace A233738

/-- `2*C(5*n+10, n)/(n+2)` -/
def P16612983836083353407.Spec : Prop :=
  ∀ n, P16612983836083353407.a n = (A233738 n : ℚ)

end A233738

/-! ## A233738.P16702361621842256223

`A233668(n+1)-A002294(n+2)`
-/

namespace A233738.P16702361621842256223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233668 (n + 1) - A002294 (n + 2)

end

end A233738.P16702361621842256223

namespace A233738

/-- `A233668(n+1)-A002294(n+2)` -/
def P16702361621842256223.Spec : Prop :=
  ∀ n, P16702361621842256223.a n = A233738 n

end A233738

/-! ## A233738.P2587359782075186124

`A118969(n+2)%A002294(n+2)`
-/

namespace A233738.P2587359782075186124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118969 (n + 2)) (A002294 (n + 2))

end

end A233738.P2587359782075186124

namespace A233738

/-- `A118969(n+2)%A002294(n+2)` -/
def P2587359782075186124.Spec : Prop :=
  ∀ n, P2587359782075186124.a n = A233738 n

end A233738

/-! ## A233738.P13123955649024821384

`(n+1)*record[A002294(n)/A005408(n)]`
-/

namespace A233738.P13123955649024821384
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002294 n : ℚ) / (A005408 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233738.P13123955649024821384

namespace A233738

/-- `(n+1)*record[A002294(n)/A005408(n)]` -/
def P13123955649024821384.Spec : Prop :=
  ∀ n, P13123955649024821384.a n = (A233738 n : ℚ)

end A233738

/-! ## A233738.P13779185068722801161

`A233668(n+1)-(A233737(n)+A118971(n+1))`
-/

namespace A233738.P13779185068722801161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233668 (n + 1) - (A233737 n + A118971 (n + 1))

end

end A233738.P13779185068722801161

namespace A233738

/-- `A233668(n+1)-(A233737(n)+A118971(n+1))` -/
def P13779185068722801161.Spec : Prop :=
  ∀ n, P13779185068722801161.a n = A233738 n

end A233738

/-!
# A233739: R(n) - prime(2n), where R(n) is the n-th Ramanujan prime and prime(n) is the n-th prime.

The programs for A233739, there is no canonical definition to state claims against.
-/

/-! ## A233739.P13652305793884725143

`A104272(n+1)-A000040(2*(n+1))`
-/

namespace A233739.P13652305793884725143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1) - A000040 (2 * (n + 1))

end

end A233739.P13652305793884725143

/-! ## A233739.P16127503491864686768

`A104272(n+1)-A031215(n+1)`
-/

namespace A233739.P16127503491864686768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1) - A031215 (n + 1)

end

end A233739.P16127503491864686768

/-! ## A233739.P14916206679735007089

`A104272(n+1)-(A072473(n+1)+A000040(n+1))`
-/

namespace A233739.P14916206679735007089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1) - (A072473 (n + 1) + A000040 (n + 1))

end

end A233739.P14916206679735007089

/-! ## A233739.P4560222554199347624

`A104272(n+1)-(A141101(n+1)+A005843(n+1))`
-/

namespace A233739.P4560222554199347624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1) - (A141101 (n + 1) + A005843 (n + 1))

end

end A233739.P4560222554199347624

/-! ## A233739.P9841604548269392655

`A104272(n+1)-(A100484(n+1)+A066066(n+1))`
-/

namespace A233739.P9841604548269392655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1) - (A100484 (n + 1) + A066066 (n + 1))

end

end A233739.P9841604548269392655

/-! ## A233739.P1607585929056307654

`A104272(n+1)-A065091(2*n+1)`
-/

namespace A233739.P1607585929056307654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1) - A065091 (2 * n + 1)

end

end A233739.P1607585929056307654

/-! ## A233739.P10005151685141090886

`A104272(n+1)-A297002(A000040(n+1))`
-/

namespace A233739.P10005151685141090886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1) - A297002 (A000040 (n + 1)).toNat

end

end A233739.P10005151685141090886

/-! ## A233739.P15296133116540311468

`A104272(n+1)+A161463(n+1)-A105720(n+1)`
-/

namespace A233739.P15296133116540311468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1) + (A161463 (n + 1) - A105720 (n + 1))

end

end A233739.P15296133116540311468

/-!
# A233740: a(n) = A233739(n)/2.

The programs for A233740, there is no canonical definition to state claims against.
-/

/-! ## A233740.P13135619930193202154

`A233739(n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A233740.P13135619930193202154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233739 (n + 2) : ℚ) / 2

end

end A233740.P13135619930193202154

/-! ## A233740.P16975609182513779679

`a(n-1)*ratio[A233739(n+1)]` with `a(0)=2`
-/

namespace A233740.P16975609182513779679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233739 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A233740.P16975609182513779679

/-! ## A233740.P677342046993315735

`(A104272(n+2)-A031215(n+2))/2`
-/

namespace A233740.P677342046993315735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104272 (n + 2) - A031215 (n + 2) : ℚ) / 2

end

end A233740.P677342046993315735

/-! ## A233740.P15030699554242353393

`A001281(A233739(n+2))`
-/

namespace A233740.P15030699554242353393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A233739 (n + 2)).toNat

end

end A233740.P15030699554242353393

/-! ## A233740.P10714274079149570407

`A004525(abs(A233739(n+2)))`
-/

namespace A233740.P10714274079149570407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 |A233739 (n + 2)|.toNat

end

end A233740.P10714274079149570407

/-! ## A233740.P14664994172574803635

`A004526(abs(A233739(n+2)))`
-/

namespace A233740.P14664994172574803635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 |A233739 (n + 2)|.toNat

end

end A233740.P14664994172574803635

/-! ## A233740.P5218304659492099123

`A004526(A233739(n+2)+1)`
-/

namespace A233740.P5218304659492099123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A233739 (n + 2) + 1).toNat

end

end A233740.P5218304659492099123

/-! ## A233740.P15954282024452505038

`A001057(A233739(n+2)-1)`
-/

namespace A233740.P15954282024452505038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A233739 (n + 2) - 1).toNat

end

end A233740.P15954282024452505038

/-! ## A233740.P13214208800638222617

`A052938(A233739(n+2)-2)`
-/

namespace A233740.P13214208800638222617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A233739 (n + 2) - 2).toNat

end

end A233740.P13214208800638222617

/-! ## A233740.P15857356083365428027

`A052938(A233739(n+2))+A033999(2*n+1)`
-/

namespace A233740.P15857356083365428027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A233739 (n + 2)).toNat + A033999 (2 * n + 1)

end

end A233740.P15857356083365428027

/-!
# A233741: Records in A233739.

The programs for A233741, there is no canonical definition to state claims against.
-/

/-! ## A233741.P17168272586447666843

`record[A233739(n+1)]`
-/

namespace A233741.P17168272586447666843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233741.P17168272586447666843

/-! ## A233741.P2817964899936306948

`record[A104272(n+1)-A031215(n+1)]`
-/

namespace A233741.P2817964899936306948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1) - A031215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233741.P2817964899936306948

/-! ## A233741.P3644978581517661219

`record[A104272(n+1)-A000040(2*(n+1))]`
-/

namespace A233741.P3644978581517661219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1) - A000040 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233741.P3644978581517661219

/-! ## A233741.P10084591533420595371

`record[A104272(n+1)-A065091(2*n+1)]`
-/

namespace A233741.P10084591533420595371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1) - A065091 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233741.P10084591533420595371

/-! ## A233741.P7106117103566004418

`record[A033999(n)*A233739(A052938(n))]`
-/

namespace A233741.P7106117103566004418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A233739 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233741.P7106117103566004418

/-!
# A233742: One sixth of gap g between 3 consecutive primes for the smallest k such that 6^n+k, 6^n+k+g, 6^n+k+2*g are consecutive primes in arithmetic progression.

The programs for A233742, there is no canonical definition to state claims against.
-/

/-! ## A233742.P18444252885408482199

`A233550(n+2)/6`
-/

namespace A233742.P18444252885408482199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233550 (n + 2) : ℚ) / 6

end

end A233742.P18444252885408482199

/-! ## A233742.P13017695745858600071

`A008615(A233550(n+2))`
-/

namespace A233742.P13017695745858600071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A233550 (n + 2)).toNat

end

end A233742.P13017695745858600071

/-! ## A233742.P17819952185630343640

`A008612(A233550(n+2)+1)`
-/

namespace A233742.P17819952185630343640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A233550 (n + 2) + 1).toNat

end

end A233742.P17819952185630343640

/-! ## A233742.P2943862372638208998

`A103221(A233550(n+2)+1)`
-/

namespace A233742.P2943862372638208998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A233550 (n + 2) + 1).toNat

end

end A233742.P2943862372638208998

/-! ## A233742.P11154898680159565626

`A152467(A233550(n+2)+1)`
-/

namespace A233742.P11154898680159565626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A233550 (n + 2) + 1).toNat

end

end A233742.P11154898680159565626

/-! ## A233742.P362498191669959279

`A117905(A233550(n+2)-1)`
-/

namespace A233742.P362498191669959279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117905 (A233550 (n + 2) - 1).toNat

end

end A233742.P362498191669959279

/-!
# A233743: a(n) = 7*binomial(6*n + 7, n)/(6*n + 7).

The programs for A233743, the canonical program `A233743.P16518700471986388449` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233743 has offset 0).

The definition of A233743 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A233743.anchor (n : ℕ) : (A233743 n : ℚ) = (7 * Nat.choose (6 * n + 7) n : ℚ) / (6 * n + 7 : ℚ)` in `Proof.A233.A233743`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A233743.P16518700471986388449

`7*C(6*n+7, n)/(6*n+7)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A233743

/-- `7*C(6*n+7, n)/(6*n+7)` -/
def P16518700471986388449.Spec : Prop :=
  ∀ n, P16518700471986388449.a n = (A233743 n : ℚ)

end A233743

/-! ## A233743.P3033315863228230547

`A212071(n+1)-Δ[A346065(n)]`
-/

namespace A233743.P3033315863228230547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212071 (n + 1) - (f1 (n + 1) - f1 n)

end

end A233743.P3033315863228230547

namespace A233743

/-- `A212071(n+1)-Δ[A346065(n)]` -/
def P3033315863228230547.Spec : Prop :=
  ∀ n, P3033315863228230547.a n = A233743 n

end A233743

/-! ## A233743.P8092086366734591726

`A212071(n+1)-A002295(n+1)`
-/

namespace A233743.P8092086366734591726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212071 (n + 1) - A002295 (n + 1)

end

end A233743.P8092086366734591726

namespace A233743

/-- `A212071(n+1)-A002295(n+1)` -/
def P8092086366734591726.Spec : Prop :=
  ∀ n, P8092086366734591726.a n = A233743 n

end A233743

/-! ## A233743.P5075752031680884894

`A212072(n+1)-(A233827(n)+A002295(n+1))`
-/

namespace A233743.P5075752031680884894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212072 (n + 1) - (A233827 n + A002295 (n + 1))

end

end A233743.P5075752031680884894

namespace A233743

/-- `A212072(n+1)-(A233827(n)+A002295(n+1))` -/
def P5075752031680884894.Spec : Prop :=
  ∀ n, P5075752031680884894.a n = A233743 n

end A233743

/-!
# A233744: Numbers p = a(n) such that p divided by (n-1)! is equal to the average number of elements of partition sets of n elements excluding sets with a singleton.

The programs for A233744, there is no canonical definition to state claims against.
-/

/-! ## A233744.P14982410279845932909

`A256589(∑[n+1]+2)`
-/

namespace A233744.P14982410279845932909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256589 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233744.P14982410279845932909

/-! ## A233744.P17778379460044160672

`record[A256589(A080036(n))]`
-/

namespace A233744.P17778379460044160672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256589 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233744.P17778379460044160672

/-! ## A233744.P10984734512242334811

`record[A072233(n)*A256589(n+1)]`
-/

namespace A233744.P10984734512242334811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n * A256589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233744.P10984734512242334811

/-! ## A233744.P14192568256971342381

`record[gcd(A100218(n), A256589(n+1))]`
-/

namespace A233744.P14192568256971342381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100218 n) (A256589 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233744.P14192568256971342381

/-! ## A233744.P531939819073031683

`record[or(A103452(n), A256589(n+1))]`
-/

namespace A233744.P531939819073031683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103452 n) (A256589 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233744.P531939819073031683

/-!
# A233745: a(n) = smallest number > a(n-1) such that a(1)*a(2)*...*a(n) - 1 is nonprime.

The programs for A233745, there is no canonical definition to state claims against.
-/

/-! ## A233745.P3561652096976096378

`comp[xor(A094587(3*n+1), A332390(n+2))]`
-/

namespace A233745.P3561652096976096378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A094587 (3 * n + 1)) (A332390 (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A233745.P3561652096976096378

/-! ## A233745.P10317314024532346412

`floor(∑[A303298(n)/A183174(n+1)]+n)+1`
-/

namespace A233745.P10317314024532346412
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303298 n : ℚ) / (A183174 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ)⌋ + 1

end

end A233745.P10317314024532346412

/-! ## A233745.P15919739404627582613

`lt[A318949(n+1), A058958(A113963(n+1))]`
-/

namespace A233745.P15919739404627582613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058958 (A113963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A233745.P15919739404627582613

/-! ## A233745.P1470916066153724450

`lt[A338802(n+1), A157684(A324701(n+1))]`
-/

namespace A233745.P1470916066153724450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157684 (A324701 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A233745.P1470916066153724450

/-! ## A233745.P10239513245275478442

`A131234(A095121(n))`
-/

namespace A233745.P10239513245275478442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131234 (A095121 n).toNat

end

end A233745.P10239513245275478442

/-!
# A233746: a(1) = 3; for n>3, a(n) = smallest number > a(n-1) such that a(1)*a(2)*...*a(n) + 1 is nonprime.

The programs for A233746, there is no canonical definition to state claims against.
-/

/-! ## A233746.P6272104167590839356

`lt[A178334(A303570(n+1)), A028903(n)]`
-/

namespace A233746.P6272104167590839356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A303570 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A233746.P6272104167590839356

/-! ## A233746.P3233513344244104309

`lt[A303545(A303570(n+1)), A106529(n+1)]`
-/

namespace A233746.P3233513344244104309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303545 (A303570 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106529 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A233746.P3233513344244104309

/-! ## A233746.P13684290304231369834

`lt[A192991(A303570(n+1)), A303608(n+1)]`
-/

namespace A233746.P13684290304231369834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192991 (A303570 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303608 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A233746.P13684290304231369834

/-! ## A233746.P17914807620847219863

`lt[A100337(n+1), A053450(A001651(n+1))]`
-/

namespace A233746.P17914807620847219863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053450 (A001651 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A233746.P17914807620847219863

/-! ## A233746.P4660880331506997268

`lt[A262971(A262999(n+4)), A262968(n)]`
-/

namespace A233746.P4660880331506997268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262971 (A262999 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A233746.P4660880331506997268

/-! ## A233746.P4528130073305041709

`record[A079643(A167487(n)+A064542(n+1))]`
-/

namespace A233746.P4528130073305041709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079643 (A167487 n + A064542 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233746.P4528130073305041709

/-! ## A233746.P3508749710191055332

`lt[2, (A057168(or(1, n²)+1)+1)²%A165747(n)]`
-/

namespace A233746.P3508749710191055332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A057168 (Nat.lor 1 (n ^ 2) + 1) + 1) ^ 2) (A165747 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A233746.P3508749710191055332

/-! ## A233746.P2933872176093651550

`lt[A247285(A354731(n+1)), A032153(n)]`
-/

namespace A233746.P2933872176093651550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247285 (A354731 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032153 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A233746.P2933872176093651550

/-! ## A233746.P17507245162820822929

`eq[A157928(n), A267533(A003586(n+1))]`
-/

namespace A233746.P17507245162820822929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267533 (A003586 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233746.P17507245162820822929

/-!
# A233747: Numbers n such that n+k, n+k^2 and n+k^4, are all prime, where k=4.

The programs for A233747, there is no canonical definition to state claims against.
-/

/-! ## A233747.P413257056226818836

`eq[A033807(A225770(n)), A225770(n+3)]`
-/

namespace A233747.P413257056226818836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033807 (A225770 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225770 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233747.P413257056226818836

/-! ## A233747.P11298367568774596409

`lt[A135529(n+1), A371048(A020639(n+4))]`
-/

namespace A233747.P11298367568774596409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371048 (A020639 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A233747.P11298367568774596409

/-! ## A233747.P18416616425884342537

`lt[A125768(n+5), A031178(A320470(3*n+2))]`
-/

namespace A233747.P18416616425884342537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125768 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 (A320470 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A233747.P18416616425884342537

/-!
# A233749: Number of (n+1)X(1+1) 0..5 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 10.

The programs for A233749, there is no canonical definition to state claims against.
-/

/-! ## A233749.P16332826929670385364

`A233755(∑[n]+1)`
-/

namespace A233749.P16332826929670385364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233755 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233749.P16332826929670385364

/-! ## A233749.P1461459542959322324

`or(4, A233755(A000124(n)))`
-/

namespace A233749.P1461459542959322324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A233755 (A000124 n).toNat)

end

end A233749.P1461459542959322324

/-! ## A233749.P1327276996211471640

`record[root(A233755(n+1), A009766(n))]`
-/

namespace A233749.P1327276996211471640
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233755 (n + 1) : ℝ) ^ (1 / (A009766 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233749.P1327276996211471640

/-! ## A233749.P10326517483569048602

`record[root(A233755(n+1), A013612(n))]`
-/

namespace A233749.P10326517483569048602
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233755 (n + 1) : ℝ) ^ (1 / (A013612 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233749.P10326517483569048602

/-! ## A233749.P3525182209787263786

`record[root(A233755(n+1), A059268(n))]`
-/

namespace A233749.P3525182209787263786
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233755 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233749.P3525182209787263786

/-!
# A233750: Number of (n+1)X(2+1) 0..5 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 10.

The programs for A233750, there is no canonical definition to state claims against.
-/

/-! ## A233750.P16257273078874867446

`A233755(∑[n+1]+2)`
-/

namespace A233750.P16257273078874867446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233755 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233750.P16257273078874867446

/-! ## A233750.P13792162698971644506

`record[root(A233755(n+2), A013612(n))]`
-/

namespace A233750.P13792162698971644506
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233755 (n + 2) : ℝ) ^ (1 / (A013612 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233750.P13792162698971644506

/-! ## A233750.P10440420956348640076

`record[root(A233755(n+2), A059268(n))]`
-/

namespace A233750.P10440420956348640076
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233755 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233750.P10440420956348640076

/-! ## A233750.P9447453596780186134

`record[root(A233755(n+2), A002260(n+1))]`
-/

namespace A233750.P9447453596780186134
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233755 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233750.P9447453596780186134

/-! ## A233750.P2187402868181802516

`record[A233755(abs(A201163(n)))]`
-/

namespace A233750.P2187402868181802516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233755 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233750.P2187402868181802516

/-!
# A233751: Number of (n+1)X(3+1) 0..5 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 10.

The programs for A233751, there is no canonical definition to state claims against.
-/

/-! ## A233751.P2035499237232866144

`A233755(∑[n+2]+4)`
-/

namespace A233751.P2035499237232866144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233755 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233751.P2035499237232866144

/-! ## A233751.P16524952631738315704

`lcm(2, A233755(A167614(n+1)))`
-/

namespace A233751.P16524952631738315704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233755 (A167614 (n + 1)).toNat)

end

end A233751.P16524952631738315704

/-! ## A233751.P10440535222828859345

`A233755(A167614(n+1))+A011856(n)`
-/

namespace A233751.P10440535222828859345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233755 (A167614 (n + 1)).toNat + A011856 n

end

end A233751.P10440535222828859345

/-! ## A233751.P971243739107559752

`A233755(A167614(n+1))+A025444(n)`
-/

namespace A233751.P971243739107559752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233755 (A167614 (n + 1)).toNat + A025444 n

end

end A233751.P971243739107559752

/-! ## A233751.P8335120073884817359

`A233755(A167614(n+1))+A185284(n)`
-/

namespace A233751.P8335120073884817359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233755 (A167614 (n + 1)).toNat + A185284 n

end

end A233751.P8335120073884817359

/-!
# A233752: Number of (n+1)X(4+1) 0..5 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 10.

The programs for A233752, there is no canonical definition to state claims against.
-/

/-! ## A233752.P11120146406603069980

`A233755(A055999(n)+10)`
-/

namespace A233752.P11120146406603069980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233755 (A055999 n + 10).toNat

end

end A233752.P11120146406603069980

/-! ## A233752.P4959864211585677971

`A233755(A167614(n+2)+1)`
-/

namespace A233752.P4959864211585677971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233755 (A167614 (n + 2) + 1).toNat

end

end A233752.P4959864211585677971

/-! ## A233752.P11598747785313154075

`A233755(A155212(n)+5)`
-/

namespace A233752.P11598747785313154075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233755 (A155212 n + 5).toNat

end

end A233752.P11598747785313154075

/-!
# A233756: The n-th palindromic prime in base n.

The programs for A233756, there is no canonical definition to state claims against.
-/

/-! ## A233756.P18258008373611867444

`A230820(A081937(n+1)-Δ[n²])`
-/

namespace A233756.P18258008373611867444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230820 (A081937 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A233756.P18258008373611867444

/-! ## A233756.P6718839273826389008

`p?[A153141(n)+A122361(2*(n+2))]`
-/

namespace A233756.P6718839273826389008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153141 n + A122361 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A233756.P6718839273826389008

/-!
# A233757: Triangle read by rows: T(n,k) = (2^n-1)*2^(k-1), for n >= 1 and 1<=k<=n.

The programs for A233757, the canonical program `A233757.P15944558286346665675` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233757 has offset 1).

The definition of A233757 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(row(n)+1)-1)*2^col(n)` (program `A233757.P15411900180213571468`, by `A233757.P15411900180213571468.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A233757.P15411900180213571468

`(2^(row(n)+1)-1)*2^col(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A233757.P15411900180213571468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ (SequenceMachineLib.triRow n + 1) : ℤ) - 1) * (2 ^ SequenceMachineLib.triCol n : ℤ)

end

end A233757.P15411900180213571468

namespace A233757

/-- `(2^(row(n)+1)-1)*2^col(n)` -/
def P15411900180213571468.Spec : Prop :=
  ∀ n, P15411900180213571468.a n = A233757 (n + 1)

theorem P15411900180213571468.correct : P15411900180213571468.Spec := by
  intro n
  simp only [A233757, Nat.add_sub_cancel, A233757.P15411900180213571468.a, A233757.P15944558286346665675.a, A000079, A000079.P10855139691139572931.a, A000225, A000225.P6535533121115206393.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A233757

/-! ## A233757.P15944558286346665675

`A000225(row(n)+1)*A000079(col(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A233757

/-- `A000225(row(n)+1)*A000079(col(n))` -/
def P15944558286346665675.Spec : Prop :=
  ∀ n, P15944558286346665675.a n = A233757 (n + 1)

theorem P15944558286346665675.correct : P15944558286346665675.Spec := by
  intro n
  simp only [A233757, Nat.add_sub_cancel]

end A233757

/-! ## A233757.P426804888336630855

`2^col(n)*(2^(row(n)+1)-1)`
-/

namespace A233757.P426804888336630855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.triCol n : ℤ) * ((2 ^ (SequenceMachineLib.triRow n + 1) : ℤ) - 1)

end

end A233757.P426804888336630855

namespace A233757

/-- `2^col(n)*(2^(row(n)+1)-1)` -/
def P426804888336630855.Spec : Prop :=
  ∀ n, P426804888336630855.a n = A233757 (n + 1)

theorem P426804888336630855.correct : P426804888336630855.Spec := by
  intro n
  simp only [A233757, Nat.add_sub_cancel, A233757.P426804888336630855.a, A233757.P15944558286346665675.a, A000079, A000079.P10855139691139572931.a, A000225, A000225.P6535533121115206393.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A233757

/-! ## A233757.P10164974297477766212

`(A140513(n)-1)*A059268(n)`
-/

namespace A233757.P10164974297477766212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A140513 n - 1) * A059268 n

end

end A233757.P10164974297477766212

namespace A233757

/-- `(A140513(n)-1)*A059268(n)` -/
def P10164974297477766212.Spec : Prop :=
  ∀ n, P10164974297477766212.a n = A233757 (n + 1)

end A233757

/-! ## A233757.P3805106410746082042

`A059268(n)*A126646(A003056(n))`
-/

namespace A233757.P3805106410746082042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A126646 (A003056 n).toNat

end

end A233757.P3805106410746082042

namespace A233757

/-- `A059268(n)*A126646(A003056(n))` -/
def P3805106410746082042.Spec : Prop :=
  ∀ n, P3805106410746082042.a n = A233757 (n + 1)

end A233757

/-! ## A233757.P9771936129616995181

`A000079(A094727(n+1))-A059268(n)`
-/

namespace A233757.P9771936129616995181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A094727 (n + 1)).toNat - A059268 n

end

end A233757.P9771936129616995181

namespace A233757

/-- `A000079(A094727(n+1))-A059268(n)` -/
def P9771936129616995181.Spec : Prop :=
  ∀ n, P9771936129616995181.a n = A233757 (n + 1)

end A233757

/-! ## A233757.P11744846764727468113

`A000225(A002024(n+1))*A059268(n)`
-/

namespace A233757.P11744846764727468113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A002024 (n + 1)).toNat * A059268 n

end

end A233757.P11744846764727468113

namespace A233757

/-- `A000225(A002024(n+1))*A059268(n)` -/
def P11744846764727468113.Spec : Prop :=
  ∀ n, P11744846764727468113.a n = A233757 (n + 1)

end A233757

/-! ## A233757.P11917548095776003570

`A006516(A002024(n+1))/A130321(n)`
-/

namespace A233757.P11917548095776003570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006516 (A002024 (n + 1)).toNat : ℚ) / (A130321 n : ℚ)

end

end A233757.P11917548095776003570

namespace A233757

/-- `A006516(A002024(n+1))/A130321(n)` -/
def P11917548095776003570.Spec : Prop :=
  ∀ n, P11917548095776003570.a n = (A233757 (n + 1) : ℚ)

end A233757

/-! ## A233757.P2510663792229141983

`(A140513(n)-1)*A000079(A002262(n))`
-/

namespace A233757.P2510663792229141983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A140513 n - 1) * A000079 (A002262 n).toNat

end

end A233757.P2510663792229141983

namespace A233757

/-- `(A140513(n)-1)*A000079(A002262(n))` -/
def P2510663792229141983.Spec : Prop :=
  ∀ n, P2510663792229141983.a n = A233757 (n + 1)

end A233757

/-! ## A233757.P4572204468131108000

`2^A002262(n)*A000225(A002024(n+1))`
-/

namespace A233757.P4572204468131108000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A000225 (A002024 (n + 1)).toNat : ℚ)

end

end A233757.P4572204468131108000

namespace A233757

/-- `2^A002262(n)*A000225(A002024(n+1))` -/
def P4572204468131108000.Spec : Prop :=
  ∀ n, P4572204468131108000.a n = (A233757 (n + 1) : ℚ)

end A233757

/-! ## A233757.P4819117764032293956

`A059268(n)²*A090988(n+1)-A059268(n)`
-/

namespace A233757.P4819117764032293956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A090988 (n + 1) - A059268 n

end

end A233757.P4819117764032293956

namespace A233757

/-- `A059268(n)²*A090988(n+1)-A059268(n)` -/
def P4819117764032293956.Spec : Prop :=
  ∀ n, P4819117764032293956.a n = A233757 (n + 1)

end A233757

/-! ## A233757.P17663156861350455397

`2^A002260(n+1)/2*A000225(A002024(n+1))`
-/

namespace A233757.P17663156861350455397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002260 (n + 1) : ℤ) / 2 * (A000225 (A002024 (n + 1)).toNat : ℚ)

end

end A233757.P17663156861350455397

namespace A233757

/-- `2^A002260(n+1)/2*A000225(A002024(n+1))` -/
def P17663156861350455397.Spec : Prop :=
  ∀ n, P17663156861350455397.a n = (A233757 (n + 1) : ℚ)

end A233757

/-! ## A233757.P3789002877261911836

`2^(A002260(2*n+1-n)-1)*A000225(A002024(n+1))`
-/

namespace A233757.P3789002877261911836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002260 (2 * n + 1 - n) - 1 : ℤ) * (A000225 (A002024 (n + 1)).toNat : ℚ)

end

end A233757.P3789002877261911836

namespace A233757

/-- `2^(A002260(2*n+1-n)-1)*A000225(A002024(n+1))` -/
def P3789002877261911836.Spec : Prop :=
  ∀ n, P3789002877261911836.a n = (A233757 (n + 1) : ℚ)

end A233757

/-! ## A233757.P108304124321392666

`A000225(A002024(n+1))/A085478(n)*A123519(n)`
-/

namespace A233757.P108304124321392666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (A002024 (n + 1)).toNat : ℚ) / (A085478 n : ℚ) * (A123519 n : ℚ)

end

end A233757.P108304124321392666

namespace A233757

/-- `A000225(A002024(n+1))/A085478(n)*A123519(n)` -/
def P108304124321392666.Spec : Prop :=
  ∀ n, P108304124321392666.a n = (A233757 (n + 1) : ℚ)

end A233757

/-! ## A233757.P2311084855730439782

`A155559(A002260(n+1))/2*A000225(A002024(n+1))`
-/

namespace A233757.P2311084855730439782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155559 (A002260 (n + 1)).toNat : ℚ) / 2 * (A000225 (A002024 (n + 1)).toNat : ℚ)

end

end A233757.P2311084855730439782

namespace A233757

/-- `A155559(A002260(n+1))/2*A000225(A002024(n+1))` -/
def P2311084855730439782.Spec : Prop :=
  ∀ n, P2311084855730439782.a n = (A233757 (n + 1) : ℚ)

end A233757

/-! ## A233757.P6252803088977225636

`(A000225(A002260(n+1)-1)+1)*A000225(A002024(n+1))`
-/

namespace A233757.P6252803088977225636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 (A002260 (n + 1) - 1).toNat + 1) * A000225 (A002024 (n + 1)).toNat

end

end A233757.P6252803088977225636

namespace A233757

/-- `(A000225(A002260(n+1)-1)+1)*A000225(A002024(n+1))` -/
def P6252803088977225636.Spec : Prop :=
  ∀ n, P6252803088977225636.a n = A233757 (n + 1)

end A233757

/-! ## A233757.P14470524090989140864

`A000225(A002024(n+1))/A210034(n+1)*A210036(n+1)`
-/

namespace A233757.P14470524090989140864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (A002024 (n + 1)).toNat : ℚ) / (A210034 (n + 1) : ℚ) * (A210036 (n + 1) : ℚ)

end

end A233757.P14470524090989140864

namespace A233757

/-- `A000225(A002024(n+1))/A210034(n+1)*A210036(n+1)` -/
def P14470524090989140864.Spec : Prop :=
  ∀ n, P14470524090989140864.a n = (A233757 (n + 1) : ℚ)

end A233757

/-! ## A233757.P17668792537173452016

`(A271709(A127739(n+1))-2)*A059268(n)`
-/

namespace A233757.P17668792537173452016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A271709 (A127739 (n + 1)).toNat - 2) * A059268 n

end

end A233757.P17668792537173452016

namespace A233757

/-- `(A271709(A127739(n+1))-2)*A059268(n)` -/
def P17668792537173452016.Spec : Prop :=
  ∀ n, P17668792537173452016.a n = A233757 (n + 1)

end A233757

/-! ## A233757.P5894651672002304887

`A059268(n)*A089633(A025581(n)+1+n)`
-/

namespace A233757.P5894651672002304887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A089633 (A025581 n + 1 + (n : ℤ)).toNat

end

end A233757.P5894651672002304887

namespace A233757

/-- `A059268(n)*A089633(A025581(n)+1+n)` -/
def P5894651672002304887.Spec : Prop :=
  ∀ n, P5894651672002304887.a n = A233757 (n + 1)

end A233757

/-! ## A233757.P1303130976061745973

`2^(A026100(A026098(n+1))-1)*A000225(A002024(n+1))`
-/

namespace A233757.P1303130976061745973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A026100 (A026098 (n + 1)).toNat - 1 : ℤ) * (A000225 (A002024 (n + 1)).toNat : ℚ)

end

end A233757.P1303130976061745973

namespace A233757

/-- `2^(A026100(A026098(n+1))-1)*A000225(A002024(n+1))` -/
def P1303130976061745973.Spec : Prop :=
  ∀ n, P1303130976061745973.a n = (A233757 (n + 1) : ℚ)

end A233757

/-!
# A233758: Bisection of A006950 (the even part).

The programs for A233758, there is no canonical definition to state claims against.
-/

/-! ## A233758.P7128247455278190276

`A006950(2*n)`
-/

namespace A233758.P7128247455278190276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 (2 * n)

end

end A233758.P7128247455278190276

/-! ## A233758.P18266187048971065025

`A106507(2*n)`
-/

namespace A233758.P18266187048971065025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106507 (2 * n)

end

end A233758.P18266187048971065025

/-! ## A233758.P6515330193054329419

`abs(A106507(n+n))`
-/

namespace A233758.P6515330193054329419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A106507 (n + n)|

end

end A233758.P6515330193054329419

/-! ## A233758.P6295912935618252216

`abs(record[A106507(abs(1-n))])`
-/

namespace A233758.P6295912935618252216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106507 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A233758.P6295912935618252216

/-! ## A233758.P12505429944498330959

`lcm((-1)^n, A106507(A005843(n)))`
-/

namespace A233758.P12505429944498330959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A106507 (A005843 n).toNat)

end

end A233758.P12505429944498330959

/-! ## A233758.P18143462523584227808

`A000038(n)+record[A106507(n+1)]`
-/

namespace A233758.P18143462523584227808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233758.P18143462523584227808

/-! ## A233758.P14645269658115052742

`A339416(2*n)-A339417(2*n)`
-/

namespace A233758.P14645269658115052742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339416 (2 * n) - A339417 (2 * n)

end

end A233758.P14645269658115052742

/-! ## A233758.P6534208240762225567

`2*A339416(2*n)-A023361(2*n)`
-/

namespace A233758.P6534208240762225567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339416 (2 * n) - A023361 (2 * n)

end

end A233758.P6534208240762225567

/-! ## A233758.P6713875431937937090

`A023361(2*n)-2*A339417(2*n)`
-/

namespace A233758.P6713875431937937090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023361 (2 * n) - 2 * A339417 (2 * n)

end

end A233758.P6713875431937937090

/-! ## A233758.P12696937699068171087

`A006950(A005843(n))/A007318(∑[n])`
-/

namespace A233758.P12696937699068171087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006950 (A005843 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A233758.P12696937699068171087

/-!
# A233759: Bisection of A006950 (the odd part).

The programs for A233759, there is no canonical definition to state claims against.
-/

/-! ## A233759.P3125134101776073421

`A006950(Δ[n²])`
-/

namespace A233759.P3125134101776073421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A233759.P3125134101776073421

/-! ## A233759.P11580610801083386183

`record[-A106507(n+1)]`
-/

namespace A233759.P11580610801083386183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A106507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233759.P11580610801083386183

/-! ## A233759.P17205417754168657375

`-A106507(record[xor(1, n)])`
-/

namespace A233759.P17205417754168657375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A106507 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A233759.P17205417754168657375

/-! ## A233759.P6868015280210559624

`abs(A106507(2*n+1))`
-/

namespace A233759.P6868015280210559624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A106507 (2 * n + 1)|

end

end A233759.P6868015280210559624

/-! ## A233759.P13475174477274437545

`record[A006950(lcm(2, n)/2)]`
-/

namespace A233759.P13475174477274437545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233759.P13475174477274437545

/-! ## A233759.P16787690913654770204

`record[A006950(n*n%2)]`
-/

namespace A233759.P16787690913654770204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233759.P16787690913654770204

/-! ## A233759.P3790552563942120035

`record[A006950(n/gcd(2, n))]`
-/

namespace A233759.P3790552563942120035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 2 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233759.P3790552563942120035

/-! ## A233759.P8927875964878831307

`record[A006950(n*and(1, n))]`
-/

namespace A233759.P8927875964878831307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 (n * Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233759.P8927875964878831307

/-! ## A233759.P12184670977903779296

`record[A006950(n^and(1, n))]`
-/

namespace A233759.P12184670977903779296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 (n ^ Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233759.P12184670977903779296

/-! ## A233759.P17031671537213713222

`record[A006950(n)^C(n, or(1, n))]`
-/

namespace A233759.P17031671537213713222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 n ^ Nat.choose n (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233759.P17031671537213713222

/-! ## A233759.P13484751772302447517

`record[A000038(n)-A106507(n)]`
-/

namespace A233759.P13484751772302447517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A106507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233759.P13484751772302447517

/-! ## A233759.P12071721293273731158

`lcm((-1)^n, A106507(A005408(n)))`
-/

namespace A233759.P12071721293273731158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A106507 (A005408 n).toNat)

end

end A233759.P12071721293273731158

/-! ## A233759.P5671809330340222222

`gcd(A000038(n), A106507(2*n+1))`
-/

namespace A233759.P5671809330340222222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A106507 (2 * n + 1))

end

end A233759.P5671809330340222222

/-! ## A233759.P1239221921272566302

`lcm(A006950(2*n+1), A097807(n))`
-/

namespace A233759.P1239221921272566302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006950 (2 * n + 1)) (A097807 n)

end

end A233759.P1239221921272566302

/-! ## A233759.P7325008003915511818

`lcm(A020985(n), A106507(2*n+1))`
-/

namespace A233759.P7325008003915511818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A106507 (2 * n + 1))

end

end A233759.P7325008003915511818

/-! ## A233759.P15013580561879776584

`A033999(n)²*A006950(2*n+1)`
-/

namespace A233759.P15013580561879776584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A006950 (2 * n + 1)

end

end A233759.P15013580561879776584

/-! ## A233759.P10896370862269425985

`A006950(2*n+1)+A000007(n+1)`
-/

namespace A233759.P10896370862269425985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 (2 * n + 1) + A000007 (n + 1)

end

end A233759.P10896370862269425985

/-! ## A233759.P14856221077386029244

`A006950(2*n+1)+A000038(n+1)`
-/

namespace A233759.P14856221077386029244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 (2 * n + 1) + A000038 (n + 1)

end

end A233759.P14856221077386029244

/-! ## A233759.P5767511240128298074

`A000007(n+1)-A106507(2*n+1)`
-/

namespace A233759.P5767511240128298074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A106507 (2 * n + 1)

end

end A233759.P5767511240128298074

/-! ## A233759.P9299717289565424892

`A000038(n+1)-A106507(2*n+1)`
-/

namespace A233759.P9299717289565424892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A106507 (2 * n + 1)

end

end A233759.P9299717289565424892

/-!
# A233760: Number of toothpicks and D-toothpicks after n-th stage in the D-toothpick "wide" triangle of the third kind, second version.

The programs for A233760, there is no canonical definition to state claims against.
-/

/-! ## A233760.P2939795237625089742

`∑[A233761(n)]`
-/

namespace A233760.P2939795237625089742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233760.P2939795237625089742

/-! ## A233760.P6624771598910078984

`a(n-1)-1+A233761(n)+A262079(n+4)²` with `a(0)=0`
-/

namespace A233760.P6624771598910078984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - 1 + (A233761 n + A262079 (n + 4) ^ 2)

end

end A233760.P6624771598910078984

/-! ## A233760.P3734709238094098602

`a(n-1)-1+A233761(n)-or(-1, A067992(n))` with `a(0)=0`
-/

namespace A233760.P3734709238094098602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - 1 + (A233761 n - Int.lor (-1) (A067992 n))

end

end A233760.P3734709238094098602

/-! ## A233760.P269046221923441011

`∑{d}[A000079(n), A233761(log2(#))]`
-/

namespace A233760.P269046221923441011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A233761 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A233760.P269046221923441011

/-! ## A233760.P14533144266713555218

`A180335(A323483(n))+A169780(n)`
-/

namespace A233760.P14533144266713555218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180335 (A323483 n).toNat + A169780 n

end

end A233760.P14533144266713555218

/-!
# A233761: Number of toothpicks or D-toothpicks added at n-th stage in the structure of the D-toothpick "wide" triangle of A233760.

The programs for A233761, there is no canonical definition to state claims against.
-/

/-! ## A233761.P2534562535401702642

`Δ[A233760(floor(abs(1/2-n)))]`
-/

namespace A233761.P2534562535401702642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233760 ⌊|(1 : ℚ) / 2 - (n : ℚ)|⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233761.P2534562535401702642

/-! ## A233761.P9685614901478190904

`abs(Δ[A233760(A004273(n)-n)])`
-/

namespace A233761.P9685614901478190904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233760 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A233761.P9685614901478190904

/-! ## A233761.P680503532226745727

`abs(Δ[A233760(n-A057427(n))])`
-/

namespace A233761.P680503532226745727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233760 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A233761.P680503532226745727

/-! ## A233761.P8878146647804424350

`abs(Δ[A233760(n-A000040(n+1)%2)])`
-/

namespace A233761.P8878146647804424350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233760 ((n : ℤ) - Int.tmod (A000040 (n + 1)) 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A233761.P8878146647804424350

/-! ## A233761.P15368368088477813823

`A233760(n)-A233760(A004273(n)-n)`
-/

namespace A233761.P15368368088477813823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233760 n - A233760 (A004273 n - (n : ℤ)).toNat

end

end A233761.P15368368088477813823

/-! ## A233761.P14144886603968072809

`Δ[A233760(n-A057427(n))]%A000040(n+1)`
-/

namespace A233761.P14144886603968072809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233760 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000040 (n + 1))

end

end A233761.P14144886603968072809

/-! ## A233761.P4492051992463512974

`Δ[A233760(n-A057427(n))+A020639(2*(n+1))]`
-/

namespace A233761.P4492051992463512974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233760 ((n : ℤ) - A057427 n).toNat + A020639 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233761.P4492051992463512974

/-! ## A233761.P2888327816180556668

`A000203(((-1)^n)²)*Δ[A233760(n-A057427(n))]`
-/

namespace A233761.P2888327816180556668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233760 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (((-1) ^ n) ^ 2).toNat * (f1 (n + 1) - f1 n)

end

end A233761.P2888327816180556668

/-!
# A233762: Number of toothpicks and D-toothpicks after n-th stage in the D-toothpick "narrow" triangle of the third kind, second version.

The programs for A233762, there is no canonical definition to state claims against.
-/

/-! ## A233762.P16792627661022971008

`∑[A233763(n)]%p?[A194442(n)]`
-/

namespace A233762.P16792627661022971008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233763 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A233762.P16792627661022971008

/-! ## A233762.P10035744941650130571

`∑[A233763(n)*A304042(A233769(n+1))]`
-/

namespace A233762.P10035744941650130571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233763 n * A304042 (A233769 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233762.P10035744941650130571

/-! ## A233762.P16980189108890291685

`∑[A233763(n)*A325975(A000079(n+3))]`
-/

namespace A233762.P16980189108890291685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233763 n * A325975 (A000079 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233762.P16980189108890291685

/-!
# A233763: Number of toothpicks or D-toothpicks added at n-th stage in the structure of the D-toothpick "narrow" triangle of A233762.

The programs for A233763, there is no canonical definition to state claims against.
-/

/-! ## A233763.P5162475146352483689

`abs(Δ[or(1, n)]-A220523(n))`
-/

namespace A233763.P5162475146352483689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ) - A220523 n|

end

end A233763.P5162475146352483689

/-! ## A233763.P13185554669334950868

`abs(A010673(n)-A220523(n))`
-/

namespace A233763.P13185554669334950868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010673 n - A220523 n|

end

end A233763.P13185554669334950868

/-! ## A233763.P9465535736988324316

`A220523(n)-Δ[A267458(n)]`
-/

namespace A233763.P9465535736988324316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220523 n - (f1 (n + 1) - f1 n)

end

end A233763.P9465535736988324316

/-! ## A233763.P14220799123118731769

`A220523(n)-2%A266303(n)`
-/

namespace A233763.P14220799123118731769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220523 n - Int.tmod 2 (A266303 n)

end

end A233763.P14220799123118731769

/-! ## A233763.P13166095428443127032

`A220523(n)-and(2, A167193(n))`
-/

namespace A233763.P13166095428443127032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220523 n - Int.land 2 (A167193 n)

end

end A233763.P13166095428443127032

/-! ## A233763.P11391209011145096455

`(A220523(n)+A004442(n))%(n+1)`
-/

namespace A233763.P11391209011145096455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220523 n + A004442 n) (n + 1 : ℤ)

end

end A233763.P11391209011145096455

/-! ## A233763.P16684226441947264214

`A220523(n)-A007814(A271054(n))`
-/

namespace A233763.P16684226441947264214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220523 n - A007814 (A271054 n).toNat

end

end A233763.P16684226441947264214

/-! ## A233763.P790752921822693369

`A000196((A010673(n)-A220523(n))²)`
-/

namespace A233763.P790752921822693369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((A010673 n - A220523 n) ^ 2).toNat

end

end A233763.P790752921822693369

/-! ## A233763.P5405297934923305095

`lcm(A010673(n)-A220523(n), A033999(n))`
-/

namespace A233763.P5405297934923305095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010673 n - A220523 n) (A033999 n)

end

end A233763.P5405297934923305095

/-! ## A233763.P7821878787755998413

`∑{d}[A010673(n)-A220523(n), A000010(#)]`
-/

namespace A233763.P7821878787755998413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n - A220523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A233763.P7821878787755998413

/-!
# A233764: Number of toothpicks and D-toothpicks after n-th stage in a D-toothpick "wide" triangle (see Comments lines for definition).

The programs for A233764, there is no canonical definition to state claims against.
-/

/-! ## A233764.P8786973079116072246

`∑[A233765(n)]`
-/

namespace A233764.P8786973079116072246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233764.P8786973079116072246

/-!
# A233765: Number of toothpicks or D-toothpicks added at n-th stage to the structure of the toothpick "wide" triangle of A233764.

The programs for A233765, there is no canonical definition to state claims against.
-/

/-! ## A233765.P8456198279587097615

`Δ[A233764(n-n²%(n+1))]`
-/

namespace A233765.P8456198279587097615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233764 (n - n ^ 2 % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233765.P8456198279587097615

/-! ## A233765.P5503883858932162416

`Δ[A233764(A259361(n²))]`
-/

namespace A233765.P5503883858932162416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233764 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233765.P5503883858932162416

/-! ## A233765.P10104630572181503719

`Δ[A233764(log2(A011782(n)))]`
-/

namespace A233765.P10104630572181503719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233764 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233765.P10104630572181503719

/-! ## A233765.P1027274115284496913

`Δ[A233764(A028310(n)-1)]`
-/

namespace A233765.P1027274115284496913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233764 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233765.P1027274115284496913

/-! ## A233765.P1503016771964101276

`Δ[A233764(A057428(n)+n)]`
-/

namespace A233765.P1503016771964101276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233764 (A057428 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233765.P1503016771964101276

/-! ## A233765.P13444987605438844989

`Δ[A233764(A004273(n)-n)]`
-/

namespace A233765.P13444987605438844989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233764 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233765.P13444987605438844989

/-! ## A233765.P2962703898623434100

`Δ[A233764(n-A057428(n)²)]`
-/

namespace A233765.P2962703898623434100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233764 ((n : ℤ) - A057428 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233765.P2962703898623434100

/-! ## A233765.P5307360302895386180

`A233764(n)-A233764((2*n)%(n+1))`
-/

namespace A233765.P5307360302895386180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233764 n - A233764 (2 * n % (n + 1))

end

end A233765.P5307360302895386180

/-! ## A233765.P14987479466313056982

`Δ[A233764(A004524(A004273(n)))]`
-/

namespace A233765.P14987479466313056982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233764 (A004524 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233765.P14987479466313056982

/-! ## A233765.P13874607709365258772

`Δ[A233764(A004526(A004275(n)))]`
-/

namespace A233765.P13874607709365258772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233764 (A004526 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233765.P13874607709365258772

/-!
# A233766: Digital root of Lucas numbers (A030133) indexed by natural numbers not divisible by 2, 3 or 5 (A007775).

The programs for A233766, there is no canonical definition to state claims against.
-/

/-! ## A233766.P13424023136453841483

`A030133(eq[0, A340734(n+1)])`
-/

namespace A233766.P13424023136453841483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030133 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233766.P13424023136453841483

/-!
# A233767: Prime(n), where n is such that (Sum_{i=1..n} prime(i)^19) / n is an integer.

The programs for A233767, there is no canonical definition to state claims against.
-/

/-! ## A233767.P1079989497670275843

`A000040(A131279(n+1))`
-/

namespace A233767.P1079989497670275843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A131279 (n + 1)).toNat

end

end A233767.P1079989497670275843

/-! ## A233767.P4786193824395094935

`A008578(A131279(n+1)+1)`
-/

namespace A233767.P4786193824395094935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A131279 (n + 1) + 1).toNat

end

end A233767.P4786193824395094935

/-! ## A233767.P9531268051478420704

`A182986(A131279(n+1)+1)`
-/

namespace A233767.P9531268051478420704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A131279 (n + 1) + 1).toNat

end

end A233767.P9531268051478420704

/-! ## A233767.P2402967016334143619

`A158611(A131279(n+1)+2)`
-/

namespace A233767.P2402967016334143619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A131279 (n + 1) + 2).toNat

end

end A233767.P2402967016334143619

/-! ## A233767.P4450059822446846942

`A073846(2*A131279(n+1))`
-/

namespace A233767.P4450059822446846942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A131279 (n + 1)).toNat

end

end A233767.P4450059822446846942

/-!
# A233768: Numbers k such that k divides 1 + Sum_{j=1..k} prime(j)^19.

The programs for A233768, there is no canonical definition to state claims against.
-/

/-! ## A233768.P17027542879713148842

`A000720(A233769(n+1))`
-/

namespace A233768.P17027542879713148842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A233769 (n + 1)).toNat

end

end A233768.P17027542879713148842

/-! ## A233768.P5347770223079620960

`∑{d}[A233769(n+1), A061395(#)]`
-/

namespace A233768.P5347770223079620960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A233768.P5347770223079620960

/-!
# A233769: Prime(k), where k is such that (1 + Sum_{i=1..k} prime(i)^19) / k is an integer.

The programs for A233769, there is no canonical definition to state claims against.
-/

/-! ## A233769.P9366726486670422888

`A000040(A233768(n+1))`
-/

namespace A233769.P9366726486670422888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A233768 (n + 1)).toNat

end

end A233769.P9366726486670422888

/-! ## A233769.P2497742086605584287

`A008578(A233768(n+1)+1)`
-/

namespace A233769.P2497742086605584287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A233768 (n + 1) + 1).toNat

end

end A233769.P2497742086605584287

/-! ## A233769.P17586019248651646695

`A158611(A233768(n+1)+2)`
-/

namespace A233769.P17586019248651646695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A233768 (n + 1) + 2).toNat

end

end A233769.P17586019248651646695

/-! ## A233769.P15174714377056120333

`∑{d}[A233768(n+1), A007444(#)]`
-/

namespace A233769.P15174714377056120333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A233769.P15174714377056120333

/-! ## A233769.P3650450562690566255

`A006093(A233768(n+1))+A007318(∑[n])`
-/

namespace A233769.P3650450562690566255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A233768 (n + 1)).toNat + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233769.P3650450562690566255

/-!
# A233772: Triangle read by rows in which row n lists n together with the proper divisors of n multiplied by -1 in increasing order.

The programs for A233772, there is no canonical definition to state claims against.
-/

/-! ## A233772.P13516706452508588510

`A056538(n+1)*A134824(A027750(n+1))`
-/

namespace A233772.P13516706452508588510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (n + 1) * A134824 (A027750 (n + 1)).toNat

end

end A233772.P13516706452508588510

/-! ## A233772.P16936026882688151034

`A056538(n+1)*A153881(A275055(n+1))`
-/

namespace A233772.P16936026882688151034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (n + 1) * A153881 (A275055 (n + 1)).toNat

end

end A233772.P16936026882688151034

/-! ## A233772.P6367424163555058841

`A056538(A000027(n+1))/A134824(A027750(n+1))`
-/

namespace A233772.P6367424163555058841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056538 (A000027 (n + 1)).toNat : ℚ) / (A134824 (A027750 (n + 1)).toNat : ℚ)

end

end A233772.P6367424163555058841

/-! ## A233772.P1608053833042800187

`A056538(n+1)*A153881(A210959(n+1))`
-/

namespace A233772.P1608053833042800187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (n + 1) * A153881 (A210959 (n + 1)).toNat

end

end A233772.P1608053833042800187

/-! ## A233772.P18363134783793568424

`A056538(n+1)*A134824(A168017(n+1))`
-/

namespace A233772.P18363134783793568424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (n + 1) * A134824 (A168017 (n + 1)).toNat

end

end A233772.P18363134783793568424

/-! ## A233772.P17139803646361875278

`A056538(n+1)*A153881(A299483(n+1))`
-/

namespace A233772.P17139803646361875278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (n + 1) * A153881 (A299483 (n + 1)).toNat

end

end A233772.P17139803646361875278

/-!
# A233773: Triangle read by rows in which row n lists the proper divisors of n together with -n.

The programs for A233773, there is no canonical definition to state claims against.
-/

/-! ## A233773.P6446067441319261922

`A014026(Δ[A061017(n+1)])*A027750(n+1)`
-/

namespace A233773.P6446067441319261922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014026 (f1 (n + 1) - f1 n).toNat * A027750 (n + 1)

end

end A233773.P6446067441319261922

/-! ## A233773.P15775215856912991826

`A027750(n+1)*A030203(Δ[A061017(n+1)])`
-/

namespace A233773.P15775215856912991826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) * A030203 (f1 (n + 1) - f1 n).toNat

end

end A233773.P15775215856912991826

/-! ## A233773.P8405604608549428470

`A027750(n+1)*A033999(Δ[A061017(n+1)])`
-/

namespace A233773.P8405604608549428470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) * A033999 (f1 (n + 1) - f1 n).toNat

end

end A233773.P8405604608549428470

/-! ## A233773.P10085867657705500669

`A027750(n+1)*A081360(Δ[A061017(n+1)])`
-/

namespace A233773.P10085867657705500669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) * A081360 (f1 (n + 1) - f1 n).toNat

end

end A233773.P10085867657705500669

/-! ## A233773.P17669827165233109415

`A027750(n+1)*A101195(Δ[A061017(n+1)])`
-/

namespace A233773.P17669827165233109415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) * A101195 (f1 (n + 1) - f1 n).toNat

end

end A233773.P17669827165233109415

/-! ## A233773.P8235855205512901159

`A027750(n+1)*A110514(Δ[A061017(n+1)])`
-/

namespace A233773.P8235855205512901159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) * A110514 (f1 (n + 1) - f1 n).toNat

end

end A233773.P8235855205512901159

/-! ## A233773.P11238471091769759096

`A027750(n+1)*A130595(Δ[A061017(n+1)])`
-/

namespace A233773.P11238471091769759096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) * A130595 (f1 (n + 1) - f1 n).toNat

end

end A233773.P11238471091769759096

/-! ## A233773.P8916778909701854598

`A027750(n+1)*A240330(Δ[A061017(n+1)])`
-/

namespace A233773.P8916778909701854598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) * A240330 (f1 (n + 1) - f1 n).toNat

end

end A233773.P8916778909701854598

/-! ## A233773.P6558705854926598511

`A027750(n+1)*A264610(Δ[A061017(n+1)])`
-/

namespace A233773.P6558705854926598511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) * A264610 (f1 (n + 1) - f1 n).toNat

end

end A233773.P6558705854926598511

/-!
# A233774: Total number of vertices in the first n rows of Sierpinski gasket, with a(0) = 1.

The programs for A233774, the canonical program `A233774.P13113059997126762199` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233774 has offset 0).

The definition of A233774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233774.P13095778639264527755

`∑[A233775(n)]`
-/

namespace A233774.P13095778639264527755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233775 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233774.P13095778639264527755

namespace A233774

/-- `∑[A233775(n)]` -/
def P13095778639264527755.Spec : Prop :=
  ∀ n, P13095778639264527755.a n = A233774 n

end A233774

/-! ## A233774.P13113059997126762199

`A006046(n)+A193494(n)+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A233774

/-- `A006046(n)+A193494(n)+1` -/
def P13113059997126762199.Spec : Prop :=
  ∀ n, P13113059997126762199.a n = A233774 n

theorem P13113059997126762199.correct : P13113059997126762199.Spec := by
  intro n
  simp only [A233774]

end A233774

/-! ## A233774.P5588089870417385592

`A151788(n+1)-A038573(n)`
-/

namespace A233774.P5588089870417385592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151788 (n + 1) - A038573 n

end

end A233774.P5588089870417385592

namespace A233774

/-- `A151788(n+1)-A038573(n)` -/
def P5588089870417385592.Spec : Prop :=
  ∀ n, P5588089870417385592.a n = A233774 n

end A233774

/-! ## A233774.P11823135296006450877

`ceil(A006046(Δ[n²])/2)`
-/

namespace A233774.P11823135296006450877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006046 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2⌉

end

end A233774.P11823135296006450877

namespace A233774

/-- `ceil(A006046(Δ[n²])/2)` -/
def P11823135296006450877.Spec : Prop :=
  ∀ n, P11823135296006450877.a n = A233774 n

end A233774

/-! ## A233774.P18434337912993115231

`round(A006046(2*n+1)/2)`
-/

namespace A233774.P18434337912993115231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006046 (2 * n + 1) : ℚ) / 2)

end

end A233774.P18434337912993115231

namespace A233774

/-- `round(A006046(2*n+1)/2)` -/
def P18434337912993115231.Spec : Prop :=
  ∀ n, P18434337912993115231.a n = A233774 n

end A233774

/-! ## A233774.P6191591690685738071

`A193494(2*n)+1`
-/

namespace A233774.P6191591690685738071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193494 (2 * n) + 1

end

end A233774.P6191591690685738071

namespace A233774

/-- `A193494(2*n)+1` -/
def P6191591690685738071.Spec : Prop :=
  ∀ n, P6191591690685738071.a n = A233774 n

end A233774

/-! ## A233774.P12204231076412898201

`∑[ceil(A105321(2*n)/2)]`
-/

namespace A233774.P12204231076412898201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A105321 (2 * n) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233774.P12204231076412898201

namespace A233774

/-- `∑[ceil(A105321(2*n)/2)]` -/
def P12204231076412898201.Spec : Prop :=
  ∀ n, P12204231076412898201.a n = A233774 n

end A233774

/-! ## A233774.P1510457614646679560

`ceil(A151788(2*n+1)/3)`
-/

namespace A233774.P1510457614646679560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A151788 (2 * n + 1) : ℚ) / 3⌉

end

end A233774.P1510457614646679560

namespace A233774

/-- `ceil(A151788(2*n+1)/3)` -/
def P1510457614646679560.Spec : Prop :=
  ∀ n, P1510457614646679560.a n = A233774 n

end A233774

/-! ## A233774.P10477275175949561556

`ceil(A080978(2*n+1)/4)`
-/

namespace A233774.P10477275175949561556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A080978 (2 * n + 1) : ℚ) / 4⌉

end

end A233774.P10477275175949561556

namespace A233774

/-- `ceil(A080978(2*n+1)/4)` -/
def P10477275175949561556.Spec : Prop :=
  ∀ n, P10477275175949561556.a n = A233774 n

end A233774

/-! ## A233774.P2833176776574818990

`A014682(∑[A001316(n)])-A001316(n)`
-/

namespace A233774.P2833176776574818990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A001316 n

end

end A233774.P2833176776574818990

namespace A233774

/-- `A014682(∑[A001316(n)])-A001316(n)` -/
def P2833176776574818990.Spec : Prop :=
  ∀ n, P2833176776574818990.a n = A233774 n

end A233774

/-! ## A233774.P3465235648283386611

`A368226(A005836(2*n+1))+1`
-/

namespace A233774.P3465235648283386611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368226 (A005836 (2 * n + 1)).toNat + 1

end

end A233774.P3465235648283386611

namespace A233774

/-- `A368226(A005836(2*n+1))+1` -/
def P3465235648283386611.Spec : Prop :=
  ∀ n, P3465235648283386611.a n = A233774 n

end A233774

/-! ## A233774.P4566646547215122180

`A110654(A006046(2*n+1))`
-/

namespace A233774.P4566646547215122180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A006046 (2 * n + 1)).toNat

end

end A233774.P4566646547215122180

namespace A233774

/-- `A110654(A006046(2*n+1))` -/
def P4566646547215122180.Spec : Prop :=
  ∀ n, P4566646547215122180.a n = A233774 n

end A233774

/-! ## A233774.P13417889010246454701

`A004526(A006046(2*n+1)+1)`
-/

namespace A233774.P13417889010246454701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A006046 (2 * n + 1) + 1).toNat

end

end A233774.P13417889010246454701

namespace A233774

/-- `A004526(A006046(2*n+1)+1)` -/
def P13417889010246454701.Spec : Prop :=
  ∀ n, P13417889010246454701.a n = A233774 n

end A233774

/-! ## A233774.P3845955801376402973

`A006370(A006046(2*n+1)+1)`
-/

namespace A233774.P3845955801376402973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A006046 (2 * n + 1) + 1).toNat

end

end A233774.P3845955801376402973

namespace A233774

/-- `A006370(A006046(2*n+1)+1)` -/
def P3845955801376402973.Spec : Prop :=
  ∀ n, P3845955801376402973.a n = A233774 n

end A233774

/-! ## A233774.P6353308510130814165

`A026741(A006046(2*n+1)+1)`
-/

namespace A233774.P6353308510130814165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A006046 (2 * n + 1) + 1).toNat

end

end A233774.P6353308510130814165

namespace A233774

/-- `A026741(A006046(2*n+1)+1)` -/
def P6353308510130814165.Spec : Prop :=
  ∀ n, P6353308510130814165.a n = A233774 n

end A233774

/-! ## A233774.P7877359452481964555

`A004524(A006046(2*n+1)+2)`
-/

namespace A233774.P7877359452481964555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A006046 (2 * n + 1) + 2).toNat

end

end A233774.P7877359452481964555

namespace A233774

/-- `A004524(A006046(2*n+1)+2)` -/
def P7877359452481964555.Spec : Prop :=
  ∀ n, P7877359452481964555.a n = A233774 n

end A233774

/-! ## A233774.P4159206817050003374

`eq[A003417(n), A029646(n)]`
-/

namespace A233774.P4159206817050003374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003417 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029646 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233774.P4159206817050003374

namespace A233774

/-- `eq[A003417(n), A029646(n)]` -/
def P4159206817050003374.Spec : Prop :=
  ∀ n, (P4159206817050003374.a n : ℤ) = A233774 n

end A233774

/-! ## A233774.P2172624241319677217

`eq[A029646(n), A101825(n)]`
-/

namespace A233774.P2172624241319677217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029646 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233774.P2172624241319677217

namespace A233774

/-- `eq[A029646(n), A101825(n)]` -/
def P2172624241319677217.Spec : Prop :=
  ∀ n, (P2172624241319677217.a n : ℤ) = A233774 n

end A233774

/-! ## A233774.P14535258617039917523

`eq[A029630(n), A239278(n)]`
-/

namespace A233774.P14535258617039917523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029630 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239278 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233774.P14535258617039917523

namespace A233774

/-- `eq[A029630(n), A239278(n)]` -/
def P14535258617039917523.Spec : Prop :=
  ∀ n, (P14535258617039917523.a n : ℤ) = A233774 n

end A233774

/-! ## A233774.P11027737053549802163

`eq[A029630(n), A244893(n+1)]`
-/

namespace A233774.P11027737053549802163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029630 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244893 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233774.P11027737053549802163

namespace A233774

/-- `eq[A029630(n), A244893(n+1)]` -/
def P11027737053549802163.Spec : Prop :=
  ∀ n, (P11027737053549802163.a n : ℤ) = A233774 n

end A233774

/-!
# A233775: Number of vertices in the n-th row of the Sierpinski gasket (cf. A047999).

The programs for A233775, the canonical program `A233775.P17199586027421779978` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233775 has offset 0).

The definition of A233775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233775.P12308856678871553879

`(A131136(n)+A001316(n))/2`
-/

namespace A233775.P12308856678871553879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131136 n + A001316 n : ℚ) / 2

end

end A233775.P12308856678871553879

namespace A233775

/-- `(A131136(n)+A001316(n))/2` -/
def P12308856678871553879.Spec : Prop :=
  ∀ n, P12308856678871553879.a n = (A233775 n : ℚ)

end A233775

/-! ## A233775.P17199586027421779978

`A105321(n)-ceil(A038573(n)/2)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A233775

/-- `A105321(n)-ceil(A038573(n)/2)` -/
def P17199586027421779978.Spec : Prop :=
  ∀ n, P17199586027421779978.a n = A233775 n

theorem P17199586027421779978.correct : P17199586027421779978.Spec := by
  intro n
  simp only [A233775]

end A233775

/-! ## A233775.P15952066844236665542

`A105321(n)-A001057(A038573(n))`
-/

namespace A233775.P15952066844236665542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105321 n - A001057 (A038573 n).toNat

end

end A233775.P15952066844236665542

namespace A233775

/-- `A105321(n)-A001057(A038573(n))` -/
def P15952066844236665542.Spec : Prop :=
  ∀ n, P15952066844236665542.a n = A233775 n

end A233775

/-! ## A233775.P17652872332629515709

`(A001316(n)+A001316(A004273(n)))/2`
-/

namespace A233775.P17652872332629515709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 n + A001316 (A004273 n).toNat : ℚ) / 2

end

end A233775.P17652872332629515709

namespace A233775

/-- `(A001316(n)+A001316(A004273(n)))/2` -/
def P17652872332629515709.Spec : Prop :=
  ∀ n, P17652872332629515709.a n = (A233775 n : ℚ)

end A233775

/-! ## A233775.P6968182721977816771

`(A131136(n)+A000079(A000120(n)))/2`
-/

namespace A233775.P6968182721977816771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131136 n + A000079 (A000120 n).toNat : ℚ) / 2

end

end A233775.P6968182721977816771

namespace A233775

/-- `(A131136(n)+A000079(A000120(n)))/2` -/
def P6968182721977816771.Spec : Prop :=
  ∀ n, P6968182721977816771.a n = (A233775 n : ℚ)

end A233775

/-! ## A233775.P1197909951060050165

`(A001316(n)+A001316(A130824(n)))/2`
-/

namespace A233775.P1197909951060050165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 n + A001316 (A130824 n).toNat : ℚ) / 2

end

end A233775.P1197909951060050165

namespace A233775

/-- `(A001316(n)+A001316(A130824(n)))/2` -/
def P1197909951060050165.Spec : Prop :=
  ∀ n, P1197909951060050165.a n = (A233775 n : ℚ)

end A233775

/-! ## A233775.P6219419333500167172

`A105321(n)-A004526(A060632(2*n))`
-/

namespace A233775.P6219419333500167172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105321 n - A004526 (A060632 (2 * n)).toNat

end

end A233775.P6219419333500167172

namespace A233775

/-- `A105321(n)-A004526(A060632(2*n))` -/
def P6219419333500167172.Spec : Prop :=
  ∀ n, P6219419333500167172.a n = A233775 n

end A233775

/-! ## A233775.P2166728312424219452

`(A001316(A004760(n+1))+A001316(n))/2`
-/

namespace A233775.P2166728312424219452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 (A004760 (n + 1)).toNat + A001316 n : ℚ) / 2

end

end A233775.P2166728312424219452

namespace A233775

/-- `(A001316(A004760(n+1))+A001316(n))/2` -/
def P2166728312424219452.Spec : Prop :=
  ∀ n, P2166728312424219452.a n = (A233775 n : ℚ)

end A233775

/-! ## A233775.P6606871134713938389

`(A001316(A123168(n+1))+A001316(n))/2`
-/

namespace A233775.P6606871134713938389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 (A123168 (n + 1)).toNat + A001316 n : ℚ) / 2

end

end A233775.P6606871134713938389

namespace A233775

/-- `(A001316(A123168(n+1))+A001316(n))/2` -/
def P6606871134713938389.Spec : Prop :=
  ∀ n, P6606871134713938389.a n = (A233775 n : ℚ)

end A233775

/-! ## A233775.P8713386520292576855

`(A001316(n)+A001316(A110185(n)))/2`
-/

namespace A233775.P8713386520292576855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 n + A001316 (A110185 n).toNat : ℚ) / 2

end

end A233775.P8713386520292576855

namespace A233775

/-- `(A001316(n)+A001316(A110185(n)))/2` -/
def P8713386520292576855.Spec : Prop :=
  ∀ n, P8713386520292576855.a n = (A233775 n : ℚ)

end A233775

/-! ## A233775.P12621431573624605051

`(A001316(A123169(n+1))+A001316(n))/2`
-/

namespace A233775.P12621431573624605051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 (A123169 (n + 1)).toNat + A001316 n : ℚ) / 2

end

end A233775.P12621431573624605051

namespace A233775

/-- `(A001316(A123169(n+1))+A001316(n))/2` -/
def P12621431573624605051.Spec : Prop :=
  ∀ n, P12621431573624605051.a n = (A233775 n : ℚ)

end A233775

/-! ## A233775.P13301846595955016408

`A000010(A001316(n))+sqrt(A177241(n))`
-/

namespace A233775.P13301846595955016408
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000010 (A001316 n).toNat : ℝ) + Real.sqrt (A177241 n : ℝ)

end

end A233775.P13301846595955016408

namespace A233775

/-- `A000010(A001316(n))+sqrt(A177241(n))` -/
def P13301846595955016408.Spec : Prop :=
  ∀ n, P13301846595955016408.a n = (A233775 n : ℝ)

end A233775

/-! ## A233775.P6609655699270025386

`ceil(A105321(2*n)/2)`
-/

namespace A233775.P6609655699270025386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A105321 (2 * n) : ℚ) / 2⌉

end

end A233775.P6609655699270025386

namespace A233775

/-- `ceil(A105321(2*n)/2)` -/
def P6609655699270025386.Spec : Prop :=
  ∀ n, P6609655699270025386.a n = A233775 n

end A233775

/-! ## A233775.P8837397663056353455

`A110654(A105321(2*n))`
-/

namespace A233775.P8837397663056353455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A105321 (2 * n)).toNat

end

end A233775.P8837397663056353455

namespace A233775

/-- `A110654(A105321(2*n))` -/
def P8837397663056353455.Spec : Prop :=
  ∀ n, P8837397663056353455.a n = A233775 n

end A233775

/-! ## A233775.P495178507728465242

`A004526(A105321(2*n)+1)`
-/

namespace A233775.P495178507728465242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A105321 (2 * n) + 1).toNat

end

end A233775.P495178507728465242

namespace A233775

/-- `A004526(A105321(2*n)+1)` -/
def P495178507728465242.Spec : Prop :=
  ∀ n, P495178507728465242.a n = A233775 n

end A233775

/-! ## A233775.P9151255893424222234

`A123108(A105321(2*n)+1)`
-/

namespace A233775.P9151255893424222234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A105321 (2 * n) + 1).toNat

end

end A233775.P9151255893424222234

namespace A233775

/-- `A123108(A105321(2*n)+1)` -/
def P9151255893424222234.Spec : Prop :=
  ∀ n, P9151255893424222234.a n = A233775 n

end A233775

/-! ## A233775.P2724419663762046006

`A008619(A105321(2*n)-1)`
-/

namespace A233775.P2724419663762046006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A105321 (2 * n) - 1).toNat

end

end A233775.P2724419663762046006

namespace A233775

/-- `A008619(A105321(2*n)-1)` -/
def P2724419663762046006.Spec : Prop :=
  ∀ n, P2724419663762046006.a n = A233775 n

end A233775

/-! ## A233775.P10732968608817736921

`A105321(2*n)/(A043545(2*n)+1)`
-/

namespace A233775.P10732968608817736921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105321 (2 * n) : ℚ) / (A043545 (2 * n) + 1 : ℚ)

end

end A233775.P10732968608817736921

namespace A233775

/-- `A105321(2*n)/(A043545(2*n)+1)` -/
def P10732968608817736921.Spec : Prop :=
  ∀ n, P10732968608817736921.a n = (A233775 n : ℚ)

end A233775

/-! ## A233775.P15502356319972747690

`A105321(2*n)/A060632(A060632(n+1))`
-/

namespace A233775.P15502356319972747690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105321 (2 * n) : ℚ) / (A060632 (A060632 (n + 1)).toNat : ℚ)

end

end A233775.P15502356319972747690

namespace A233775

/-- `A105321(2*n)/A060632(A060632(n+1))` -/
def P15502356319972747690.Spec : Prop :=
  ∀ n, P15502356319972747690.a n = (A233775 n : ℚ)

end A233775

/-!
# A233776: Number of grid points that are covered on the semi-infinite hexagonal grid after n-th stage in a cellular automaton in which the toothpicks are connected by their endpoints but the toothpicks placed in northwest or northeast direction are prohibited, starting with a(0) = 1.

The programs for A233776, there is no canonical definition to state claims against.
-/

/-! ## A233776.P66702757995291078

`∑[A233777(n)]`
-/

namespace A233776.P66702757995291078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233776.P66702757995291078

/-! ## A233776.P6893736960213422741

`∑[ceil(A105321(n)/(and(1, n)+2))]`
-/

namespace A233776.P6893736960213422741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A105321 n : ℚ) / (Nat.land 1 n + 2 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233776.P6893736960213422741

/-! ## A233776.P7747008223389200871

`A233774(n)-A151566(n)`
-/

namespace A233776.P7747008223389200871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233774 n - A151566 n

end

end A233776.P7747008223389200871

/-! ## A233776.P13172218061760996527

`∑[A237271(A193231(ceil(2^(n-1))))]`
-/

namespace A233776.P13172218061760996527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A193231 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233776.P13172218061760996527

/-!
# A233777: Number of vertices in the n-th row of the toothpick structure of A233776, with a(0) = 1.

The programs for A233777, there is no canonical definition to state claims against.
-/

/-! ## A233777.P13727780986635926349

`ceil(A105321(n)/(and(1, n)+2))`
-/

namespace A233777.P13727780986635926349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A105321 n : ℚ) / (Nat.land 1 n + 2 : ℚ)⌉

end

end A233777.P13727780986635926349

/-! ## A233777.P5767487832926180819

`A233775(n*ratio[gcd(2, n)])/3^(n%2)`
-/

namespace A233777.P5767487832926180819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233775 (SequenceMachineLib.roundAway ((n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))).toNat : ℚ) / (3 ^ (n % 2) : ℚ)

end

end A233777.P5767487832926180819

/-! ## A233777.P6887987908826349073

`A006165(A233775(n))`
-/

namespace A233777.P6887987908826349073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (A233775 n).toNat

end

end A233777.P6887987908826349073

/-! ## A233777.P11784596736254223721

`floor(A105321(n)/A174296(n))`
-/

namespace A233777.P11784596736254223721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A105321 n : ℚ) / (A174296 n : ℚ)⌋

end

end A233777.P11784596736254223721

/-! ## A233777.P17104989010593378720

`ceil(A105321(n)/A010693(n))`
-/

namespace A233777.P17104989010593378720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A105321 n : ℚ) / (A010693 n : ℚ)⌉

end

end A233777.P17104989010593378720

/-! ## A233777.P13707270528863372518

`A105321(n)/A174296(3*n)`
-/

namespace A233777.P13707270528863372518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105321 n : ℚ) / (A174296 (3 * n) : ℚ)

end

end A233777.P13707270528863372518

/-! ## A233777.P7215674147366968696

`A114212(n)-A004526(A001316(n))`
-/

namespace A233777.P7215674147366968696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114212 n - A004526 (A001316 n).toNat

end

end A233777.P7215674147366968696

/-! ## A233777.P9391970735597154597

`A105321(n)/A020639(A008486(n))`
-/

namespace A233777.P9391970735597154597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105321 n : ℚ) / (A020639 (A008486 n).toNat : ℚ)

end

end A233777.P9391970735597154597

/-! ## A233777.P14586088661719320690

`A105321(n)/A006530(A071044(n))`
-/

namespace A233777.P14586088661719320690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105321 n : ℚ) / (A006530 (A071044 n).toNat : ℚ)

end

end A233777.P14586088661719320690

/-! ## A233777.P8020561061397175702

`A105321(n)/A020639(A266593(n+1))`
-/

namespace A233777.P8020561061397175702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105321 n : ℚ) / (A020639 (A266593 (n + 1)).toNat : ℚ)

end

end A233777.P8020561061397175702

/-!
# A233780: Number of toothpicks and D-toothpicks after n-th stage in a D-toothpick "wide" triangle (see Comments lines for definition).

The programs for A233780, there is no canonical definition to state claims against.
-/

/-! ## A233780.P15325991926127585429

`∑[A233781(n)]`
-/

namespace A233780.P15325991926127585429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233781 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233780.P15325991926127585429

/-! ## A233780.P16401741345383934982

`A233781(C(n, n²)+n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A233780.P16401741345383934982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A233781 (Nat.choose n (n ^ 2) + n) + a (n - 1)

end

end A233780.P16401741345383934982

/-! ## A233780.P2781609068352998018

`A233781(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A233780.P2781609068352998018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A233781 n + a (A023443 n).toNat

end

end A233780.P2781609068352998018

/-! ## A233780.P6499607051487419198

`A233781(n)+a(A004273(n)-n)` with `a(0)=0`
-/

namespace A233780.P6499607051487419198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A233781 n + a (A004273 n - (n : ℤ)).toNat

end

end A233780.P6499607051487419198

/-! ## A233780.P13332172981762615220

`A233781(n)+a(n-1-A263013(n+2))` with `a(0)=0`
-/

namespace A233780.P13332172981762615220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A233781 n + a ((n : ℤ) - 1 - A263013 (n + 2)).toNat

end

end A233780.P13332172981762615220

/-! ## A233780.P3482024892205055498

`A233781(n)+a(n-1)*A055396(a(n-1)+1)` with `a(0)=0`
-/

namespace A233780.P3482024892205055498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A233781 n + a (n - 1) * A055396 (a (n - 1) + 1).toNat

end

end A233780.P3482024892205055498

/-! ## A233780.P18139200601390976147

`A233781(n)+a(A052938(A005843(n-1))-1)` with `a(0)=0`
-/

namespace A233780.P18139200601390976147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A233781 n + a (A052938 (A005843 (n - 1)).toNat - 1).toNat

end

end A233780.P18139200601390976147

/-!
# A233781: Number of toothpicks or D-toothpicks added at n-th stage to the structure of the D-toothpick "wide" triangle of A233780.

The programs for A233781, there is no canonical definition to state claims against.
-/

/-! ## A233781.P13174692718144802009

`Δ[A233780(A259361(n²))]`
-/

namespace A233781.P13174692718144802009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233780 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233781.P13174692718144802009

/-! ## A233781.P2696117587307289849

`Δ[A233780(log2(A011782(n)))]`
-/

namespace A233781.P2696117587307289849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233780 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233781.P2696117587307289849

/-! ## A233781.P5251515089010923616

`Δ[A233780(A003056(C(n, 2)))]`
-/

namespace A233781.P5251515089010923616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233780 (A003056 (Nat.choose n 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233781.P5251515089010923616

/-! ## A233781.P18319027250642815430

`Δ[A233780(A004273(n)-n)]`
-/

namespace A233781.P18319027250642815430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233780 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233781.P18319027250642815430

/-! ## A233781.P6826750571219105268

`A233780(n)-A233780((2*n)%(n+1))`
-/

namespace A233781.P6826750571219105268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233780 n - A233780 (2 * n % (n + 1))

end

end A233781.P6826750571219105268

/-! ## A233781.P15623769058004529549

`Δ[A233780(A004526(A004273(n)))]`
-/

namespace A233781.P15623769058004529549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233780 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233781.P15623769058004529549

/-! ## A233781.P14218732665558553796

`Δ[A233780(A004526(A004275(n)))]`
-/

namespace A233781.P14218732665558553796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233780 (A004526 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233781.P14218732665558553796

/-! ## A233781.P12138772204601372390

`Δ[A233780(A014473(A000124(n)))]`
-/

namespace A233781.P12138772204601372390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233780 (A014473 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233781.P12138772204601372390

/-! ## A233781.P7396269017658343220

`Δ[A233780(A002262(A027379(n)))]`
-/

namespace A233781.P7396269017658343220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233780 (A002262 (A027379 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233781.P7396269017658343220

/-! ## A233781.P11454007590232147863

`A233780(n)-A233780(A259361(n²))`
-/

namespace A233781.P11454007590232147863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233780 n - A233780 (A259361 (n ^ 2)).toNat

end

end A233781.P11454007590232147863

/-!
# A233782: a(n) = A233781(n+1)/2.

The programs for A233782, there is no canonical definition to state claims against.
-/

/-! ## A233782.P12839736541087221234

`A233781(n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A233782.P12839736541087221234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233781 (n + 2) : ℚ) / 2

end

end A233782.P12839736541087221234

/-! ## A233782.P706019604049268305

`A001281(A233781(n+2))`
-/

namespace A233782.P706019604049268305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A233781 (n + 2)).toNat

end

end A233782.P706019604049268305

/-! ## A233782.P107405066821600263

`A004524(A233781(n+2)+1)`
-/

namespace A233782.P107405066821600263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A233781 (n + 2) + 1).toNat

end

end A233782.P107405066821600263

/-! ## A233782.P14314783333291605360

`A004526(A233781(n+2)+1)`
-/

namespace A233782.P14314783333291605360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A233781 (n + 2) + 1).toNat

end

end A233782.P14314783333291605360

/-! ## A233782.P16185432040870991760

`A028242(A233781(n+2)+1)`
-/

namespace A233782.P16185432040870991760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A233781 (n + 2) + 1).toNat

end

end A233782.P16185432040870991760

/-! ## A233782.P6464321062011748999

`A123108(A233781(n+2)+1)`
-/

namespace A233782.P6464321062011748999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A233781 (n + 2) + 1).toNat

end

end A233782.P6464321062011748999

/-! ## A233782.P11683192869288843378

`A008619(A233781(n+2)-1)`
-/

namespace A233782.P11683192869288843378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A233781 (n + 2) - 1).toNat

end

end A233782.P11683192869288843378

/-! ## A233782.P2110791100243372378

`A110654(A233781(n+2)-1)`
-/

namespace A233782.P2110791100243372378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A233781 (n + 2) - 1).toNat

end

end A233782.P2110791100243372378

/-! ## A233782.P6967308868395797046

`A002265(2*A233781(n+2))`
-/

namespace A233782.P6967308868395797046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A233781 (n + 2)).toNat

end

end A233782.P6967308868395797046

/-! ## A233782.P18222531161667185476

`A004151(5*A233781(n+2))`
-/

namespace A233782.P18222531161667185476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (5 * A233781 (n + 2)).toNat

end

end A233782.P18222531161667185476

/-!
# A233784: Number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11.

The programs for A233784, there is no canonical definition to state claims against.
-/

/-! ## A233784.P3760140662467979398

`A233792(∑[4*n]+1)`
-/

namespace A233784.P3760140662467979398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233792 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233784.P3760140662467979398

/-! ## A233784.P11699693762145440806

`lcm(2, A233792(A001844(n)))`
-/

namespace A233784.P11699693762145440806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233792 (A001844 n).toNat)

end

end A233784.P11699693762145440806

/-! ## A233784.P238804040864909230

`record[gcd(A003987(n), A233792(n+1))]`
-/

namespace A233784.P238804040864909230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A233792 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233784.P238804040864909230

/-! ## A233784.P9276345979531785276

`A233792(A001844(n))+A035565(n)`
-/

namespace A233784.P9276345979531785276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233792 (A001844 n).toNat + A035565 n

end

end A233784.P9276345979531785276

/-! ## A233784.P10340840592605926229

`A233792(A001844(n))/A007318(∑[n+1])`
-/

namespace A233784.P10340840592605926229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233792 (A001844 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A233784.P10340840592605926229

/-!
# A233785: Number of (n+1) X (1+1) 0..3 arrays with every 2 X 2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11.

The programs for A233785, there is no canonical definition to state claims against.
-/

/-! ## A233785.P7903611680165006973

`A233792(∑[n]+1)`
-/

namespace A233785.P7903611680165006973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233792 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233785.P7903611680165006973

/-! ## A233785.P13114029512710631557

`lcm(2, A233792(A000124(n)))`
-/

namespace A233785.P13114029512710631557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233792 (A000124 n).toNat)

end

end A233785.P13114029512710631557

/-! ## A233785.P2763841701459154039

`record[gcd(A002262(n), A233792(n+1))]`
-/

namespace A233785.P2763841701459154039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A233792 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233785.P2763841701459154039

/-! ## A233785.P16118516223190119729

`record[A233792(n+1)/A126074(n+1)]`
-/

namespace A233785.P16118516223190119729
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233792 (n + 1) : ℚ) / (A126074 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233785.P16118516223190119729

/-! ## A233785.P8440449134067042819

`record[A233792(n+1)/A033282(n+3)]`
-/

namespace A233785.P8440449134067042819
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233792 (n + 1) : ℚ) / (A033282 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233785.P8440449134067042819

/-!
# A233786: Number of (n+1)X(2+1) 0..3 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11.

The programs for A233786, there is no canonical definition to state claims against.
-/

/-! ## A233786.P7916749847223307665

`A233792(∑[n+1]+2)`
-/

namespace A233786.P7916749847223307665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233792 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233786.P7916749847223307665

/-! ## A233786.P3571137834625632382

`lcm(2, A233792(A000096(n)+3))`
-/

namespace A233786.P3571137834625632382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233792 (A000096 n + 3).toNat)

end

end A233786.P3571137834625632382

/-! ## A233786.P209839076293953950

`record[A233792(A133263(abs(1-n)))]`
-/

namespace A233786.P209839076293953950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233792 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233786.P209839076293953950

/-! ## A233786.P1377473856989431651

`record[A233792(A115017(n+1)+2)]`
-/

namespace A233786.P1377473856989431651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233792 (A115017 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233786.P1377473856989431651

/-! ## A233786.P5556431981924251579

`record[gcd(A002262(n), A233792(n+2))]`
-/

namespace A233786.P5556431981924251579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A233792 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233786.P5556431981924251579

/-!
# A233787: Number of (n+1)X(3+1) 0..3 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11.

The programs for A233787, there is no canonical definition to state claims against.
-/

/-! ## A233787.P16689352873035182491

`A233792(∑[n+2]+4)`
-/

namespace A233787.P16689352873035182491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233792 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233787.P16689352873035182491

/-! ## A233787.P12994325638960196045

`lcm(2, A233792(A167614(n+1)))`
-/

namespace A233787.P12994325638960196045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233792 (A167614 (n + 1)).toNat)

end

end A233787.P12994325638960196045

/-! ## A233787.P14033813292983674618

`A233792(A167614(n+1))+A025469(n)`
-/

namespace A233787.P14033813292983674618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233792 (A167614 (n + 1)).toNat + A025469 n

end

end A233787.P14033813292983674618

/-! ## A233787.P12898154725826848389

`A233792(A167614(n+1))%A221017(n)`
-/

namespace A233787.P12898154725826848389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233792 (A167614 (n + 1)).toNat) (A221017 n)

end

end A233787.P12898154725826848389

/-! ## A233787.P10587509431756976882

`A233792(A167614(n+1))+A034452(n+1)`
-/

namespace A233787.P10587509431756976882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233792 (A167614 (n + 1)).toNat + A034452 (n + 1)

end

end A233787.P10587509431756976882

/-!
# A233788: Number of (n+1)X(4+1) 0..3 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11.

The programs for A233788, there is no canonical definition to state claims against.
-/

/-! ## A233788.P7672955908151919382

`A233792(A374004(n+1))`
-/

namespace A233788.P7672955908151919382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233792 (A374004 (n + 1)).toNat

end

end A233788.P7672955908151919382

/-! ## A233788.P15186180046778527121

`A233792(A141214(n)+7)`
-/

namespace A233788.P15186180046778527121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233792 (A141214 n + 7).toNat

end

end A233788.P15186180046778527121

/-! ## A233788.P1869229631530454837

`A233792(A167614(n+2)+1)`
-/

namespace A233788.P1869229631530454837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233792 (A167614 (n + 2) + 1).toNat

end

end A233788.P1869229631530454837

/-! ## A233788.P13744516439672446573

`A233792(A167487(n+2)-3)`
-/

namespace A233788.P13744516439672446573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233792 (A167487 (n + 2) - 3).toNat

end

end A233788.P13744516439672446573

/-! ## A233788.P8568070638869314453

`A233792(A000096(n+2)+5)`
-/

namespace A233788.P8568070638869314453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233792 (A000096 (n + 2) + 5).toNat

end

end A233788.P8568070638869314453

/-!
# A233789: Number of (n+1)X(5+1) 0..3 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11.

The programs for A233789, there is no canonical definition to state claims against.
-/

/-! ## A233789.P7854418595738607850

`A233792(A374005(n+1))`
-/

namespace A233789.P7854418595738607850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233792 (A374005 (n + 1)).toNat

end

end A233789.P7854418595738607850

/-! ## A233789.P12376437637902694232

`A233792(A167499(n+3))`
-/

namespace A233789.P12376437637902694232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233792 (A167499 (n + 3)).toNat

end

end A233789.P12376437637902694232

/-! ## A233789.P12304333279978769671

`A233792(A155212(n)+13)`
-/

namespace A233789.P12304333279978769671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233792 (A155212 n + 13).toNat

end

end A233789.P12304333279978769671

/-! ## A233789.P9456152611098335833

`A233792(A056000(n)+15)`
-/

namespace A233789.P9456152611098335833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233792 (A056000 n + 15).toNat

end

end A233789.P9456152611098335833

/-! ## A233789.P4584949682944543758

`A233792(A167487(n+3)-2)`
-/

namespace A233789.P4584949682944543758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233792 (A167487 (n + 3) - 2).toNat

end

end A233789.P4584949682944543758

/-!
# A233790: Number of (n+1)X(6+1) 0..3 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11.

The programs for A233790, there is no canonical definition to state claims against.
-/

/-! ## A233790.P453131155508833041

`A233792(A374007(n+1))`
-/

namespace A233790.P453131155508833041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233792 (A374007 (n + 1)).toNat

end

end A233790.P453131155508833041

/-! ## A233790.P17450337217216196620

`A233792(Δ[A264443(n)]+10)`
-/

namespace A233790.P17450337217216196620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233792 (f1 (n + 1) - f1 n + 10).toNat

end

end A233790.P17450337217216196620

/-! ## A233790.P5483119674780279827

`A233792(eq[7, A131818(n+1)])`
-/

namespace A233790.P5483119674780279827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233792 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233790.P5483119674780279827

/-! ## A233790.P13592904559197413194

`A233792(Δ[A023545(n+1)]+10)`
-/

namespace A233790.P13592904559197413194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233792 (f1 (n + 1) - f1 n + 10).toNat

end

end A233790.P13592904559197413194

/-! ## A233790.P7373962136018542766

`A233792(A052905(n+3))`
-/

namespace A233790.P7373962136018542766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233792 (A052905 (n + 3)).toNat

end

end A233790.P7373962136018542766

/-!
# A233791: Number of (n+1) X (7+1) 0..3 arrays with every 2 X 2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11.

The programs for A233791, there is no canonical definition to state claims against.
-/

/-! ## A233791.P3663482737058536807

`A233792(A374008(n+1))`
-/

namespace A233791.P3663482737058536807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233792 (A374008 (n + 1)).toNat

end

end A233791.P3663482737058536807

/-! ## A233791.P16589340035970537127

`A233792(A046691(n+4)+11)`
-/

namespace A233791.P16589340035970537127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233792 (A046691 (n + 4) + 11).toNat

end

end A233791.P16589340035970537127

/-! ## A233791.P7717872781425507672

`A233792(eq[8, A131818(n+1)])`
-/

namespace A233791.P7717872781425507672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233792 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233791.P7717872781425507672

/-! ## A233791.P5358632714611685977

`A233792(A055999(n+4))`
-/

namespace A233791.P5358632714611685977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233792 (A055999 (n + 4)).toNat

end

end A233791.P5358632714611685977

/-! ## A233791.P9551453462041539927

`A233792(eq[6, A193592(n)])`
-/

namespace A233791.P9551453462041539927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233792 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233791.P9551453462041539927

/-!
# A233792: T(n,k)=Number of (n+1)X(k+1) 0..3 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11 (11 maximizes T(1,1)).

The programs for A233792, there is no canonical definition to state claims against.
-/

/-! ## A233792.P2801406146698405825

`A233967(n+1)-A010679(A252334(n+1))`
-/

namespace A233792.P2801406146698405825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233967 (n + 1) - A010679 (A252334 (n + 1)).toNat

end

end A233792.P2801406146698405825

/-!
# A233795: Number of triangular numbers between triangular(n) and n^2.

The programs for A233795, there is no canonical definition to state claims against.
-/

/-! ## A233795.P5467440050164375623

`(char[1]+round(n*sqrt(2)))%(n+1)`
-/

namespace A233795.P5467440050164375623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (2 : ℝ))) (n + 1 : ℤ)

end

end A233795.P5467440050164375623

/-! ## A233795.P17133728523605953114

`∑[char[ceil((3/2+n)*(sqrt(2)+1))]]`
-/

namespace A233795.P17133728523605953114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((3 : ℚ) / 2 + (n : ℚ) : ℝ) * (Real.sqrt (2 : ℝ) + 1)⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233795.P17133728523605953114

/-! ## A233795.P10730401945697686593

`ceil(((floor(n*sqrt(8))-n)%(n+1)-1)/2)`
-/

namespace A233795.P10730401945697686593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.tmod (⌊(n : ℝ) * Real.sqrt (8 : ℝ)⌋ - (n : ℤ)) (n + 1 : ℤ) - 1 : ℚ) / 2⌉

end

end A233795.P10730401945697686593

/-! ## A233795.P12170441024875248568

`floor(n*(5*C(n, 2)+n)/(∑[12*n-1]+2))`
-/

namespace A233795.P12170441024875248568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n * (5 * Nat.choose n 2 + n) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℤ) : ℚ)⌋

end

end A233795.P12170441024875248568

/-! ## A233795.P997516054650691834

`comp[A063957(n+2)-1]-n`
-/

namespace A233795.P997516054650691834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063957 (n + 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A233795.P997516054650691834

/-! ## A233795.P4052246642115571108

`log2(A011782(round(n/(sqrt(2)+1))))`
-/

namespace A233795.P4052246642115571108
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A011782 (SequenceMachineLib.roundAway ((n : ℝ) / (Real.sqrt (2 : ℝ) + 1))).toNat : ℝ)

end

end A233795.P4052246642115571108

/-! ## A233795.P15643505795630513124

`comp[A233473(n+1)+n]-n`
-/

namespace A233795.P15643505795630513124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233473 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A233795.P15643505795630513124

/-! ## A233795.P8739986369673785827

`A025581(∑[n]-round(n*sqrt(2)))`
-/

namespace A233795.P8739986369673785827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (2 : ℝ))).toNat

end

end A233795.P8739986369673785827

/-! ## A233795.P10558796786483891628

`A003056(n²-floor(atan(n)))-n`
-/

namespace A233795.P10558796786483891628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((n ^ 2 : ℤ) - ⌊Real.arctan (n : ℝ)⌋).toNat - (n : ℤ)

end

end A233795.P10558796786483891628

/-! ## A233795.P7720912040159706055

`A003056(ceil(n²-atan(n)))-n`
-/

namespace A233795.P7720912040159706055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ⌈(n ^ 2 : ℝ) - Real.arctan (n : ℝ)⌉.toNat - (n : ℤ)

end

end A233795.P7720912040159706055

/-!
# A233796: Number of (n+2)X(1+2) 0..3 arrays with no increasing sequence of length 3 horizontally, vertically or antidiagonally downwards.

The programs for A233796, there is no canonical definition to state claims against.
-/

/-! ## A233796.P2221790113815841448

`A233801(∑[n+1])`
-/

namespace A233796.P2221790113815841448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233801 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233796.P2221790113815841448

/-! ## A233796.P12299027085257190501

`record[root(A233801(n+1), A029653(n))]`
-/

namespace A233796.P12299027085257190501
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233801 (n + 1) : ℝ) ^ (1 / (A029653 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233796.P12299027085257190501

/-! ## A233796.P17530974657089811189

`record[root(A233801(n+1), A038622(n))]`
-/

namespace A233796.P17530974657089811189
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233801 (n + 1) : ℝ) ^ (1 / (A038622 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233796.P17530974657089811189

/-! ## A233796.P16728820753280930663

`record[root(A233801(n+1), A130321(n))]`
-/

namespace A233796.P16728820753280930663
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233801 (n + 1) : ℝ) ^ (1 / (A130321 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233796.P16728820753280930663

/-! ## A233796.P1687947790280691716

`record[root(A233801(n+1), A130330(n))]`
-/

namespace A233796.P1687947790280691716
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233801 (n + 1) : ℝ) ^ (1 / (A130330 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233796.P1687947790280691716

/-!
# A233797: Number of (n+2) X (2+2) 0..3 arrays with no increasing sequence of length 3 horizontally, vertically or antidiagonally downwards.

The programs for A233797, there is no canonical definition to state claims against.
-/

/-! ## A233797.P7492227029626961152

`A233801(∑[n+2])`
-/

namespace A233797.P7492227029626961152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233801 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233797.P7492227029626961152

/-!
# A233798: 

The programs for A233798, there is no canonical definition to state claims against.
-/

/-! ## A233798.P10238436132752619241

`A233801(∑[round(sqrt(n²+1))+3])`
-/

namespace A233798.P10238436132752619241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233801 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A233798.P10238436132752619241

