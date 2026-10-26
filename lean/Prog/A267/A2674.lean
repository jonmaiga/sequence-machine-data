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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C040
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B014.C000
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
# A267400: Number of 7Xn arrays containing n copies of 0..7-1 with every element equal to or 1 greater than any north, west or northeast neighbors modulo 7 and the upper left element equal to 0.

The programs for A267400, there is no canonical definition to state claims against.
-/

/-! ## A267400.P8232106765585484147

`A267392(A167487(n+5))`
-/

namespace A267400.P8232106765585484147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (A167487 (n + 5)).toNat

end

end A267400.P8232106765585484147

/-! ## A267400.P13226177445226941913

`A267392(A056119(n)+28)`
-/

namespace A267400.P13226177445226941913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (A056119 n + 28).toNat

end

end A267400.P13226177445226941913

/-! ## A267400.P2686556792298432788

`A267392(eq[11, A066657(n)])`
-/

namespace A267400.P2686556792298432788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267400.P2686556792298432788

/-! ## A267400.P12782179753573055331

`A267392(A167499(n+5)+2)`
-/

namespace A267400.P12782179753573055331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (A167499 (n + 5) + 2).toNat

end

end A267400.P12782179753573055331

/-! ## A267400.P14078384361474337473

`A267392(A000124(n+6)+6)`
-/

namespace A267400.P14078384361474337473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (A000124 (n + 6) + 6).toNat

end

end A267400.P14078384361474337473

/-!
# A267401: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with every element equal to or 1 greater than any north, west or northwest neighbors modulo n and the upper left element equal to 0.

The programs for A267401, there is no canonical definition to state claims against.
-/

/-! ## A267401.P16681763822777496640

`gcd(A008624(A321312(n)), A060543(n))`
-/

namespace A267401.P16681763822777496640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008624 (A321312 n).toNat) (A060543 n)

end

end A267401.P16681763822777496640

/-! ## A267401.P3535275187059584841

`A053165(A267197(n+1)^A331039(n))`
-/

namespace A267401.P3535275187059584841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (SequenceMachineLib.roundAway ((A267197 (n + 1) : ℚ) ^ (A331039 n : ℤ))).toNat

end

end A267401.P3535275187059584841

/-! ## A267401.P4926251894275144061

`A028310(A267197(n+1)%A309159(n))`
-/

namespace A267401.P4926251894275144061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A267197 (n + 1)) (A309159 n)).toNat

end

end A267401.P4926251894275144061

/-! ## A267401.P18078430013220242349

`A028310(or(A151620(n), A267197(n+1)))`
-/

namespace A267401.P18078430013220242349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lor (A151620 n) (A267197 (n + 1))).toNat

end

end A267401.P18078430013220242349

/-! ## A267401.P10663284573354499407

`A028310(xor(A151620(n), A267197(n+1)))`
-/

namespace A267401.P10663284573354499407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.xor (A151620 n) (A267197 (n + 1))).toNat

end

end A267401.P10663284573354499407

/-!
# A267402: Number of nX(n+2) arrays of permutations of n+2 copies of 0..n-1 with every element equal to or 1 greater than any north, west or northwest neighbors modulo n and the upper left element equal to 0.

The programs for A267402, there is no canonical definition to state claims against.
-/

/-! ## A267402.P7040896436682067546

`A267401(∑[4*(n+1)])`
-/

namespace A267402.P7040896436682067546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267402.P7040896436682067546

/-! ## A267402.P3515105153586351022

`A326548(n)+A267401(A046092(n+1))`
-/

namespace A267402.P3515105153586351022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326548 n + A267401 (A046092 (n + 1)).toNat

end

end A267402.P3515105153586351022

/-! ## A267402.P4876837268285226361

`A267401(A046092(n+1))+A035699(n+1)`
-/

namespace A267402.P4876837268285226361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (A046092 (n + 1)).toNat + A035699 (n + 1)

end

end A267402.P4876837268285226361

/-! ## A267402.P2046742784247179529

`A267401(A046092(n+1))%A135178(n+1)`
-/

namespace A267402.P2046742784247179529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267401 (A046092 (n + 1)).toNat) (A135178 (n + 1))

end

end A267402.P2046742784247179529

/-! ## A267402.P11417615583083656552

`lcm(A095684(n+2), A267401(A046092(n+1)))`
-/

namespace A267402.P11417615583083656552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A095684 (n + 2)) (A267401 (A046092 (n + 1)).toNat)

end

end A267402.P11417615583083656552

/-!
# A267403: Number of nX(n+3) arrays of permutations of n+3 copies of 0..n-1 with every element equal to or 1 greater than any north, west or northwest neighbors modulo n and the upper left element equal to 0.

The programs for A267403, there is no canonical definition to state claims against.
-/

/-! ## A267403.P2559814909614157381

`A267401(A056220(n+2))`
-/

namespace A267403.P2559814909614157381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (A056220 (n + 2)).toNat

end

end A267403.P2559814909614157381

/-! ## A267403.P12490501566611592306

`A267401(A268581(n)+2)`
-/

namespace A267403.P12490501566611592306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (A268581 n + 2).toNat

end

end A267403.P12490501566611592306

/-! ## A267403.P5859276334573514420

`A267401(A161532(n)+6)`
-/

namespace A267403.P5859276334573514420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (A161532 n + 6).toNat

end

end A267403.P5859276334573514420

/-! ## A267403.P5548071832966370117

`A267401(eq[9, A249900(n)])`
-/

namespace A267403.P5548071832966370117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267403.P5548071832966370117

/-! ## A267403.P2543900850379867216

`A267401(Δ[record[A146298(n)]])`
-/

namespace A267403.P2543900850379867216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146298 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (f1 (n + 1) - f1 n).toNat

end

end A267403.P2543900850379867216

/-!
# A267404: Number of nX(n+4) arrays of permutations of n+4 copies of 0..n-1 with every element equal to or 1 greater than any north, west or northwest neighbors modulo n and the upper left element equal to 0.

The programs for A267404, there is no canonical definition to state claims against.
-/

/-! ## A267404.P9513473213392336579

`A267401(C(2*n+5, 2)+n+1)`
-/

namespace A267404.P9513473213392336579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (Nat.choose (2 * n + 5) 2 + (n + 1))

end

end A267404.P9513473213392336579

/-! ## A267404.P7888292572846814396

`A267401(eq[7, A249900(n)])`
-/

namespace A267404.P7888292572846814396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267404.P7888292572846814396

/-! ## A267404.P5943196582431940959

`A267401(Δ[A143941(n+1)])`
-/

namespace A267404.P5943196582431940959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (f1 (n + 1) - f1 n).toNat

end

end A267404.P5943196582431940959

/-! ## A267404.P16319575764496786228

`A267401(A090288(n+1)+1)`
-/

namespace A267404.P16319575764496786228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (A090288 (n + 1) + 1).toNat

end

end A267404.P16319575764496786228

/-! ## A267404.P2224330631517027722

`A267401(A181510(n+1)+5)`
-/

namespace A267404.P2224330631517027722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (A181510 (n + 1) + 5).toNat

end

end A267404.P2224330631517027722

/-!
# A267405: Number of 4Xn arrays containing n copies of 0..4-1 with every element equal to or 1 greater than any north, west or northwest neighbors modulo 4 and the upper left element equal to 0.

The programs for A267405, there is no canonical definition to state claims against.
-/

/-! ## A267405.P15972646710538379374

`A267401(∑[n+3]+7)`
-/

namespace A267405.P15972646710538379374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A267405.P15972646710538379374

/-! ## A267405.P8625803332223179463

`A267401(A055999(n)+10)+char[20]`
-/

namespace A267405.P8625803332223179463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267405.P8625803332223179463

/-! ## A267405.P6689367272331387681

`A267401(A055999(n)+10)%A000108(n+5)`
-/

namespace A267405.P6689367272331387681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267401 (A055999 n + 10).toNat) (A000108 (n + 5))

end

end A267405.P6689367272331387681

/-! ## A267405.P11983297054640902840

`A007318(C(n, 2))*A267401(A055999(n)+10)`
-/

namespace A267405.P11983297054640902840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A267401 (A055999 n + 10).toNat

end

end A267405.P11983297054640902840

/-! ## A267405.P2826931349983687548

`A000108(C(2, n+2))*A267401(A055999(n)+10)`
-/

namespace A267405.P2826931349983687548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A267401 (A055999 n + 10).toNat

end

end A267405.P2826931349983687548

/-!
# A267406: Number of 5Xn arrays containing n copies of 0..5-1 with every element equal to or 1 greater than any north, west or northwest neighbors modulo 5 and the upper left element equal to 0.

The programs for A267406, there is no canonical definition to state claims against.
-/

/-! ## A267406.P8904919000589508407

`A267401(A167499(n+3))`
-/

namespace A267406.P8904919000589508407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (A167499 (n + 3)).toNat

end

end A267406.P8904919000589508407

/-! ## A267406.P7176788566444482580

`A267401(A155212(n)+13)`
-/

namespace A267406.P7176788566444482580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (A155212 n + 13).toNat

end

end A267406.P7176788566444482580

/-! ## A267406.P12800566117964861475

`A267401(A056000(n)+15)`
-/

namespace A267406.P12800566117964861475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (A056000 n + 15).toNat

end

end A267406.P12800566117964861475

/-! ## A267406.P5543725866860902692

`A267401(eq[7, A066657(n)])`
-/

namespace A267406.P5543725866860902692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267406.P5543725866860902692

/-! ## A267406.P13160163565918806215

`A267401(A167614(n+3)+2)`
-/

namespace A267406.P13160163565918806215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (A167614 (n + 3) + 2).toNat

end

end A267406.P13160163565918806215

/-!
# A267407: Number of 6Xn arrays containing n copies of 0..6-1 with every element equal to or 1 greater than any north, west or northwest neighbors modulo 6 and the upper left element equal to 0.

The programs for A267407, there is no canonical definition to state claims against.
-/

/-! ## A267407.P17845576819011889899

`A267401(A056115(n)+21)`
-/

namespace A267407.P17845576819011889899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (A056115 n + 21).toNat

end

end A267407.P17845576819011889899

/-! ## A267407.P15043435794947525045

`A267401(eq[6, A256910(n)])`
-/

namespace A267407.P15043435794947525045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267407.P15043435794947525045

/-! ## A267407.P7122961007091580551

`A267401(A167614(n+4)+3)`
-/

namespace A267407.P7122961007091580551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (A167614 (n + 4) + 3).toNat

end

end A267407.P7122961007091580551

/-! ## A267407.P7835417460673228154

`A267401(A133263(n+5)+4)`
-/

namespace A267407.P7835417460673228154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (A133263 (n + 5) + 4).toNat

end

end A267407.P7835417460673228154

/-! ## A267407.P16857690969547350723

`A267401(A000124(n+5)+5)`
-/

namespace A267407.P16857690969547350723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (A000124 (n + 5) + 5).toNat

end

end A267407.P16857690969547350723

/-!
# A267408: Number of 7Xn arrays containing n copies of 0..7-1 with every element equal to or 1 greater than any north, west or northwest neighbors modulo 7 and the upper left element equal to 0.

The programs for A267408, there is no canonical definition to state claims against.
-/

/-! ## A267408.P1033088351199330200

`A267401(A167487(n+5))`
-/

namespace A267408.P1033088351199330200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (A167487 (n + 5)).toNat

end

end A267408.P1033088351199330200

/-! ## A267408.P5773081835084798980

`A267401(A056119(n)+28)`
-/

namespace A267408.P5773081835084798980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (A056119 n + 28).toNat

end

end A267408.P5773081835084798980

/-! ## A267408.P2227634882377141033

`A267401(eq[11, A066657(n)])`
-/

namespace A267408.P2227634882377141033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267408.P2227634882377141033

/-! ## A267408.P866765247887724180

`A267401(A000124(n+6)+6)`
-/

namespace A267408.P866765247887724180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (A000124 (n + 6) + 6).toNat

end

end A267408.P866765247887724180

/-! ## A267408.P11098032031402598572

`A267401(A000096(n+5)+8)`
-/

namespace A267408.P11098032031402598572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267401 (A000096 (n + 5) + 8).toNat

end

end A267408.P11098032031402598572

/-!
# A267414: Integers k such that there exist nonnegative integers x,y,z with k! = x^3 + y^3 + z^3.

The programs for A267414, there is no canonical definition to state claims against.
-/

/-! ## A267414.P12132249441239372522

`lt[n, A165026(A156819(3*n+4))]`
-/

namespace A267414.P12132249441239372522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165026 (A156819 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A267414.P12132249441239372522

/-!
# A267415: Integers k such that k^k = (x^3 + y^3) / 2 where x, y > 0, is soluble.

The programs for A267415, there is no canonical definition to state claims against.
-/

/-! ## A267415.P15445955218581464174

`and(∪[3*n, n^3], A356877(n))`
-/

namespace A267415.P15445955218581464174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℤ) (A356877 n)

end

end A267415.P15445955218581464174

/-! ## A267415.P13282142895572235258

`∪[3*n, n^3]%A376275(n+1)`
-/

namespace A267415.P13282142895572235258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℤ) (A376275 (n + 1))

end

end A267415.P13282142895572235258

/-! ## A267415.P14597680915418791124

`and(A356877(n), A376279(n+1))`
-/

namespace A267415.P14597680915418791124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A356877 n) (A376279 (n + 1))

end

end A267415.P14597680915418791124

/-! ## A267415.P4774641232478937754

`A376279(n+1)%A376275(n+1)`
-/

namespace A267415.P4774641232478937754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376279 (n + 1)) (A376275 (n + 1))

end

end A267415.P4774641232478937754

/-!
# A267416: Perfect powers of the form x^3 + y^3 where x and y are distinct positive integers.

The programs for A267416, there is no canonical definition to state claims against.
-/

/-! ## A267416.P3437397900095193341

`∩[A001597(n+1), A024670(n+1)]`
-/

namespace A267416.P3437397900095193341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267416.P3437397900095193341

/-! ## A267416.P12020393888998094339

`∩[A024670(n+1), abs(A157985(n+1))]`
-/

namespace A267416.P12020393888998094339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157985 (n + 1)|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267416.P12020393888998094339

/-! ## A267416.P15487346365224848338

`∩[A024670(n+1), A053289(n)+a(n-1)]` with `a(0)=1`
-/

namespace A267416.P15487346365224848338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A053289 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267416.P15487346365224848338

/-! ## A267416.P1410940898031838546

`∩[A024670(n+1), ∪[(n+1)², A076467(n+1)]]`
-/

namespace A267416.P1410940898031838546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A267416.P1410940898031838546

/-!
# A267417: Triangle read by rows giving successive states of cellular automaton generated by "Rule 129" initiated with a single ON (black) cell.

The programs for A267417, there is no canonical definition to state claims against.
-/

/-! ## A267417.P5799095347970249562

`(1-A071035(n))^n`
-/

namespace A267417.P5799095347970249562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A071035 n) ^ n

end

end A267417.P5799095347970249562

/-! ## A267417.P8761605436917024916

`A054977(n)-A071035(n)`
-/

namespace A267417.P8761605436917024916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A071035 n

end

end A267417.P8761605436917024916

/-! ## A267417.P4565035141592645985

`A000007(n*A071035(n))`
-/

namespace A267417.P4565035141592645985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A071035 n).toNat

end

end A267417.P4565035141592645985

/-! ## A267417.P13088566008129679552

`xor(A057427(n), A071035(n))`
-/

namespace A267417.P13088566008129679552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A071035 n)

end

end A267417.P13088566008129679552

/-! ## A267417.P11630610261385055396

`A004442(a(1-A071035(n)))` with `a(0)=1`
-/

namespace A267417.P11630610261385055396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004442 (a (1 - A071035 n).toNat).toNat

end

end A267417.P11630610261385055396

/-! ## A267417.P1214192857240430289

`A004442(a(xor(1, A071035(n))))` with `a(0)=1`
-/

namespace A267417.P1214192857240430289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004442 (a (Int.xor 1 (A071035 n)).toNat).toNat

end

end A267417.P1214192857240430289

/-! ## A267417.P4917467961922645372

`1-A057427(n*A071035(n))`
-/

namespace A267417.P4917467961922645372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057427 ((n : ℤ) * A071035 n).toNat

end

end A267417.P4917467961922645372

/-! ## A267417.P586654351387743576

`A036987(2*n*A071035(n))`
-/

namespace A267417.P586654351387743576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * ((n : ℤ) * A071035 n)).toNat

end

end A267417.P586654351387743576

/-! ## A267417.P156231248889529955

`(n/A028310(n)-A071035(n))²`
-/

namespace A267417.P156231248889529955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (A028310 n : ℚ) - (A071035 n : ℚ)) ^ 2

end

end A267417.P156231248889529955

/-! ## A267417.P14009997511808179038

`A071035(a(n-1))-A071035(n)` with `a(0)=1`
-/

namespace A267417.P14009997511808179038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A071035 (a (n - 1)).toNat - A071035 n

end

end A267417.P14009997511808179038

/-! ## A267417.P13237446014053167719

`A036987(A001316(n*A071035(n)))`
-/

namespace A267417.P13237446014053167719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A001316 ((n : ℤ) * A071035 n).toNat).toNat

end

end A267417.P13237446014053167719

/-! ## A267417.P2661670341273724963

`A036987(A001316(n)+A071035(n)-1)`
-/

namespace A267417.P2661670341273724963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A001316 n + (A071035 n - 1)).toNat

end

end A267417.P2661670341273724963

/-! ## A267417.P17721416731045949990

`A036987(A001316(n)-(1-A071035(n)))`
-/

namespace A267417.P17721416731045949990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A001316 n - (1 - A071035 n)).toNat

end

end A267417.P17721416731045949990

/-! ## A267417.P14197279779590126245

`A007947(A071042(n)+A071035(n))%2`
-/

namespace A267417.P14197279779590126245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007947 (A071042 n + A071035 n).toNat) 2

end

end A267417.P14197279779590126245

/-! ## A267417.P10477719304406506937

`A020639(A071042(n)+A071035(n))%2`
-/

namespace A267417.P10477719304406506937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A071042 n + A071035 n).toNat) 2

end

end A267417.P10477719304406506937

/-! ## A267417.P1162386182644486087

`A327405(A071042(n)+A071035(n))%2`
-/

namespace A267417.P1162386182644486087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327405 (A071042 n + A071035 n).toNat) 2

end

end A267417.P1162386182644486087

/-! ## A267417.P3632348908229580303

`char[eq[A000007(n), A071035(n)]]`
-/

namespace A267417.P3632348908229580303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071035 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A267417.P3632348908229580303

/-! ## A267417.P589440492395612505

`A007814(A071042(n*A071035(n))+2)`
-/

namespace A267417.P589440492395612505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A071042 ((n : ℤ) * A071035 n).toNat + 2).toNat

end

end A267417.P589440492395612505

/-! ## A267417.P7417577976399354128

`A007814(∏{p}[A071042(n)+A071035(n)+1, #])`
-/

namespace A267417.P7417577976399354128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071042 n + A071035 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A267417.P7417577976399354128

/-! ## A267417.P407788502887396102

`A036987(A169699(n*A071035(n)))`
-/

namespace A267417.P407788502887396102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A169699 ((n : ℤ) * A071035 n).toNat).toNat

end

end A267417.P407788502887396102

/-!
# A267418: Triangle read by rows giving successive states of cellular automaton generated by "Rule 131" initiated with a single ON (black) cell.

The programs for A267418, there is no canonical definition to state claims against.
-/

/-! ## A267418.P8435215665199151019

`A262805(A020703(n+1)-1)`
-/

namespace A267418.P8435215665199151019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262805 (A020703 (n + 1) - 1).toNat

end

end A267418.P8435215665199151019

/-! ## A267418.P2479896687232416490

`A262805(A020703(n+2))+A000007(n)`
-/

namespace A267418.P2479896687232416490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262805 (A020703 (n + 2)).toNat + A000007 n

end

end A267418.P2479896687232416490

/-! ## A267418.P17799544923305249818

`A262805(A020703(n+2)*A057427(n))`
-/

namespace A267418.P17799544923305249818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262805 (A020703 (n + 2) * A057427 n).toNat

end

end A267418.P17799544923305249818

/-! ## A267418.P13225160997205591051

`A262805(A020703(n+2)%A005408(n))`
-/

namespace A267418.P13225160997205591051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262805 (Int.tmod (A020703 (n + 2)) (A005408 n)).toNat

end

end A267418.P13225160997205591051

/-! ## A267418.P10672587692609950373

`A262805(A020703(n+2)*A347523(2*n+1))`
-/

namespace A267418.P10672587692609950373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262805 (A020703 (n + 2) * A347523 (2 * n + 1)).toNat

end

end A267418.P10672587692609950373

/-!
# A267421: Primes of the form prime(n) + n + n^2.

The programs for A267421, the canonical program `A267421.P8160187547805568179` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267421 has offset 1).

The definition of A267421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267421.P13065655556556608579

`p?[p?[comp[n²]]+∑[2*(n+1)]]`
-/

namespace A267421.P13065655556556608579
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + ∑ j ∈ Finset.range (n + 1), f4 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A267421.P13065655556556608579

namespace A267421

/-- `p?[p?[comp[n²]]+∑[2*(n+1)]]` -/
def P13065655556556608579.Spec : Prop :=
  ∀ n, (P13065655556556608579.a n : ℤ) = A267421 (n + 1)

end A267421

/-! ## A267421.P565795247013004493

`p?[A167136(n+1)+n²]`
-/

namespace A267421.P565795247013004493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167136 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267421.P565795247013004493

namespace A267421

/-- `p?[A167136(n+1)+n²]` -/
def P565795247013004493.Spec : Prop :=
  ∀ n, P565795247013004493.a n = A267421 (n + 1)

end A267421

/-! ## A267421.P8160187547805568179

`p?[A004232(n+1)+1+n]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A267421

/-- `p?[A004232(n+1)+1+n]` -/
def P8160187547805568179.Spec : Prop :=
  ∀ n, P8160187547805568179.a n = A267421 (n + 1)

theorem P8160187547805568179.correct : P8160187547805568179.Spec := by
  intro n
  simp only [A267421, Nat.add_sub_cancel]

end A267421

/-! ## A267421.P4094782694038809306

`p?[A014688(n+1)+(n+1)²]`
-/

namespace A267421.P4094782694038809306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267421.P4094782694038809306

namespace A267421

/-- `p?[A014688(n+1)+(n+1)²]` -/
def P4094782694038809306.Spec : Prop :=
  ∀ n, P4094782694038809306.a n = A267421 (n + 1)

end A267421

/-! ## A267421.P11922574476425531426

`p?[A162177(n+1)+(n+1)²]`
-/

namespace A267421.P11922574476425531426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162177 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267421.P11922574476425531426

namespace A267421

/-- `p?[A162177(n+1)+(n+1)²]` -/
def P11922574476425531426.Spec : Prop :=
  ∀ n, P11922574476425531426.a n = A267421 (n + 1)

end A267421

/-! ## A267421.P11299929423387953693

`p?[A008578(n+1)+∑[2*n]]`
-/

namespace A267421.P11299929423387953693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267421.P11299929423387953693

namespace A267421

/-- `p?[A008578(n+1)+∑[2*n]]` -/
def P11299929423387953693.Spec : Prop :=
  ∀ n, P11299929423387953693.a n = A267421 (n + 1)

end A267421

/-! ## A267421.P3587510463812327831

`p?[A158611(n+2)+∑[2*n]]`
-/

namespace A267421.P3587510463812327831
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267421.P3587510463812327831

namespace A267421

/-- `p?[A158611(n+2)+∑[2*n]]` -/
def P3587510463812327831.Spec : Prop :=
  ∀ n, P3587510463812327831.a n = A267421 (n + 1)

end A267421

/-! ## A267421.P11522102840346099197

`p?[∑[2*(n+1)]+A000040(n+1)]`
-/

namespace A267421.P11522102840346099197
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267421.P11522102840346099197

namespace A267421

/-- `p?[∑[2*(n+1)]+A000040(n+1)]` -/
def P11522102840346099197.Spec : Prop :=
  ∀ n, P11522102840346099197.a n = A267421 (n + 1)

end A267421

/-! ## A267421.P6623661575866234824

`p?[Δ[A007504(n)]+(n+2)*(n+1)]`
-/

namespace A267421.P6623661575866234824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + ((n + 2) * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267421.P6623661575866234824

namespace A267421

/-- `p?[Δ[A007504(n)]+(n+2)*(n+1)]` -/
def P6623661575866234824.Spec : Prop :=
  ∀ n, P6623661575866234824.a n = A267421 (n + 1)

end A267421

/-! ## A267421.P6083222398301836478

`p?[A000040(n+2)+(n+2)*(n+3)]`
-/

namespace A267421.P6083222398301836478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + ((n + 2) * (n + 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267421.P6083222398301836478

namespace A267421

/-- `p?[A000040(n+2)+(n+2)*(n+3)]` -/
def P6083222398301836478.Spec : Prop :=
  ∀ n, P6083222398301836478.a n = A267421 (n + 1)

end A267421

/-! ## A267421.P5533000773390282228

`p?[record[A006530(n+2)]+∑[2*(n+1)]]`
-/

namespace A267421.P5533000773390282228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267421.P5533000773390282228

namespace A267421

/-- `p?[record[A006530(n+2)]+∑[2*(n+1)]]` -/
def P5533000773390282228.Spec : Prop :=
  ∀ n, P5533000773390282228.a n = A267421 (n + 1)

end A267421

/-! ## A267421.P1405403381147381480

`p?[p?[A352844(n)]+(n+1)²+1+n]`
-/

namespace A267421.P1405403381147381480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352844 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + ((n + 1) ^ 2 + 1 : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267421.P1405403381147381480

namespace A267421

/-- `p?[p?[A352844(n)]+(n+1)²+1+n]` -/
def P1405403381147381480.Spec : Prop :=
  ∀ n, P1405403381147381480.a n = A267421 (n + 1)

end A267421

/-! ## A267421.P7272074682412307599

`p?[(n+1)²+n+A006093(n+1)+2]`
-/

namespace A267421.P7272074682412307599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + n : ℤ) + (A006093 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267421.P7272074682412307599

namespace A267421

/-- `p?[(n+1)²+n+A006093(n+1)+2]` -/
def P7272074682412307599.Spec : Prop :=
  ∀ n, P7272074682412307599.a n = A267421 (n + 1)

theorem P7272074682412307599.correct : P7272074682412307599.Spec := by
  intro n
  simp only [A267421, Nat.add_sub_cancel, A267421.P7272074682412307599.f1, A267421.P7272074682412307599.a, A267421.P8160187547805568179.f1, A267421.P8160187547805568179.a, A004232, A004232.P3456609317362794228.a, A006093, A006093.P2906174024863549003.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267421

/-! ## A267421.P3240821552218489960

`p?[∑[A054541(n+1)]+(n+2)*(n+1)]`
-/

namespace A267421.P3240821552218489960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + ((n + 2) * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267421.P3240821552218489960

namespace A267421

/-- `p?[∑[A054541(n+1)]+(n+2)*(n+1)]` -/
def P3240821552218489960.Spec : Prop :=
  ∀ n, P3240821552218489960.a n = A267421 (n + 1)

end A267421

/-! ## A267421.P4098160404738172362

`p?[A209259(n)+A131723(n)]`
-/

namespace A267421.P4098160404738172362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209259 n + A131723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267421.P4098160404738172362

namespace A267421

/-- `p?[A209259(n)+A131723(n)]` -/
def P4098160404738172362.Spec : Prop :=
  ∀ n, P4098160404738172362.a n = A267421 (n + 1)

end A267421

/-! ## A267421.P13573452002507698838

`p?[A028387(n)+A000040(n+1)+1]`
-/

namespace A267421.P13573452002507698838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n + (A000040 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267421.P13573452002507698838

namespace A267421

/-- `p?[A028387(n)+A000040(n+1)+1]` -/
def P13573452002507698838.Spec : Prop :=
  ∀ n, P13573452002507698838.a n = A267421 (n + 1)

theorem P13573452002507698838.correct : P13573452002507698838.Spec := by
  intro n
  simp only [A267421, Nat.add_sub_cancel, A267421.P13573452002507698838.f1, A267421.P13573452002507698838.a, A267421.P8160187547805568179.f1, A267421.P8160187547805568179.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A004232, A004232.P3456609317362794228.a, A028387, A028387.P5954590561330899546.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267421

/-! ## A267421.P5298567992983903140

`p?[A028552(n)+A000040(n+1)+2]`
-/

namespace A267421.P5298567992983903140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 n + (A000040 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267421.P5298567992983903140

namespace A267421

/-- `p?[A028552(n)+A000040(n+1)+2]` -/
def P5298567992983903140.Spec : Prop :=
  ∀ n, P5298567992983903140.a n = A267421 (n + 1)

theorem P5298567992983903140.correct : P5298567992983903140.Spec := by
  intro n
  simp only [A267421, Nat.add_sub_cancel, A267421.P5298567992983903140.f1, A267421.P5298567992983903140.a, A267421.P8160187547805568179.f1, A267421.P8160187547805568179.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A004232, A004232.P3456609317362794228.a, A028552, A028552.P13982725828206412774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A267421

/-!
# A267422: Largest prime factor of the largest squarefree practical number comprising n prime factors.

The programs for A267422, there is no canonical definition to state claims against.
-/

/-! ## A267422.P1931258231999247848

`A053001(A143592(n)+a(n-1))` with `a(0)=2`
-/

namespace A267422.P1931258231999247848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A053001 (A143592 n + a (n - 1)).toNat

end

end A267422.P1931258231999247848

/-!
# A267423: Triangle read by rows giving successive states of cellular automaton generated by "Rule 133" initiated with a single ON (black) cell.

The programs for A267423, the canonical program `A267423.P14088695122642526854` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267423 has offset 0).

The definition of A267423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267423.P14088695122642526854

`A267525(n)*A267676(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A267423

/-- `A267525(n)*A267676(n)` -/
def P14088695122642526854.Spec : Prop :=
  ∀ n, P14088695122642526854.a n = A267423 n

theorem P14088695122642526854.correct : P14088695122642526854.Spec := by
  intro n
  simp only [A267423]

end A267423

/-! ## A267423.P6079509011659649157

`A267525(A020703(n+1)-1)*A267525(n)`
-/

namespace A267423.P6079509011659649157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267525 (A020703 (n + 1) - 1).toNat * A267525 n

end

end A267423.P6079509011659649157

namespace A267423

/-- `A267525(A020703(n+1)-1)*A267525(n)` -/
def P6079509011659649157.Spec : Prop :=
  ∀ n, P6079509011659649157.a n = A267423 n

end A267423

/-! ## A267423.P7893599119850760225

`and(1, A118102(n)+A051698(n+1))`
-/

namespace A267423.P7893599119850760225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A118102 n + A051698 (n + 1))

end

end A267423.P7893599119850760225

namespace A267423

/-- `and(1, A118102(n)+A051698(n+1))` -/
def P7893599119850760225.Spec : Prop :=
  ∀ n, P7893599119850760225.a n = A267423 n

end A267423

/-! ## A267423.P4030584964823385027

`A267676(A020703(n+2))*A267676(n)`
-/

namespace A267423.P4030584964823385027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267676 (A020703 (n + 2)).toNat * A267676 n

end

end A267423.P4030584964823385027

namespace A267423

/-- `A267676(A020703(n+2))*A267676(n)` -/
def P4030584964823385027.Spec : Prop :=
  ∀ n, P4030584964823385027.a n = A267423 n

end A267423

/-! ## A267423.P5715803801810188084

`A323153(A118102(n)+A000040(n+1))`
-/

namespace A267423.P5715803801810188084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323153 (A118102 n + A000040 (n + 1)).toNat

end

end A267423.P5715803801810188084

namespace A267423

/-- `A323153(A118102(n)+A000040(n+1))` -/
def P5715803801810188084.Spec : Prop :=
  ∀ n, P5715803801810188084.a n = A267423 n

end A267423

/-! ## A267423.P12433375689360447036

`char[A183569(n+1)*A267687(n)]*A267525(n)`
-/

namespace A267423.P12433375689360447036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183569 (n + 1) * A267687 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A267525 n

end

end A267423.P12433375689360447036

namespace A267423

/-- `char[A183569(n+1)*A267687(n)]*A267525(n)` -/
def P12433375689360447036.Spec : Prop :=
  ∀ n, P12433375689360447036.a n = A267423 n

end A267423

/-! ## A267423.P1324812935120908095

`A010052(A139609(n*A118102(n)))`
-/

namespace A267423.P1324812935120908095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A139609 ((n : ℤ) * A118102 n).toNat).toNat

end

end A267423.P1324812935120908095

namespace A267423

/-- `A010052(A139609(n*A118102(n)))` -/
def P1324812935120908095.Spec : Prop :=
  ∀ n, P1324812935120908095.a n = A267423 n

end A267423

/-! ## A267423.P10453654998345660401

`A118102(A118102(n)*A139609(n)+1)`
-/

namespace A267423.P10453654998345660401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118102 (A118102 n * A139609 n + 1).toNat

end

end A267423.P10453654998345660401

namespace A267423

/-- `A118102(A118102(n)*A139609(n)+1)` -/
def P10453654998345660401.Spec : Prop :=
  ∀ n, P10453654998345660401.a n = A267423 n

end A267423

/-! ## A267423.P1133171995928338289

`A118102(A139609(n)+A118102(n))`
-/

namespace A267423.P1133171995928338289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118102 (A139609 n + A118102 n).toNat

end

end A267423.P1133171995928338289

namespace A267423

/-- `A118102(A139609(n)+A118102(n))` -/
def P1133171995928338289.Spec : Prop :=
  ∀ n, P1133171995928338289.a n = A267423 n

end A267423

/-! ## A267423.P10025561448099572825

`A178225(((n+1)*A118102(n))²)`
-/

namespace A267423.P10025561448099572825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 (((n + 1 : ℤ) * A118102 n) ^ 2).toNat

end

end A267423.P10025561448099572825

namespace A267423

/-- `A178225(((n+1)*A118102(n))²)` -/
def P10025561448099572825.Spec : Prop :=
  ∀ n, P10025561448099572825.a n = A267423 n

end A267423

/-! ## A267423.P1875121216429594348

`A000035(A140957(A057979(n+1))+1+n)`
-/

namespace A267423.P1875121216429594348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A140957 (A057979 (n + 1)).toNat + 1 + (n : ℤ)).toNat

end

end A267423.P1875121216429594348

namespace A267423

/-- `A000035(A140957(A057979(n+1))+1+n)` -/
def P1875121216429594348.Spec : Prop :=
  ∀ n, P1875121216429594348.a n = A267423 n

end A267423

/-!
# A267424: Fibonacci numbers that are not of the form x^2 + y^2 + z^2 where x, y and z are integers.

The programs for A267424, there is no canonical definition to state claims against.
-/

/-! ## A267424.P5169217502096827890

`A181156(3*(n+1)+n)`
-/

namespace A267424.P5169217502096827890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181156 (3 * (n + 1) + n)

end

end A267424.P5169217502096827890

/-! ## A267424.P1179464527522300094

`A103134(A000005(record[(-3)^ceil(n/2)]))`
-/

namespace A267424.P1179464527522300094
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-3 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103134 (A000005 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat).toNat

end

end A267424.P1179464527522300094

/-!
# A267425: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with every element equal to or 1 greater than any west, northeast or northwest neighbors modulo n and the upper left element equal to 0.

The programs for A267425, there is no canonical definition to state claims against.
-/

/-! ## A267425.P14426601045430970696

`A267562(n+1)/A121698(A229243(n))`
-/

namespace A267425.P14426601045430970696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267562 (n + 1) : ℚ) / (A121698 (A229243 n).toNat : ℚ)

end

end A267425.P14426601045430970696

/-! ## A267425.P15883482274298684046

`gcd(A064680(A350462(n)), A266994(n+1))`
-/

namespace A267425.P15883482274298684046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064680 (A350462 n).toNat) (A266994 (n + 1))

end

end A267425.P15883482274298684046

/-! ## A267425.P15933586170392350119

`gcd(A126988(A056371(n+1)), A267562(n+1))`
-/

namespace A267425.P15933586170392350119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126988 (A056371 (n + 1)).toNat) (A267562 (n + 1))

end

end A267425.P15933586170392350119

/-! ## A267425.P5844694007134755857

`A267562(lt[A307739(n), n+1])`
-/

namespace A267425.P5844694007134755857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307739 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A267425.P5844694007134755857

/-! ## A267425.P17611973282582073203

`A267562(lt[A143095(n), A191893(3*n+2)])`
-/

namespace A267425.P17611973282582073203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191893 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A267425.P17611973282582073203

/-!
# A267426: Number of 4Xn arrays containing n copies of 0..4-1 with every element equal to or 1 greater than any west, northeast or northwest neighbors modulo 4 and the upper left element equal to 0.

The programs for A267426, there is no canonical definition to state claims against.
-/

/-! ## A267426.P3633385979880985869

`A267425(A141214(n)+7)`
-/

namespace A267426.P3633385979880985869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267425 (A141214 n + 7).toNat

end

end A267426.P3633385979880985869

/-! ## A267426.P4307215749919812362

`A267425(A052905(n)+9)`
-/

namespace A267426.P4307215749919812362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267425 (A052905 n + 9).toNat

end

end A267426.P4307215749919812362

/-! ## A267426.P7877931473047155688

`A267425(A055999(n)+10)`
-/

namespace A267426.P7877931473047155688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267425 (A055999 n + 10).toNat

end

end A267426.P7877931473047155688

/-! ## A267426.P334276644796395224

`A267425(A167614(n+2)+1)`
-/

namespace A267426.P334276644796395224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267425 (A167614 (n + 2) + 1).toNat

end

end A267426.P334276644796395224

/-! ## A267426.P3159132244132209631

`A267425(A166136(n+2)-2)`
-/

namespace A267426.P3159132244132209631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267425 (A166136 (n + 2) - 2).toNat

end

end A267426.P3159132244132209631

/-!
# A267427: Number of 5Xn arrays containing n copies of 0..5-1 with every element equal to or 1 greater than any west, northeast or northwest neighbors modulo 5 and the upper left element equal to 0.

The programs for A267427, there is no canonical definition to state claims against.
-/

/-! ## A267427.P8957728380019132227

`A267425(A077169(n+5))`
-/

namespace A267427.P8957728380019132227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267425 (A077169 (n + 5)).toNat

end

end A267427.P8957728380019132227

/-! ## A267427.P419413121698009217

`A267425(A000124(n+4)+4)`
-/

namespace A267427.P419413121698009217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267425 (A000124 (n + 4) + 4).toNat

end

end A267427.P419413121698009217

/-! ## A267427.P1150633067290150289

`A267425(A000096(n+3)+6)`
-/

namespace A267427.P1150633067290150289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267425 (A000096 (n + 3) + 6).toNat

end

end A267427.P1150633067290150289

/-! ## A267427.P13566169473978022180

`A267425(A000217(n+4)+5)`
-/

namespace A267427.P13566169473978022180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267425 (A000217 (n + 4) + 5).toNat

end

end A267427.P13566169473978022180

/-! ## A267427.P9855247352098751667

`A267425(A052905(n+3)-(2*n+1))`
-/

namespace A267427.P9855247352098751667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267425 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A267427.P9855247352098751667

/-!
# A267428: Number of 6Xn arrays containing n copies of 0..6-1 with every element equal to or 1 greater than any west, northeast or northwest neighbors modulo 6 and the upper left element equal to 0.

The programs for A267428, there is no canonical definition to state claims against.
-/

/-! ## A267428.P14271346079579965444

`A267425(A000217(n+5)+6)`
-/

namespace A267428.P14271346079579965444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267425 (A000217 (n + 5) + 6).toNat

end

end A267428.P14271346079579965444

/-! ## A267428.P8648124947516326657

`A267425(A141214(n+2)+9)`
-/

namespace A267428.P8648124947516326657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267425 (A141214 (n + 2) + 9).toNat

end

end A267428.P8648124947516326657

/-! ## A267428.P8631424831296807186

`A267425(A161680(n+6)+6)`
-/

namespace A267428.P8631424831296807186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267425 (A161680 (n + 6) + 6).toNat

end

end A267428.P8631424831296807186

/-! ## A267428.P17215489544498342024

`A267425(A055999(n+4)-A005408(n))`
-/

namespace A267428.P17215489544498342024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267425 (A055999 (n + 4) - A005408 n).toNat

end

end A267428.P17215489544498342024

/-! ## A267428.P18326858190498588394

`A267425(A005843(n+7)+A000124(n+3))`
-/

namespace A267428.P18326858190498588394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267425 (A005843 (n + 7) + A000124 (n + 3)).toNat

end

end A267428.P18326858190498588394

/-!
# A267429: Number of 7 X n arrays containing n copies of 0..7-1 with every element equal to or 1 greater than any west, northeast or northwest neighbors modulo 7 and the upper left element equal to 0.

The programs for A267429, there is no canonical definition to state claims against.
-/

/-! ## A267429.P10189229552534868715

`A267425(A056119(n)+28)`
-/

namespace A267429.P10189229552534868715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267425 (A056119 n + 28).toNat

end

end A267429.P10189229552534868715

/-! ## A267429.P2047116070057669719

`A267425(eq[11, A066657(n)])`
-/

namespace A267429.P2047116070057669719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267425 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267429.P2047116070057669719

/-! ## A267429.P811961007247133805

`A267425(A166136(n+5)+1)`
-/

namespace A267429.P811961007247133805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267425 (A166136 (n + 5) + 1).toNat

end

end A267429.P811961007247133805

/-! ## A267429.P10949342835738423727

`A267425(A155212(n+2)+15)`
-/

namespace A267429.P10949342835738423727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267425 (A155212 (n + 2) + 15).toNat

end

end A267429.P10949342835738423727

/-! ## A267429.P6451449754911352296

`A267425(eq[8, A131818(n+1)])`
-/

namespace A267429.P6451449754911352296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267425 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267429.P6451449754911352296

/-!
# A267430: Squares whose digit sum is not a prime.

The programs for A267430, the canonical program `A267430.P7614672471199093547` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267430 has offset 1).

The definition of A267430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7395 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267430.P3067680986561984544

`eq[0, A055671(A004159(n))]²`
-/

namespace A267430.P3067680986561984544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A004159 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A267430.P3067680986561984544

namespace A267430

/-- `eq[0, A055671(A004159(n))]²` -/
def P3067680986561984544.Spec : Prop :=
  ∀ n, (P3067680986561984544.a n : ℤ) = A267430 (n + 1)

end A267430

/-! ## A267430.P7614672471199093547

`eq[0, A105700(A004159(n)²)]²`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A267430

/-- `eq[0, A105700(A004159(n)²)]²` -/
def P7614672471199093547.Spec : Prop :=
  ∀ n, (P7614672471199093547.a n : ℤ) = A267430 (n + 1)

theorem P7614672471199093547.correct : P7614672471199093547.Spec := by
  intro n
  simp only [A267430, Nat.add_sub_cancel]

end A267430

/-! ## A267430.P16991930085059963438

`eq[0, A055671(A004159(n))]^(A000007(n+1)+2)`
-/

namespace A267430.P16991930085059963438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A004159 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) ^ (A000007 (n + 1) + 2 : ℤ)

end

end A267430.P16991930085059963438

namespace A267430

/-- `eq[0, A055671(A004159(n))]^(A000007(n+1)+2)` -/
def P16991930085059963438.Spec : Prop :=
  ∀ n, P16991930085059963438.a n = (A267430 (n + 1) : ℚ)

end A267430

/-! ## A267430.P11469228066398438536

`eq[0, A055671(A004159(n))]^A020639(A001316(n))`
-/

namespace A267430.P11469228066398438536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A004159 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) ^ (A020639 (A001316 n).toNat : ℤ)

end

end A267430.P11469228066398438536

namespace A267430

/-- `eq[0, A055671(A004159(n))]^A020639(A001316(n))` -/
def P11469228066398438536.Spec : Prop :=
  ∀ n, P11469228066398438536.a n = (A267430 (n + 1) : ℚ)

end A267430

/-! ## A267430.P16079170802684140401

`eq[0, A055672(∑{digits}[n², #])]²`
-/

namespace A267430.P16079170802684140401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A267430.P16079170802684140401

namespace A267430

/-- `eq[0, A055672(∑{digits}[n², #])]²` -/
def P16079170802684140401.Spec : Prop :=
  ∀ n, (P16079170802684140401.a n : ℤ) = A267430 (n + 1)

end A267430

/-! ## A267430.P6892037716605622274

`eq[0, A055671(A004159(n))]^A051612(A000040(n+1))`
-/

namespace A267430.P6892037716605622274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A004159 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) ^ (A051612 (A000040 (n + 1)).toNat : ℤ)

end

end A267430.P6892037716605622274

namespace A267430

/-- `eq[0, A055671(A004159(n))]^A051612(A000040(n+1))` -/
def P6892037716605622274.Spec : Prop :=
  ∀ n, P6892037716605622274.a n = (A267430 (n + 1) : ℚ)

end A267430

/-! ## A267430.P13042299252712573108

`eq[0, A055671(A004159(n))]^A051612(A179002(n+2))`
-/

namespace A267430.P13042299252712573108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A004159 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) ^ (A051612 (A179002 (n + 2)).toNat : ℤ)

end

end A267430.P13042299252712573108

namespace A267430

/-- `eq[0, A055671(A004159(n))]^A051612(A179002(n+2))` -/
def P13042299252712573108.Spec : Prop :=
  ∀ n, P13042299252712573108.a n = (A267430 (n + 1) : ℚ)

end A267430

/-!
# A267432: Numbers of the form x^2 + xy + y^2 (A003136) that are not of the form a^2 + b^2 + c^2 where x, y, a, b and c are integers.

The programs for A267432, there is no canonical definition to state claims against.
-/

/-! ## A267432.P8977489049211838153

`filter[A004215(n+1), A353816(#)]`
-/

namespace A267432.P8977489049211838153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A267432.P8977489049211838153

/-! ## A267432.P12862913583343403647

`∩[A004215(n+1), A020677(n+1)]`
-/

namespace A267432.P12862913583343403647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267432.P12862913583343403647

/-! ## A267432.P5295058581109539591

`∩[A004215(n+1), A024614(n+1)]`
-/

namespace A267432.P5295058581109539591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267432.P5295058581109539591

/-! ## A267432.P7500500188657968152

`∩[A024614(n+1), A214328(n+1)]`
-/

namespace A267432.P7500500188657968152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267432.P7500500188657968152

/-! ## A267432.P8256856752571658846

`∩[A004215(n+1), A092572(n+1)]`
-/

namespace A267432.P8256856752571658846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267432.P8256856752571658846

/-! ## A267432.P13209751149699726395

`∩[A003136(n+1), A004215(n+1)]`
-/

namespace A267432.P13209751149699726395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267432.P13209751149699726395

/-! ## A267432.P10759104326084291764

`∩[A004215(n+1), A383784(n+1)]`
-/

namespace A267432.P10759104326084291764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267432.P10759104326084291764

/-! ## A267432.P16612207518593902105

`∩[A004215(n+1), A035246(n+1)]`
-/

namespace A267432.P16612207518593902105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267432.P16612207518593902105

/-! ## A267432.P16550689003451873377

`filter[A003136(n+1), A072401(#)]`
-/

namespace A267432.P16550689003451873377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072401 (f1 j).toNat = 1) n)

end

end A267432.P16550689003451873377

/-! ## A267432.P8830659575358208467

`filter[A020677(n+1), A072401(#)]`
-/

namespace A267432.P8830659575358208467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072401 (f1 j).toNat = 1) n)

end

end A267432.P8830659575358208467

/-! ## A267432.P7005514316232898950

`filter[A024614(n+1), A072401(#)]`
-/

namespace A267432.P7005514316232898950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072401 (f1 j).toNat = 1) n)

end

end A267432.P7005514316232898950

/-! ## A267432.P6086809788850883727

`filter[A092572(n+1), A072401(#)]`
-/

namespace A267432.P6086809788850883727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072401 (f1 j).toNat = 1) n)

end

end A267432.P6086809788850883727

/-! ## A267432.P18174946867180301752

`eq[A000007(A004016(n)), A005875(n)]`
-/

namespace A267432.P18174946867180301752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A004016 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267432.P18174946867180301752

/-! ## A267432.P14680608904402504982

`eq[A000007(A033716(n)), A005875(n)]`
-/

namespace A267432.P14680608904402504982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A033716 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267432.P14680608904402504982

/-! ## A267432.P18203985415904186574

`eq[A000007(A004016(n)), A212885(n)]`
-/

namespace A267432.P18203985415904186574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A004016 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212885 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267432.P18203985415904186574

/-! ## A267432.P13020668252757610109

`eq[A089798(A004016(n)), A246631(n)]`
-/

namespace A267432.P13020668252757610109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089798 (A004016 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246631 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267432.P13020668252757610109

/-! ## A267432.P1182764772805090464

`eq[A123330(A123330(n)²)², A002828(n)]`
-/

namespace A267432.P1182764772805090464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123330 (A123330 n ^ 2).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267432.P1182764772805090464

/-! ## A267432.P7451158705888583261

`eq[A000007(A004016(n)), A004015(2*n)]`
-/

namespace A267432.P7451158705888583261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A004016 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004015 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267432.P7451158705888583261

/-! ## A267432.P12313125536444176543

`eq[A000007(A033716(n)), A004015(2*n)]`
-/

namespace A267432.P12313125536444176543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A033716 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004015 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267432.P12313125536444176543

/-! ## A267432.P3740356722920600489

`eq[A000007(A107760(n)), A004015(2*n)]`
-/

namespace A267432.P3740356722920600489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A107760 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004015 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267432.P3740356722920600489

/-!
# A267433: Number of permutations of [2n] with longest increasing subsequence of length n.

The programs for A267433, there is no canonical definition to state claims against.
-/

/-! ## A267433.P4718398178404511839

`A126065(A058331(n))`
-/

namespace A267433.P4718398178404511839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (A058331 n).toNat

end

end A267433.P4718398178404511839

/-! ## A267433.P13926874319050041389

`A126065(A005408(n²))`
-/

namespace A267433.P13926874319050041389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (A005408 (n ^ 2)).toNat

end

end A267433.P13926874319050041389

/-! ## A267433.P16740525535088452376

`A126065(A001105(n)+1)`
-/

namespace A267433.P16740525535088452376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (A001105 n + 1).toNat

end

end A267433.P16740525535088452376

/-! ## A267433.P2144511607367754717

`A126065(A097803(n)/3)`
-/

namespace A267433.P2144511607367754717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (SequenceMachineLib.roundAway ((A097803 n : ℚ) / 3)).toNat

end

end A267433.P2144511607367754717

/-! ## A267433.P6843413125713486270

`A126065(A005843(n²)+1)`
-/

namespace A267433.P6843413125713486270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (A005843 (n ^ 2) + 1).toNat

end

end A267433.P6843413125713486270

/-!
# A267434: Numbers of the form x^2 + x + x*y + y + y^2 (A267137) that are not of the form a^2 + b^2 + c^2 where x, y, a, b and c are integers.

The programs for A267434, there is no canonical definition to state claims against.
-/

/-! ## A267434.P17013040212089146620

`∩[A004215(n+1), A267137(n+1)]`
-/

namespace A267434.P17013040212089146620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267434.P17013040212089146620

/-! ## A267434.P9666139394733501139

`eq[A000038(A005882(n)), A005875(n)]`
-/

namespace A267434.P9666139394733501139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A005882 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267434.P9666139394733501139

/-! ## A267434.P14807318807401669461

`eq[A000007(A033687(n)), A005875(n)]`
-/

namespace A267434.P14807318807401669461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A033687 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267434.P14807318807401669461

/-! ## A267434.P18438837552396009399

`eq[A016389(A005882(n)), A246631(n)]`
-/

namespace A267434.P18438837552396009399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 (A005882 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246631 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267434.P18438837552396009399

/-! ## A267434.P8898858851388615431

`eq[A000007(A033687(n)), A246631(n)]`
-/

namespace A267434.P8898858851388615431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A033687 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246631 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267434.P8898858851388615431

/-! ## A267434.P12716610423782409199

`eq[A000007(A129576(n)), A246631(n)]`
-/

namespace A267434.P12716610423782409199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A129576 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246631 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267434.P12716610423782409199

/-!
# A267435: Numbers n such that each reduced Collatz trajectory (mod p): (n, T(n), T(T(n)), ..., 4, 2, 1) / pZ, where the odd prime p is the number of iterations needed to reach 1, contains exactly the p-1 values {1, 2, 3, ..., p-1}.

The programs for A267435, there is no canonical definition to state claims against.
-/

/-! ## A267435.P10663605291688311107

`A178729(A090989(n²+1))`
-/

namespace A267435.P10663605291688311107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178729 (A090989 (n ^ 2 + 1)).toNat

end

end A267435.P10663605291688311107

/-!
# A267436: Number of self-inverse permutations of [2n] with longest increasing subsequence of length n.

The programs for A267436, there is no canonical definition to state claims against.
-/

/-! ## A267436.P10614563693985954618

`A047884(A004277(n²))`
-/

namespace A267436.P10614563693985954618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (A004277 (n ^ 2)).toNat

end

end A267436.P10614563693985954618

/-! ## A267436.P362803456028146720

`A047884(A065033((2*n)²))`
-/

namespace A267436.P362803456028146720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (A065033 ((2 * n) ^ 2)).toNat

end

end A267436.P362803456028146720

/-! ## A267436.P6102016834064271881

`A047884(A000007(n)+2*n²)`
-/

namespace A267436.P6102016834064271881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (A000007 n + (2 * n ^ 2 : ℤ)).toNat

end

end A267436.P6102016834064271881

/-! ## A267436.P1928060247382557794

`A047884(A179865(2*n+1)-n)`
-/

namespace A267436.P1928060247382557794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (A179865 (2 * n + 1) - (n : ℤ)).toNat

end

end A267436.P1928060247382557794

/-! ## A267436.P16742332933238511978

`A047884(A004396(A008486(n²)))`
-/

namespace A267436.P16742332933238511978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (A004396 (A008486 (n ^ 2)).toNat).toNat

end

end A267436.P16742332933238511978

/-!
# A267437: A linear recurrence related to the elliptic curves y^2 = x^3 -35*a^2*x - 98*a^3 with a = -1, -5, -6, -17, or -111.

The programs for A267437, the canonical program `A267437.P7015940347195537288` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267437 has offset 2).

The definition of A267437 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A267437.P7015940347195537288

`4*a(n-1)-7*a(n-2)+8*a(n-3)-4*a(n-4)` with `a(0)=11, a(1)=23, a(2)=67, a(3)=151`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267437

/-- `4*a(n-1)-7*a(n-2)+8*a(n-3)-4*a(n-4)` -/
def P7015940347195537288.Spec : Prop :=
  ∀ n, P7015940347195537288.a n = A267437 (n + 2)

theorem P7015940347195537288.correct : P7015940347195537288.Spec := by
  intro n
  simp only [A267437, Nat.add_sub_cancel]

end A267437

/-! ## A267437.P4695416206628889047

`A002249(n+3)+A002248(n+4)`
-/

namespace A267437.P4695416206628889047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002249 (n + 3) + A002248 (n + 4)

end

end A267437.P4695416206628889047

namespace A267437

/-- `A002249(n+3)+A002248(n+4)` -/
def P4695416206628889047.Spec : Prop :=
  ∀ n, P4695416206628889047.a n = A267437 (n + 2)

end A267437

/-! ## A267437.P16831332058027209841

`A048578(n+3)-Δ[A002249(n+3)]`
-/

namespace A267437.P16831332058027209841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002249 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 (n + 3) - (f1 (n + 1) - f1 n)

end

end A267437.P16831332058027209841

namespace A267437

/-- `A048578(n+3)-Δ[A002249(n+3)]` -/
def P16831332058027209841.Spec : Prop :=
  ∀ n, P16831332058027209841.a n = A267437 (n + 2)

end A267437

/-! ## A267437.P7606533879755674160

`A002249(n+2)+A002249(n+2)+A000051(n+4)`
-/

namespace A267437.P7606533879755674160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002249 (n + 2) + (A002249 (n + 2) + A000051 (n + 4))

end

end A267437.P7606533879755674160

namespace A267437

/-- `A002249(n+2)+A002249(n+2)+A000051(n+4)` -/
def P7606533879755674160.Spec : Prop :=
  ∀ n, P7606533879755674160.a n = A267437 (n + 2)

end A267437

/-!
# A267438: Abatzoglou-Silverberg-Sutherland-Wong primes: primes in A267437.

The programs for A267438, there is no canonical definition to state claims against.
-/

/-! ## A267438.P2913810803890365972

`A267437(A267439(n+1))`
-/

namespace A267438.P2913810803890365972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267437 (A267439 (n + 1)).toNat

end

end A267438.P2913810803890365972

/-! ## A267438.P913622727587858213

`p?[A267437(n+2)]`
-/

namespace A267438.P913622727587858213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267437 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267438.P913622727587858213

/-! ## A267438.P17037287164764013579

`p?[A002249(n+3)+A002248(n+4)]`
-/

namespace A267438.P17037287164764013579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002249 (n + 3) + A002248 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267438.P17037287164764013579

/-! ## A267438.P14687654582680746478

`p?[A048578(n+3)-Δ[A002249(n+3)]]`
-/

namespace A267438.P14687654582680746478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002249 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 (n + 3) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267438.P14687654582680746478

/-!
# A267440: Binary representation of the n-th iteration of the "Rule 129" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267440, there is no canonical definition to state claims against.
-/

/-! ## A267440.P11520528507002530321

`A007088(A267441(n))`
-/

namespace A267440.P11520528507002530321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267441 n).toNat

end

end A267440.P11520528507002530321

/-!
# A267441: Decimal representation of the n-th iteration of the "Rule 129" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267441, there is no canonical definition to state claims against.
-/

/-! ## A267441.P11652557785821478981

`A052955(A008574(n))-A267365(n)`
-/

namespace A267441.P11652557785821478981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A008574 n).toNat - A267365 n

end

end A267441.P11652557785821478981

/-! ## A267441.P4010197001755162151

`A290682(A004277(n))-A267365(n)`
-/

namespace A267441.P4010197001755162151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290682 (A004277 n).toNat - A267365 n

end

end A267441.P4010197001755162151

/-!
# A267442: Middle column of the "Rule 129" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267442, the canonical program `A267442.P1606204235737537443` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267442 has offset 0).

The definition of A267442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267442.P2500489803425080672

`char[comp[∑[2^n]]]`
-/

namespace A267442.P2500489803425080672
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A267442.P2500489803425080672

namespace A267442

/-- `char[comp[∑[2^n]]]` -/
def P2500489803425080672.Spec : Prop :=
  ∀ n, (P2500489803425080672.a n : ℤ) = A267442 n

end A267442

/-! ## A267442.P6271980589901266851

`xor(1, char[∑[2^n]])`
-/

namespace A267442.P6271980589901266851
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A267442.P6271980589901266851

namespace A267442

/-- `xor(1, char[∑[2^n]])` -/
def P6271980589901266851.Spec : Prop :=
  ∀ n, (P6271980589901266851.a n : ℤ) = A267442 n

end A267442

/-! ## A267442.P647373964100296134

`1-char[xor(n, n+1)]`
-/

namespace A267442.P647373964100296134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267442.P647373964100296134

namespace A267442

/-- `1-char[xor(n, n+1)]` -/
def P647373964100296134.Spec : Prop :=
  ∀ n, P647373964100296134.a n = A267442 n

end A267442

/-! ## A267442.P2579578576381016678

`1-char[∑{d}[2^n, #]]`
-/

namespace A267442.P2579578576381016678
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267442.P2579578576381016678

namespace A267442

/-- `1-char[∑{d}[2^n, #]]` -/
def P2579578576381016678.Spec : Prop :=
  ∀ n, P2579578576381016678.a n = A267442 n

end A267442

/-! ## A267442.P2722716986640903710

`dr(1-char[∑[2^n]])`
-/

namespace A267442.P2722716986640903710
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A267442.P2722716986640903710

namespace A267442

/-- `dr(1-char[∑[2^n]])` -/
def P2722716986640903710.Spec : Prop :=
  ∀ n, (P2722716986640903710.a n : ℤ) = A267442 n

end A267442

/-! ## A267442.P2871766196518430841

`ceil(cos(ratio[or(n, n-1)]))`
-/

namespace A267442.P2871766196518430841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)⌉

end

end A267442.P2871766196518430841

namespace A267442

/-- `ceil(cos(ratio[or(n, n-1)]))` -/
def P2871766196518430841.Spec : Prop :=
  ∀ n, P2871766196518430841.a n = A267442 n

end A267442

/-! ## A267442.P3185232915133567125

`floor(cos(char[xor(n, n+1)]))`
-/

namespace A267442.P3185232915133567125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A267442.P3185232915133567125

namespace A267442

/-- `floor(cos(char[xor(n, n+1)]))` -/
def P3185232915133567125.Spec : Prop :=
  ∀ n, P3185232915133567125.a n = A267442 n

end A267442

/-! ## A267442.P3761313089999533188

`floor(acos(char[xor(n, n+1)]))`
-/

namespace A267442.P3761313089999533188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A267442.P3761313089999533188

namespace A267442

/-- `floor(acos(char[xor(n, n+1)]))` -/
def P3761313089999533188.Spec : Prop :=
  ∀ n, P3761313089999533188.a n = A267442 n

end A267442

/-! ## A267442.P10803217843390733322

`floor(acot(char[xor(n, n+1)]))`
-/

namespace A267442.P10803217843390733322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A267442.P10803217843390733322

namespace A267442

/-- `floor(acot(char[xor(n, n+1)]))` -/
def P10803217843390733322.Spec : Prop :=
  ∀ n, P10803217843390733322.a n = A267442 n

end A267442

/-! ## A267442.P14953690398039744352

`sin(acos(char[xor(n, n+1)]))`
-/

namespace A267442.P14953690398039744352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A267442.P14953690398039744352

namespace A267442

/-- `sin(acos(char[xor(n, n+1)]))` -/
def P14953690398039744352.Spec : Prop :=
  ∀ n, P14953690398039744352.a n = (A267442 n : ℝ)

end A267442

/-! ## A267442.P701918313738168822

`cos(asin(char[xor(n, n+1)]))`
-/

namespace A267442.P701918313738168822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.arcsin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A267442.P701918313738168822

namespace A267442

/-- `cos(asin(char[xor(n, n+1)]))` -/
def P701918313738168822.Spec : Prop :=
  ∀ n, P701918313738168822.a n = (A267442 n : ℝ)

end A267442

/-! ## A267442.P4052945322506446309

`xor(1, char[xor(n, n+1)])²`
-/

namespace A267442.P4052945322506446309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0) ^ 2

end

end A267442.P4052945322506446309

namespace A267442

/-- `xor(1, char[xor(n, n+1)])²` -/
def P4052945322506446309.Spec : Prop :=
  ∀ n, (P4052945322506446309.a n : ℤ) = A267442 n

end A267442

/-! ## A267442.P1606204235737537443

`a((n-gcd(4, n))/2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267442

/-- `a((n-gcd(4, n))/2)` -/
def P1606204235737537443.Spec : Prop :=
  ∀ n, (P1606204235737537443.a n : ℤ) = A267442 n

theorem P1606204235737537443.correct : P1606204235737537443.Spec := by
  intro n
  simp only [A267442]

end A267442

/-! ## A267442.P3862166861219765249

`a(and(n, n-1)/2)` with `a(0)=1, a(1)=0`
-/

namespace A267442.P3862166861219765249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (SequenceMachineLib.roundAway ((Int.land (n : ℤ) ((n : ℤ) - 1) : ℚ) / 2)).toNat

end

end A267442.P3862166861219765249

namespace A267442

/-- `a(and(n, n-1)/2)` -/
def P3862166861219765249.Spec : Prop :=
  ∀ n, (P3862166861219765249.a n : ℤ) = A267442 n

end A267442

/-! ## A267442.P152261867227520748

`2-C(2, and(n, n+2))!`
-/

namespace A267442.P152261867227520748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.factorial (Nat.choose 2 (Nat.land n (n + 2))) : ℤ)

end

end A267442.P152261867227520748

namespace A267442

/-- `2-C(2, and(n, n+2))!` -/
def P152261867227520748.Spec : Prop :=
  ∀ n, P152261867227520748.a n = A267442 n

end A267442

/-! ## A267442.P3569949787984714916

`(1-C(2, ∏{p}[n+1, #]))²`
-/

namespace A267442.P3569949787984714916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose 2 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ)) ^ 2

end

end A267442.P3569949787984714916

namespace A267442

/-- `(1-C(2, ∏{p}[n+1, #]))²` -/
def P3569949787984714916.Spec : Prop :=
  ∀ n, P3569949787984714916.a n = A267442 n

end A267442

/-! ## A267442.P12391587413487503283

`xor(1, char[xor(n, n+1)])^3`
-/

namespace A267442.P12391587413487503283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0) ^ 3

end

end A267442.P12391587413487503283

namespace A267442

/-- `xor(1, char[xor(n, n+1)])^3` -/
def P12391587413487503283.Spec : Prop :=
  ∀ n, (P12391587413487503283.a n : ℤ) = A267442 n

end A267442

/-! ## A267442.P432945840775645592

`round(or(1, n)/or(n, n+1))`
-/

namespace A267442.P432945840775645592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 n : ℚ) / (Nat.lor n (n + 1) : ℚ))

end

end A267442.P432945840775645592

namespace A267442

/-- `round(or(1, n)/or(n, n+1))` -/
def P432945840775645592.Spec : Prop :=
  ∀ n, P432945840775645592.a n = A267442 n

end A267442

/-! ## A267442.P4664812103181749941

`ceil(abs(sin(and(n+1, n-1))))`
-/

namespace A267442.P4664812103181749941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.sin (Int.land (n + 1 : ℤ) ((n : ℤ) - 1) : ℝ)|⌉

end

end A267442.P4664812103181749941

namespace A267442

/-- `ceil(abs(sin(and(n+1, n-1))))` -/
def P4664812103181749941.Spec : Prop :=
  ∀ n, P4664812103181749941.a n = A267442 n

end A267442

/-! ## A267442.P6768539359099388107

`ceil(sin(and(n+1, n-1))²)`
-/

namespace A267442.P6768539359099388107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (Int.land (n + 1 : ℤ) ((n : ℤ) - 1) : ℝ) ^ 2⌉

end

end A267442.P6768539359099388107

namespace A267442

/-- `ceil(sin(and(n+1, n-1))²)` -/
def P6768539359099388107.Spec : Prop :=
  ∀ n, P6768539359099388107.a n = A267442 n

end A267442

/-!
# A267443: Binary representation of the middle column of the "Rule 129" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267443, the canonical program `A267443.P4725894432829547169` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267443 has offset 0).

The definition of A267443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267443.P12699275842382597125

`or(1, 10*a(n-1))-char[2^n-1]` with `a(0)=1`
-/

namespace A267443.P12699275842382597125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (10 * a (n - 1)) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A267443.P12699275842382597125

namespace A267443

/-- `or(1, 10*a(n-1))-char[2^n-1]` -/
def P12699275842382597125.Spec : Prop :=
  ∀ n, P12699275842382597125.a n = A267443 n

end A267443

/-! ## A267443.P6065901043205500754

`3-2*(1-5*a(n-1))-char[2^n-1]` with `a(0)=1`
-/

namespace A267443.P6065901043205500754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 - 2 * (1 - 5 * a (n - 1)) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A267443.P6065901043205500754

namespace A267443

/-- `3-2*(1-5*a(n-1))-char[2^n-1]` -/
def P6065901043205500754.Spec : Prop :=
  ∀ n, P6065901043205500754.a n = A267443 n

end A267443

/-! ## A267443.P4725894432829547169

`A043545(n)+10*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A267443

/-- `A043545(n)+10*a(n-1)` -/
def P4725894432829547169.Spec : Prop :=
  ∀ n, P4725894432829547169.a n = A267443 n

theorem P4725894432829547169.correct : P4725894432829547169.Spec := by
  intro n
  simp only [A267443]

end A267443

/-! ## A267443.P16282668869949987577

`A267442(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A267443.P16282668869949987577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267442 n + 10 * a (n - 1)

end

end A267443.P16282668869949987577

namespace A267443

/-- `A267442(n)+10*a(n-1)` -/
def P16282668869949987577.Spec : Prop :=
  ∀ n, P16282668869949987577.a n = A267443 n

end A267443

/-! ## A267443.P657111038589253161

`10*a(n-1)+1-A036987(n)` with `a(0)=1`
-/

namespace A267443.P657111038589253161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + 1 - A036987 n

end

end A267443.P657111038589253161

namespace A267443

/-- `10*a(n-1)+1-A036987(n)` -/
def P657111038589253161.Spec : Prop :=
  ∀ n, P657111038589253161.a n = A267443 n

end A267443

/-! ## A267443.P15238710914503727746

`or(A209229(n+1)+1, 10*a(n-1))` with `a(0)=1`
-/

namespace A267443.P15238710914503727746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (A209229 (n + 1) + 1) (10 * a (n - 1))

end

end A267443.P15238710914503727746

namespace A267443

/-- `or(A209229(n+1)+1, 10*a(n-1))` -/
def P15238710914503727746.Spec : Prop :=
  ∀ n, P15238710914503727746.a n = A267443 n

end A267443

/-! ## A267443.P7319210536284769566

`xor(10*a(n-1), A057427(A025480(n)))` with `a(0)=1, a(1)=10`
-/

namespace A267443.P7319210536284769566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  Int.xor (10 * a (n - 1)) (A057427 (A025480 n).toNat)

end

end A267443.P7319210536284769566

namespace A267443

/-- `xor(10*a(n-1), A057427(A025480(n)))` -/
def P7319210536284769566.Spec : Prop :=
  ∀ n, P7319210536284769566.a n = A267443 n

end A267443

/-!
# A267444: Decimal representation of the middle column of the "Rule 129" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267444, the canonical program `A267444.P12052206994114013281` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267444 has offset 0).

The definition of A267444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267444.P12052206994114013281

`xor(1, A036987(n)+2*a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A267444

/-- `xor(1, A036987(n)+2*a(n-1))` -/
def P12052206994114013281.Spec : Prop :=
  ∀ n, P12052206994114013281.a n = A267444 n

theorem P12052206994114013281.correct : P12052206994114013281.Spec := by
  intro n
  simp only [A267444]

end A267444

/-! ## A267444.P4617299879974564925

`a(n-1)+A043545(n)+a(n-1)` with `a(0)=1`
-/

namespace A267444.P4617299879974564925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A043545 n + a (n - 1))

end

end A267444.P4617299879974564925

namespace A267444

/-- `a(n-1)+A043545(n)+a(n-1)` -/
def P4617299879974564925.Spec : Prop :=
  ∀ n, P4617299879974564925.a n = A267444 n

end A267444

/-! ## A267444.P3823663550695380762

`a(n-1)+A267442(n)+a(n-1)` with `a(0)=1`
-/

namespace A267444.P3823663550695380762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A267442 n + a (n - 1))

end

end A267444.P3823663550695380762

namespace A267444

/-- `a(n-1)+A267442(n)+a(n-1)` -/
def P3823663550695380762.Spec : Prop :=
  ∀ n, P3823663550695380762.a n = A267444 n

end A267444

/-! ## A267444.P13322858637911455915

`and(1, A006530(n+1))+2*a(n-1)` with `a(0)=1`
-/

namespace A267444.P13322858637911455915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land 1 (A006530 (n + 1)) + 2 * a (n - 1)

end

end A267444.P13322858637911455915

namespace A267444

/-- `and(1, A006530(n+1))+2*a(n-1)` -/
def P13322858637911455915.Spec : Prop :=
  ∀ n, P13322858637911455915.a n = A267444 n

end A267444

/-! ## A267444.P13944427619461348066

`and(1, A014963(n+1))+2*a(n-1)` with `a(0)=1`
-/

namespace A267444.P13944427619461348066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land 1 (A014963 (n + 1)) + 2 * a (n - 1)

end

end A267444.P13944427619461348066

namespace A267444

/-- `and(1, A014963(n+1))+2*a(n-1)` -/
def P13944427619461348066.Spec : Prop :=
  ∀ n, P13944427619461348066.a n = A267444 n

end A267444

/-! ## A267444.P17092955019610966725

`xor(A000225(n), A267367(n))`
-/

namespace A267444.P17092955019610966725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A267367 n)

end

end A267444.P17092955019610966725

namespace A267444

/-- `xor(A000225(n), A267367(n))` -/
def P17092955019610966725.Spec : Prop :=
  ∀ n, P17092955019610966725.a n = A267444 n

end A267444

/-! ## A267444.P2912991018362546917

`A267581(n+1)-2^(n+1)`
-/

namespace A267444.P2912991018362546917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267581 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A267444.P2912991018362546917

namespace A267444

/-- `A267581(n+1)-2^(n+1)` -/
def P2912991018362546917.Spec : Prop :=
  ∀ n, P2912991018362546917.a n = A267444 n

end A267444

/-! ## A267444.P8948754973099282881

`A153893(n)-A267367(n)`
-/

namespace A267444.P8948754973099282881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 n - A267367 n

end

end A267444.P8948754973099282881

namespace A267444

/-- `A153893(n)-A267367(n)` -/
def P8948754973099282881.Spec : Prop :=
  ∀ n, P8948754973099282881.a n = A267444 n

end A267444

/-! ## A267444.P11143071278332559907

`and(A000225(n+1), A267581(n+1))`
-/

namespace A267444.P11143071278332559907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (n + 1)) (A267581 (n + 1))

end

end A267444.P11143071278332559907

namespace A267444

/-- `and(A000225(n+1), A267581(n+1))` -/
def P11143071278332559907.Spec : Prop :=
  ∀ n, P11143071278332559907.a n = A267444 n

end A267444

/-!
# A267445: Number of ON (black) cells in the n-th iteration of the "Rule 129" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267445, the canonical program `A267445.P11359933755806335792` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267445 has offset 0).

The definition of A267445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267445.P16447464486867687936

`Δ[n²]-A267447(n)`
-/

namespace A267445.P16447464486867687936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A267447 n

end

end A267445.P16447464486867687936

namespace A267445

/-- `Δ[n²]-A267447(n)` -/
def P16447464486867687936.Spec : Prop :=
  ∀ n, P16447464486867687936.a n = A267445 n

theorem P16447464486867687936.correct : P16447464486867687936.Spec := by
  intro n
  simp only [A267445, Nat.add_sub_cancel, A267445.P16447464486867687936.f1, A267445.P16447464486867687936.a, A267445.P11359933755806335792.a, A004277, A004277.P16255821370285667660.a, A071051, A071051.P15402444930345305541.a, A267447, A267447.P294490523274346836.f1, A267447.P294490523274346836.a, A000007, A000007.P6599383543502402472.a, A005843, A005843.P3167286115683555970.a, A036987, A036987.P1789601236562705309.a, A117973, A117973.P11230116199213534894.a, A001316, A001316.P6850078358198232129.a, A000120, A000120.P2816527436160941581.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A267445

/-! ## A267445.P16546954071092084069

`A071050(floor(2/∑[n+1]+n))`
-/

namespace A267445.P16546954071092084069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071050 ⌊2 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (n : ℚ)⌋.toNat

end

end A267445.P16546954071092084069

namespace A267445

/-- `A071050(floor(2/∑[n+1]+n))` -/
def P16546954071092084069.Spec : Prop :=
  ∀ n, P16546954071092084069.a n = A267445 n

end A267445

/-! ## A267445.P15433649413682810792

`n+1-A267447(n%(n+1))+n`
-/

namespace A267445.P15433649413682810792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A267447 (n % (n + 1)) + (n : ℤ)

end

end A267445.P15433649413682810792

namespace A267445

/-- `n+1-A267447(n%(n+1))+n` -/
def P15433649413682810792.Spec : Prop :=
  ∀ n, P15433649413682810792.a n = A267445 n

end A267445

/-! ## A267445.P10095762738686312845

`A071050(n)+A000007(n)`
-/

namespace A267445.P10095762738686312845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071050 n + A000007 n

end

end A267445.P10095762738686312845

namespace A267445

/-- `A071050(n)+A000007(n)` -/
def P10095762738686312845.Spec : Prop :=
  ∀ n, P10095762738686312845.a n = A267445 n

end A267445

/-! ## A267445.P11359933755806335792

`A004277(n)+1-A071051(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A267445

/-- `A004277(n)+1-A071051(n)` -/
def P11359933755806335792.Spec : Prop :=
  ∀ n, P11359933755806335792.a n = A267445 n

theorem P11359933755806335792.correct : P11359933755806335792.Spec := by
  intro n
  simp only [A267445]

end A267445

/-! ## A267445.P4575609661826877894

`A071050(n)+A036987(2*n)`
-/

namespace A267445.P4575609661826877894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071050 n + A036987 (2 * n)

end

end A267445.P4575609661826877894

namespace A267445

/-- `A071050(n)+A036987(2*n)` -/
def P4575609661826877894.Spec : Prop :=
  ∀ n, P4575609661826877894.a n = A267445 n

end A267445

/-! ## A267445.P16114785334567232121

`or(A036987(n+1), A071050(n))`
-/

namespace A267445.P16114785334567232121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 (n + 1)) (A071050 n)

end

end A267445.P16114785334567232121

namespace A267445

/-- `or(A036987(n+1), A071050(n))` -/
def P16114785334567232121.Spec : Prop :=
  ∀ n, P16114785334567232121.a n = A267445 n

end A267445

/-! ## A267445.P11464837474717906157

`or(A003849(A178493(n+1)), A071050(n))`
-/

namespace A267445.P11464837474717906157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003849 (A178493 (n + 1)).toNat) (A071050 n)

end

end A267445.P11464837474717906157

namespace A267445

/-- `or(A003849(A178493(n+1)), A071050(n))` -/
def P11464837474717906157.Spec : Prop :=
  ∀ n, P11464837474717906157.a n = A267445 n

end A267445

/-! ## A267445.P4745134310099742578

`A071050(n)+A071051(n)-A267447(n)`
-/

namespace A267445.P4745134310099742578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071050 n + (A071051 n - A267447 n)

end

end A267445.P4745134310099742578

namespace A267445

/-- `A071050(n)+A071051(n)-A267447(n)` -/
def P4745134310099742578.Spec : Prop :=
  ∀ n, P4745134310099742578.a n = A267445 n

end A267445

/-! ## A267445.P375608684550077358

`A071050(n)+A071035(n)*A267417(n)`
-/

namespace A267445.P375608684550077358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071050 n + A071035 n * A267417 n

end

end A267445.P375608684550077358

namespace A267445

/-- `A071050(n)+A071035(n)*A267417(n)` -/
def P375608684550077358.Spec : Prop :=
  ∀ n, P375608684550077358.a n = A267445 n

end A267445

/-! ## A267445.P2682459797547064144

`or(A071022(A178493(n+1)²), A071050(n))`
-/

namespace A267445.P2682459797547064144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A071022 (A178493 (n + 1) ^ 2).toNat) (A071050 n)

end

end A267445.P2682459797547064144

namespace A267445

/-- `or(A071022(A178493(n+1)²), A071050(n))` -/
def P2682459797547064144.Spec : Prop :=
  ∀ n, P2682459797547064144.a n = A267445 n

end A267445

/-! ## A267445.P7474905689617229567

`or(A071022(A178493(n+1)+2), A071050(n))`
-/

namespace A267445.P7474905689617229567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A071022 (A178493 (n + 1) + 2).toNat) (A071050 n)

end

end A267445.P7474905689617229567

namespace A267445

/-- `or(A071022(A178493(n+1)+2), A071050(n))` -/
def P7474905689617229567.Spec : Prop :=
  ∀ n, P7474905689617229567.a n = A267445 n

end A267445

/-! ## A267445.P6197030379544702433

`or(A071022(A071051(n+1)), A071050(n))`
-/

namespace A267445.P6197030379544702433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A071022 (A071051 (n + 1)).toNat) (A071050 n)

end

end A267445.P6197030379544702433

namespace A267445

/-- `or(A071022(A071051(n+1)), A071050(n))` -/
def P6197030379544702433.Spec : Prop :=
  ∀ n, P6197030379544702433.a n = A267445 n

end A267445

/-! ## A267445.P12339988711845029918

`A071050(n)+A007814(A071042(n)+2)`
-/

namespace A267445.P12339988711845029918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071050 n + A007814 (A071042 n + 2).toNat

end

end A267445.P12339988711845029918

namespace A267445

/-- `A071050(n)+A007814(A071042(n)+2)` -/
def P12339988711845029918.Spec : Prop :=
  ∀ n, P12339988711845029918.a n = A267445 n

end A267445

/-! ## A267445.P9724504178700923203

`A014963(2*(n+1))+A028310(2*n)-2*A001316(n)`
-/

namespace A267445.P9724504178700923203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (n + 1)) + (A028310 (2 * n) - 2 * A001316 n)

end

end A267445.P9724504178700923203

namespace A267445

/-- `A014963(2*(n+1))+A028310(2*n)-2*A001316(n)` -/
def P9724504178700923203.Spec : Prop :=
  ∀ n, P9724504178700923203.a n = A267445 n

end A267445

/-! ## A267445.P15721990004551643771

`or(A071004(A246269(n+3)), A071050(n))`
-/

namespace A267445.P15721990004551643771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A071004 (A246269 (n + 3)).toNat) (A071050 n)

end

end A267445.P15721990004551643771

namespace A267445

/-- `or(A071004(A246269(n+3)), A071050(n))` -/
def P15721990004551643771.Spec : Prop :=
  ∀ n, P15721990004551643771.a n = A267445 n

end A267445

/-! ## A267445.P12765460350085434200

`A233583(2*(n+1))-A071051(n)`
-/

namespace A267445.P12765460350085434200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (2 * (n + 1)) - A071051 n

end

end A267445.P12765460350085434200

namespace A267445

/-- `A233583(2*(n+1))-A071051(n)` -/
def P12765460350085434200.Spec : Prop :=
  ∀ n, P12765460350085434200.a n = A267445 n

end A267445

/-! ## A267445.P10090085387087690494

`A267417(n²)+A071050(n)`
-/

namespace A267445.P10090085387087690494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267417 (n ^ 2) + A071050 n

end

end A267445.P10090085387087690494

namespace A267445

/-- `A267417(n²)+A071050(n)` -/
def P10090085387087690494.Spec : Prop :=
  ∀ n, P10090085387087690494.a n = A267445 n

end A267445

/-!
# A267446: Total number of ON (black) cells after n iterations of the "Rule 129" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267446, the canonical program `A267446.P12235518874921593537` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267446 has offset 0).

The definition of A267446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267446.P12235518874921593537

`∑[A267445(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A267446

/-- `∑[A267445(n)]` -/
def P12235518874921593537.Spec : Prop :=
  ∀ n, P12235518874921593537.a n = A267446 n

theorem P12235518874921593537.correct : P12235518874921593537.Spec := by
  intro n
  simp only [A267446]

end A267446

/-! ## A267446.P10021340464043611

`A267369(n)+1`
-/

namespace A267446.P10021340464043611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267369 n + 1

end

end A267446.P10021340464043611

namespace A267446

/-- `A267369(n)+1` -/
def P10021340464043611.Spec : Prop :=
  ∀ n, P10021340464043611.a n = A267446 n

end A267446

/-! ## A267446.P3338317230184861461

`∑[A071050(n)]+1`
-/

namespace A267446.P3338317230184861461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A267446.P3338317230184861461

namespace A267446

/-- `∑[A071050(n)]+1` -/
def P3338317230184861461.Spec : Prop :=
  ∀ n, P3338317230184861461.a n = A267446 n

end A267446

/-! ## A267446.P7016739685053203062

`(n+1)²-A267448(n)`
-/

namespace A267446.P7016739685053203062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A267448 n

end

end A267446.P7016739685053203062

namespace A267446

/-- `(n+1)²-A267448(n)` -/
def P7016739685053203062.Spec : Prop :=
  ∀ n, P7016739685053203062.a n = A267446 n

end A267446

/-! ## A267446.P10487095120116914171

`∑[Δ[n²]-A267447(n)]`
-/

namespace A267446.P10487095120116914171
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A267447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267446.P10487095120116914171

namespace A267446

/-- `∑[Δ[n²]-A267447(n)]` -/
def P10487095120116914171.Spec : Prop :=
  ∀ n, P10487095120116914171.a n = A267446 n

theorem P10487095120116914171.correct : P10487095120116914171.Spec := by
  intro n
  simp only [A267446, Nat.add_sub_cancel, A267446.P10487095120116914171.f2, A267446.P10487095120116914171.f1, A267446.P10487095120116914171.a, A267446.P12235518874921593537.f1, A267446.P12235518874921593537.a, A267445, A267445.P11359933755806335792.a, A267447, A267447.P294490523274346836.f1, A267447.P294490523274346836.a, A004277, A004277.P16255821370285667660.a, A071051, A071051.P15402444930345305541.a, A000007, A000007.P6599383543502402472.a, A005843, A005843.P3167286115683555970.a, A036987, A036987.P1789601236562705309.a, A117973, A117973.P11230116199213534894.a, A001316, A001316.P6850078358198232129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A267446

/-! ## A267446.P15390871424109004922

`∑[2*n+1-A071051(n)]+1`
-/

namespace A267446.P15390871424109004922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A071051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A267446.P15390871424109004922

namespace A267446

/-- `∑[2*n+1-A071051(n)]+1` -/
def P15390871424109004922.Spec : Prop :=
  ∀ n, P15390871424109004922.a n = A267446 n

end A267446

/-! ## A267446.P14553546488620401581

`∑[n+1-A267447(n%(n+1))+n]`
-/

namespace A267446.P14553546488620401581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A267447 (n % (n + 1)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267446.P14553546488620401581

namespace A267446

/-- `∑[n+1-A267447(n%(n+1))+n]` -/
def P14553546488620401581.Spec : Prop :=
  ∀ n, P14553546488620401581.a n = A267446 n

end A267446

/-! ## A267446.P4550558962742079030

`∑[A004273(A048967(n))]+1`
-/

namespace A267446.P4550558962742079030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A048967 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A267446.P4550558962742079030

namespace A267446

/-- `∑[A004273(A048967(n))]+1` -/
def P4550558962742079030.Spec : Prop :=
  ∀ n, P4550558962742079030.a n = A267446 n

end A267446

/-! ## A267446.P12527508402174185603

`A005563(n)+1-A267448(n)`
-/

namespace A267446.P12527508402174185603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + (1 - A267448 n)

end

end A267446.P12527508402174185603

namespace A267446

/-- `A005563(n)+1-A267448(n)` -/
def P12527508402174185603.Spec : Prop :=
  ∀ n, P12527508402174185603.a n = A267446 n

end A267446

/-! ## A267446.P4529637535356952378

`∑[A004277(n)+1-A071051(n)]`
-/

namespace A267446.P4529637535356952378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (1 - A071051 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267446.P4529637535356952378

namespace A267446

/-- `∑[A004277(n)+1-A071051(n)]` -/
def P4529637535356952378.Spec : Prop :=
  ∀ n, P4529637535356952378.a n = A267446 n

end A267446

/-!
# A267447: Number of OFF (white) cells in the n-th iteration of the "Rule 129" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267447, the canonical program `A267447.P294490523274346836` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267447 has offset 0).

The definition of A267447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267447.P294490523274346836

`Δ[n²]-A267445(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A267447

/-- `Δ[n²]-A267445(n)` -/
def P294490523274346836.Spec : Prop :=
  ∀ n, P294490523274346836.a n = A267447 n

theorem P294490523274346836.correct : P294490523274346836.Spec := by
  intro n
  simp only [A267447]

end A267447

/-! ## A267447.P7286282089019387066

`A071051(n)-A000007(n)`
-/

namespace A267447.P7286282089019387066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071051 n - A000007 n

end

end A267447.P7286282089019387066

namespace A267447

/-- `A071051(n)-A000007(n)` -/
def P7286282089019387066.Spec : Prop :=
  ∀ n, P7286282089019387066.a n = A267447 n

theorem P7286282089019387066.correct : P7286282089019387066.Spec := by
  intro n
  simp only [A267447, Nat.add_sub_cancel, A267447.P7286282089019387066.a, A267447.P294490523274346836.f1, A267447.P294490523274346836.a, A000007, A000007.P6599383543502402472.a, A071051, A071051.P15402444930345305541.a, A267445, A267445.P11359933755806335792.a, A004277, A004277.P16255821370285667660.a, A036987, A036987.P1789601236562705309.a, A117973, A117973.P11230116199213534894.a, A001316, A001316.P6850078358198232129.a, A005843, A005843.P3167286115683555970.a, A000120, A000120.P2816527436160941581.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A267447

/-! ## A267447.P12340851326430255803

`A167275(n)-A036987(n)`
-/

namespace A267447.P12340851326430255803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167275 n - A036987 n

end

end A267447.P12340851326430255803

namespace A267447

/-- `A167275(n)-A036987(n)` -/
def P12340851326430255803.Spec : Prop :=
  ∀ n, P12340851326430255803.a n = A267447 n

end A267447

/-! ## A267447.P288963802180722235

`A057427(n)*A071051(n)`
-/

namespace A267447.P288963802180722235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A071051 n

end

end A267447.P288963802180722235

namespace A267447

/-- `A057427(n)*A071051(n)` -/
def P288963802180722235.Spec : Prop :=
  ∀ n, P288963802180722235.a n = A267447 n

end A267447

/-! ## A267447.P4106808363063423011

`A071051(n)%A000118(n)`
-/

namespace A267447.P4106808363063423011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071051 n) (A000118 n)

end

end A267447.P4106808363063423011

namespace A267447

/-- `A071051(n)%A000118(n)` -/
def P4106808363063423011.Spec : Prop :=
  ∀ n, P4106808363063423011.a n = A267447 n

end A267447

/-! ## A267447.P2900971388060396008

`and(A057428(n), A071051(n))`
-/

namespace A267447.P2900971388060396008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A071051 n)

end

end A267447.P2900971388060396008

namespace A267447

/-- `and(A057428(n), A071051(n))` -/
def P2900971388060396008.Spec : Prop :=
  ∀ n, P2900971388060396008.a n = A267447 n

end A267447

/-! ## A267447.P10889142033483230228

`A071051(n)-A036987(2*n)`
-/

namespace A267447.P10889142033483230228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071051 n - A036987 (2 * n)

end

end A267447.P10889142033483230228

namespace A267447

/-- `A071051(n)-A036987(2*n)` -/
def P10889142033483230228.Spec : Prop :=
  ∀ n, P10889142033483230228.a n = A267447 n

end A267447

/-! ## A267447.P3305500788320467365

`(1-A000122(n))²*A071051(n)`
-/

namespace A267447.P3305500788320467365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000122 n) ^ 2 * A071051 n

end

end A267447.P3305500788320467365

namespace A267447

/-- `(1-A000122(n))²*A071051(n)` -/
def P3305500788320467365.Spec : Prop :=
  ∀ n, P3305500788320467365.a n = A267447 n

end A267447

/-! ## A267447.P15661369780379790470

`A000027(A071051(n))%A270710(n)`
-/

namespace A267447.P15661369780379790470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A071051 n).toNat) (A270710 n)

end

end A267447.P15661369780379790470

namespace A267447

/-- `A000027(A071051(n))%A270710(n)` -/
def P15661369780379790470.Spec : Prop :=
  ∀ n, P15661369780379790470.a n = A267447 n

end A267447

/-! ## A267447.P14506543149195121010

`A020639(A004277(n))+A071051(n)-2`
-/

namespace A267447.P14506543149195121010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat + (A071051 n - 2)

end

end A267447.P14506543149195121010

namespace A267447

/-- `A020639(A004277(n))+A071051(n)-2` -/
def P14506543149195121010.Spec : Prop :=
  ∀ n, P14506543149195121010.a n = A267447 n

end A267447

/-! ## A267447.P3388876570271822163

`A020639(A007843(n))+A071051(n)-2`
-/

namespace A267447.P3388876570271822163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007843 n).toNat + (A071051 n - 2)

end

end A267447.P3388876570271822163

namespace A267447

/-- `A020639(A007843(n))+A071051(n)-2` -/
def P3388876570271822163.Spec : Prop :=
  ∀ n, P3388876570271822163.a n = A267447 n

end A267447

/-! ## A267447.P16624048711965464818

`A020639(A008458(n))+A071051(n)-2`
-/

namespace A267447.P16624048711965464818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat + (A071051 n - 2)

end

end A267447.P16624048711965464818

namespace A267447

/-- `A020639(A008458(n))+A071051(n)-2` -/
def P16624048711965464818.Spec : Prop :=
  ∀ n, P16624048711965464818.a n = A267447 n

end A267447

/-! ## A267447.P16401562595923958814

`A071051(n)-A135416(A071051(n)+n)`
-/

namespace A267447.P16401562595923958814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071051 n - A135416 (A071051 n + (n : ℤ)).toNat

end

end A267447.P16401562595923958814

namespace A267447

/-- `A071051(n)-A135416(A071051(n)+n)` -/
def P16401562595923958814.Spec : Prop :=
  ∀ n, P16401562595923958814.a n = A267447 n

end A267447

/-! ## A267447.P5583965689200206443

`A071050(n)+A071051(n)-A267445(n)`
-/

namespace A267447.P5583965689200206443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071050 n + (A071051 n - A267445 n)

end

end A267447.P5583965689200206443

namespace A267447

/-- `A071050(n)+A071051(n)-A267445(n)` -/
def P5583965689200206443.Spec : Prop :=
  ∀ n, P5583965689200206443.a n = A267447 n

end A267447

/-! ## A267447.P656076980380720627

`A071051(n)-A071035(n)*A267417(n)`
-/

namespace A267447.P656076980380720627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071051 n - A071035 n * A267417 n

end

end A267447.P656076980380720627

namespace A267447

/-- `A071051(n)-A071035(n)*A267417(n)` -/
def P656076980380720627.Spec : Prop :=
  ∀ n, P656076980380720627.a n = A267447 n

end A267447

/-! ## A267447.P12652814204777205166

`2*A001316(n)-A173677(A006530(n+1))`
-/

namespace A267447.P12652814204777205166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001316 n - A173677 (A006530 (n + 1)).toNat

end

end A267447.P12652814204777205166

namespace A267447

/-- `2*A001316(n)-A173677(A006530(n+1))` -/
def P12652814204777205166.Spec : Prop :=
  ∀ n, P12652814204777205166.a n = A267447 n

end A267447

/-! ## A267447.P9969860923532172526

`2*A001316(n)-(A036987(n)+A036987(2*n))`
-/

namespace A267447.P9969860923532172526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001316 n - (A036987 n + A036987 (2 * n))

end

end A267447.P9969860923532172526

namespace A267447

/-- `2*A001316(n)-(A036987(n)+A036987(2*n))` -/
def P9969860923532172526.Spec : Prop :=
  ∀ n, P9969860923532172526.a n = A267447 n

end A267447

/-! ## A267447.P5547944199275663676

`A001316(n)*A048896(A001316(n))-A036987(n)`
-/

namespace A267447.P5547944199275663676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A048896 (A001316 n).toNat - A036987 n

end

end A267447.P5547944199275663676

namespace A267447

/-- `A001316(n)*A048896(A001316(n))-A036987(n)` -/
def P5547944199275663676.Spec : Prop :=
  ∀ n, P5547944199275663676.a n = A267447 n

end A267447

/-! ## A267447.P12099361186551839128

`A071051(n)*A267445(A267445(n)-A071050(n))`
-/

namespace A267447.P12099361186551839128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071051 n * A267445 (A267445 n - A071050 n).toNat

end

end A267447.P12099361186551839128

namespace A267447

/-- `A071051(n)*A267445(A267445(n)-A071050(n))` -/
def P12099361186551839128.Spec : Prop :=
  ∀ n, P12099361186551839128.a n = A267447 n

end A267447

/-!
# A267448: Total number of OFF (white) cells after n iterations of the "Rule 129" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267448, the canonical program `A267448.P14106542243018115986` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267448 has offset 0).

The definition of A267448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267448.P14106542243018115986

`∑[A267447(n)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A267448

/-- `∑[A267447(n)]` -/
def P14106542243018115986.Spec : Prop :=
  ∀ n, P14106542243018115986.a n = A267448 n

theorem P14106542243018115986.correct : P14106542243018115986.Spec := by
  intro n
  simp only [A267448]

end A267448

/-! ## A267448.P4673053984083170928

`A267368(n)-1`
-/

namespace A267448.P4673053984083170928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267368 n - 1

end

end A267448.P4673053984083170928

namespace A267448

/-- `A267368(n)-1` -/
def P4673053984083170928.Spec : Prop :=
  ∀ n, P4673053984083170928.a n = A267448 n

end A267448

/-! ## A267448.P13044930370964813013

`∑[A071051(n)]-1`
-/

namespace A267448.P13044930370964813013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A267448.P13044930370964813013

namespace A267448

/-- `∑[A071051(n)]-1` -/
def P13044930370964813013.Spec : Prop :=
  ∀ n, P13044930370964813013.a n = A267448 n

end A267448

/-! ## A267448.P6802161979518144563

`(n+1)²-A267446(n)`
-/

namespace A267448.P6802161979518144563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A267446 n

end

end A267448.P6802161979518144563

namespace A267448

/-- `(n+1)²-A267446(n)` -/
def P6802161979518144563.Spec : Prop :=
  ∀ n, P6802161979518144563.a n = A267448 n

end A267448

/-! ## A267448.P8975967233969185896

`∑[Δ[n²]-A267445(n)]`
-/

namespace A267448.P8975967233969185896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A267445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267448.P8975967233969185896

namespace A267448

/-- `∑[Δ[n²]-A267445(n)]` -/
def P8975967233969185896.Spec : Prop :=
  ∀ n, P8975967233969185896.a n = A267448 n

end A267448

/-! ## A267448.P13672125274844749967

`n*(n+2)-A267369(n)`
-/

namespace A267448.P13672125274844749967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℤ) - A267369 n

end

end A267448.P13672125274844749967

namespace A267448

/-- `n*(n+2)-A267369(n)` -/
def P13672125274844749967.Spec : Prop :=
  ∀ n, P13672125274844749967.a n = A267448 n

end A267448

/-! ## A267448.P13716466932692511302

`∑[2*n-A071050(n)]+n`
-/

namespace A267448.P13716466932692511302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A071050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A267448.P13716466932692511302

namespace A267448

/-- `∑[2*n-A071050(n)]+n` -/
def P13716466932692511302.Spec : Prop :=
  ∀ n, P13716466932692511302.a n = A267448 n

end A267448

/-! ## A267448.P5096625491317976202

`∑[A071051(n)%A016777(n)]`
-/

namespace A267448.P5096625491317976202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071051 n) (A016777 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267448.P5096625491317976202

namespace A267448

/-- `∑[A071051(n)%A016777(n)]` -/
def P5096625491317976202.Spec : Prop :=
  ∀ n, P5096625491317976202.a n = A267448 n

end A267448

/-! ## A267448.P2782818594916989700

`∑[C(A071051(n), A089026(2*(n+1)))]`
-/

namespace A267448.P2782818594916989700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A071051 n).toNat (A089026 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267448.P2782818594916989700

namespace A267448

/-- `∑[C(A071051(n), A089026(2*(n+1)))]` -/
def P2782818594916989700.Spec : Prop :=
  ∀ n, (P2782818594916989700.a n : ℤ) = A267448 n

end A267448

/-! ## A267448.P16005266638261595745

`A023443(A267368(n))`
-/

namespace A267448.P16005266638261595745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A267368 n).toNat

end

end A267448.P16005266638261595745

namespace A267448

/-- `A023443(A267368(n))` -/
def P16005266638261595745.Spec : Prop :=
  ∀ n, P16005266638261595745.a n = A267448 n

end A267448

/-!
# A267449: Binary representation of the n-th iteration of the "Rule 131" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267449, there is no canonical definition to state claims against.
-/

/-! ## A267449.P14838049747483072041

`A007088(A267450(n))`
-/

namespace A267449.P14838049747483072041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267450 n).toNat

end

end A267449.P14838049747483072041

/-! ## A267449.P15961576756182522262

`A185544(2*A267450(n))`
-/

namespace A267449.P15961576756182522262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A267450 n).toNat

end

end A267449.P15961576756182522262

/-! ## A267449.P7708593947888910465

`A185544(A267450(n)+A267450(n))`
-/

namespace A267449.P7708593947888910465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A267450 n + A267450 n).toNat

end

end A267449.P7708593947888910465

/-!
# A267450: Decimal representation of the n-th iteration of the "Rule 131" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267450, there is no canonical definition to state claims against.
-/

/-! ## A267450.P17685885428617233402

`xor(A004396(n), A065475(A037497(n+1)))`
-/

namespace A267450.P17685885428617233402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004396 n) (A065475 (A037497 (n + 1)).toNat)

end

end A267450.P17685885428617233402

/-! ## A267450.P16684007409620028301

`A110654(A263551(n+1))-A063375(n+1)`
-/

namespace A267450.P16684007409620028301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A263551 (n + 1)).toNat - A063375 (n + 1)

end

end A267450.P16684007409620028301

/-!
# A267451: Number of ON (black) cells in the n-th iteration of the "Rule 131" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267451, the canonical program `A267451.P12065212408125967274` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267451 has offset 0).

The definition of A267451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267451.P12065212408125967274

`a(n-3)+a(n-4)-a(n-7)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=4, a(5)=3, a(6)=6`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267451

/-- `a(n-3)+a(n-4)-a(n-7)` -/
def P12065212408125967274.Spec : Prop :=
  ∀ n, P12065212408125967274.a n = A267451 n

theorem P12065212408125967274.correct : P12065212408125967274.Spec := by
  intro n
  simp only [A267451]

end A267451

/-! ## A267451.P16062501673900284541

`Δ[n²]-A267453(n)`
-/

namespace A267451.P16062501673900284541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A267453 n

end

end A267451.P16062501673900284541

namespace A267451

/-- `Δ[n²]-A267453(n)` -/
def P16062501673900284541.Spec : Prop :=
  ∀ n, P16062501673900284541.a n = A267451 n

end A267451

/-! ## A267451.P6755040213350168843

`n+1-A267453(n%(n+1))+n`
-/

namespace A267451.P6755040213350168843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A267453 (n % (n + 1)) + (n : ℤ)

end

end A267451.P6755040213350168843

namespace A267451

/-- `n+1-A267453(n%(n+1))+n` -/
def P6755040213350168843.Spec : Prop :=
  ∀ n, P6755040213350168843.a n = A267451 n

end A267451

/-! ## A267451.P9661904171493065501

`A047231(n+1)-(A004525(n+1)+a(n-1))` with `a(0)=1`
-/

namespace A267451.P9661904171493065501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A047231 (n + 1) - (A004525 (n + 1) + a (n - 1))

end

end A267451.P9661904171493065501

namespace A267451

/-- `A047231(n+1)-(A004525(n+1)+a(n-1))` -/
def P9661904171493065501.Spec : Prop :=
  ∀ n, P9661904171493065501.a n = A267451 n

end A267451

/-! ## A267451.P8958042912225039920

`A087504(2*n)-A008647(n+1)`
-/

namespace A267451.P8958042912225039920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087504 (2 * n) - A008647 (n + 1)

end

end A267451.P8958042912225039920

namespace A267451

/-- `A087504(2*n)-A008647(n+1)` -/
def P8958042912225039920.Spec : Prop :=
  ∀ n, P8958042912225039920.a n = A267451 n

end A267451

/-! ## A267451.P4381567063639047133

`A008647(A008592(n))-A008647(n+1)`
-/

namespace A267451.P4381567063639047133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A008592 n).toNat - A008647 (n + 1)

end

end A267451.P4381567063639047133

namespace A267451

/-- `A008647(A008592(n))-A008647(n+1)` -/
def P4381567063639047133.Spec : Prop :=
  ∀ n, P4381567063639047133.a n = A267451 n

end A267451

/-! ## A267451.P5809369996412766373

`A008647(A017377(n))-A008647(n+1)`
-/

namespace A267451.P5809369996412766373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A017377 n).toNat - A008647 (n + 1)

end

end A267451.P5809369996412766373

namespace A267451

/-- `A008647(A017377(n))-A008647(n+1)` -/
def P5809369996412766373.Spec : Prop :=
  ∀ n, P5809369996412766373.a n = A267451 n

end A267451

/-!
# A267452: Total number of ON (black) cells after n iterations of the "Rule 131" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267452, the canonical program `A267452.P11383968015941693890` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267452 has offset 0).

The definition of A267452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267452.P11383968015941693890

`a(n-1)+a(n-3)-a(n-5)-a(n-7)+a(n-8)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6, a(4)=10, a(5)=13, a(6)=19, a(7)=24`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267452

/-- `a(n-1)+a(n-3)-a(n-5)-a(n-7)+a(n-8)` -/
def P11383968015941693890.Spec : Prop :=
  ∀ n, P11383968015941693890.a n = A267452 n

theorem P11383968015941693890.correct : P11383968015941693890.Spec := by
  intro n
  simp only [A267452]

end A267452

/-! ## A267452.P2019163134904408204

`∑[A267451(n)]`
-/

namespace A267452.P2019163134904408204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267452.P2019163134904408204

namespace A267452

/-- `∑[A267451(n)]` -/
def P2019163134904408204.Spec : Prop :=
  ∀ n, P2019163134904408204.a n = A267452 n

end A267452

/-! ## A267452.P1013565612324132191

`(n+1)²-A267454(n)`
-/

namespace A267452.P1013565612324132191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A267454 n

end

end A267452.P1013565612324132191

namespace A267452

/-- `(n+1)²-A267454(n)` -/
def P1013565612324132191.Spec : Prop :=
  ∀ n, P1013565612324132191.a n = A267452 n

end A267452

/-! ## A267452.P16953419288334495774

`∑[Δ[n²]-A267453(n)]`
-/

namespace A267452.P16953419288334495774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A267453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267452.P16953419288334495774

namespace A267452

/-- `∑[Δ[n²]-A267453(n)]` -/
def P16953419288334495774.Spec : Prop :=
  ∀ n, P16953419288334495774.a n = A267452 n

end A267452

/-! ## A267452.P7307746531173841353

`∑[A087504(2*n)-A008647(n+1)]`
-/

namespace A267452.P7307746531173841353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087504 (2 * n) - A008647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267452.P7307746531173841353

namespace A267452

/-- `∑[A087504(2*n)-A008647(n+1)]` -/
def P7307746531173841353.Spec : Prop :=
  ∀ n, P7307746531173841353.a n = A267452 n

end A267452

/-! ## A267452.P9755177175874894773

`A130519(2*n+1)+A123919(2*(n+1))-A130519(n+1)`
-/

namespace A267452.P9755177175874894773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (2 * n + 1) + (A123919 (2 * (n + 1)) - A130519 (n + 1))

end

end A267452.P9755177175874894773

namespace A267452

/-- `A130519(2*n+1)+A123919(2*(n+1))-A130519(n+1)` -/
def P9755177175874894773.Spec : Prop :=
  ∀ n, P9755177175874894773.a n = A267452 n

end A267452

/-! ## A267452.P15883798336546639633

`A309689(3*n)+A001840(n+1)-A309689(2*n+1)`
-/

namespace A267452.P15883798336546639633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309689 (3 * n) + (A001840 (n + 1) - A309689 (2 * n + 1))

end

end A267452.P15883798336546639633

namespace A267452

/-- `A309689(3*n)+A001840(n+1)-A309689(2*n+1)` -/
def P15883798336546639633.Spec : Prop :=
  ∀ n, P15883798336546639633.a n = A267452 n

end A267452

/-! ## A267452.P635735211324028466

`A087811(n+1)+A004526(A087811(n+1))-A010761(n+1)`
-/

namespace A267452.P635735211324028466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1) + (A004526 (A087811 (n + 1)).toNat - A010761 (n + 1))

end

end A267452.P635735211324028466

namespace A267452

/-- `A087811(n+1)+A004526(A087811(n+1))-A010761(n+1)` -/
def P635735211324028466.Spec : Prop :=
  ∀ n, P635735211324028466.a n = A267452 n

end A267452

/-! ## A267452.P5548814114608876342

`∑[∑{digits}[A262859(n), #]]`
-/

namespace A267452.P5548814114608876342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262859 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267452.P5548814114608876342

namespace A267452

/-- `∑[∑{digits}[A262859(n), #]]` -/
def P5548814114608876342.Spec : Prop :=
  ∀ n, (P5548814114608876342.a n : ℤ) = A267452 n

end A267452

/-!
# A267453: Number of OFF (white) cells in the n-th iteration of the "Rule 131" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267453, the canonical program `A267453.P13738260465487703367` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267453 has offset 0).

The definition of A267453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267453.P5630157665605930277

`comp[5*n-2]+floor(log2(gcd(6, n+1)))`
-/

namespace A267453.P5630157665605930277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + Nat.log 2 (Nat.gcd 6 (n + 1))

end

end A267453.P5630157665605930277

namespace A267453

/-- `comp[5*n-2]+floor(log2(gcd(6, n+1)))` -/
def P5630157665605930277.Spec : Prop :=
  ∀ n, (P5630157665605930277.a n : ℤ) = A267453 n

end A267453

/-! ## A267453.P13738260465487703367

`a(n-3)+a(n-4)-a(n-7)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=5, a(4)=5, a(5)=8, a(6)=7`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267453

/-- `a(n-3)+a(n-4)-a(n-7)` -/
def P13738260465487703367.Spec : Prop :=
  ∀ n, P13738260465487703367.a n = A267453 n

theorem P13738260465487703367.correct : P13738260465487703367.Spec := by
  intro n
  simp only [A267453]

end A267453

/-! ## A267453.P15490545298110086199

`Δ[n²]-A267451(n)`
-/

namespace A267453.P15490545298110086199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A267451 n

end

end A267453.P15490545298110086199

namespace A267453

/-- `Δ[n²]-A267451(n)` -/
def P15490545298110086199.Spec : Prop :=
  ∀ n, P15490545298110086199.a n = A267453 n

end A267453

/-! ## A267453.P10825976239877228959

`n+1-A267451(n%(n+1))+n`
-/

namespace A267453.P10825976239877228959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A267451 (n % (n + 1)) + (n : ℤ)

end

end A267453.P10825976239877228959

namespace A267453

/-- `n+1-A267451(n%(n+1))+n` -/
def P10825976239877228959.Spec : Prop :=
  ∀ n, P10825976239877228959.a n = A267453 n

end A267453

/-! ## A267453.P1146093765598140945

`A171182(n+1)+A032769(n+1)`
-/

namespace A267453.P1146093765598140945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171182 (n + 1) + A032769 (n + 1)

end

end A267453.P1146093765598140945

namespace A267453

/-- `A171182(n+1)+A032769(n+1)` -/
def P1146093765598140945.Spec : Prop :=
  ∀ n, P1146093765598140945.a n = A267453 n

end A267453

/-! ## A267453.P17356621218607587398

`A047285(n+1)-A174257(n+1)`
-/

namespace A267453.P17356621218607587398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047285 (n + 1) - A174257 (n + 1)

end

end A267453.P17356621218607587398

namespace A267453

/-- `A047285(n+1)-A174257(n+1)` -/
def P17356621218607587398.Spec : Prop :=
  ∀ n, P17356621218607587398.a n = A267453 n

end A267453

/-! ## A267453.P14045558739172351696

`A211703(n+1)-A063208(n+1)`
-/

namespace A267453.P14045558739172351696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211703 (n + 1) - A063208 (n + 1)

end

end A267453.P14045558739172351696

namespace A267453

/-- `A211703(n+1)-A063208(n+1)` -/
def P14045558739172351696.Spec : Prop :=
  ∀ n, P14045558739172351696.a n = A267453 n

end A267453

/-! ## A267453.P3593716402144717413

`A384717(n+1)-A059169(n+1)`
-/

namespace A267453.P3593716402144717413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384717 (n + 1) - A059169 (n + 1)

end

end A267453.P3593716402144717413

namespace A267453

/-- `A384717(n+1)-A059169(n+1)` -/
def P3593716402144717413.Spec : Prop :=
  ∀ n, P3593716402144717413.a n = A267453 n

end A267453

/-! ## A267453.P11390895359611566094

`A008647(n+1)+A103221(n+1)+n`
-/

namespace A267453.P11390895359611566094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (n + 1) + (A103221 (n + 1) + (n : ℤ))

end

end A267453.P11390895359611566094

namespace A267453

/-- `A008647(n+1)+A103221(n+1)+n` -/
def P11390895359611566094.Spec : Prop :=
  ∀ n, P11390895359611566094.a n = A267453 n

end A267453

/-! ## A267453.P513859049130169995

`A002265(n+1)+A130481(n)+A000035(n)`
-/

namespace A267453.P513859049130169995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 1) + (A130481 n + A000035 n)

end

end A267453.P513859049130169995

namespace A267453

/-- `A002265(n+1)+A130481(n)+A000035(n)` -/
def P513859049130169995.Spec : Prop :=
  ∀ n, P513859049130169995.a n = A267453 n

end A267453

/-! ## A267453.P9385665429468906276

`A047201(n+2)-(A011655(n+1)+A000035(n+1))`
-/

namespace A267453.P9385665429468906276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 2) - (A011655 (n + 1) + A000035 (n + 1))

end

end A267453.P9385665429468906276

namespace A267453

/-- `A047201(n+2)-(A011655(n+1)+A000035(n+1))` -/
def P9385665429468906276.Spec : Prop :=
  ∀ n, P9385665429468906276.a n = A267453 n

end A267453

/-! ## A267453.P7206910224834418762

`A008647(A005843(n+1))+A008647(n+1)+n`
-/

namespace A267453.P7206910224834418762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A005843 (n + 1)).toNat + (A008647 (n + 1) + (n : ℤ))

end

end A267453.P7206910224834418762

namespace A267453

/-- `A008647(A005843(n+1))+A008647(n+1)+n` -/
def P7206910224834418762.Spec : Prop :=
  ∀ n, P7206910224834418762.a n = A267453 n

end A267453

/-! ## A267453.P4459126012013536703

`lt[A271457(n), 5]-(A267451(abs(1-n)+1)-2)`
-/

namespace A267453.P4459126012013536703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271457 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (A267451 (|1 - (n : ℤ)| + 1).toNat - 2)

end

end A267453.P4459126012013536703

namespace A267453

/-- `lt[A271457(n), 5]-(A267451(abs(1-n)+1)-2)` -/
def P4459126012013536703.Spec : Prop :=
  ∀ n, P4459126012013536703.a n = A267453 n

end A267453

/-!
# A267454: Total number of OFF (white) cells after n iterations of the "Rule 131" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267454, the canonical program `A267454.P17227104617429042463` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267454 has offset 0).

The definition of A267454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267454.P17227104617429042463

`a(n-1)+a(n-3)-a(n-5)-a(n-7)+a(n-8)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=10, a(4)=15, a(5)=23, a(6)=30, a(7)=40`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267454

/-- `a(n-1)+a(n-3)-a(n-5)-a(n-7)+a(n-8)` -/
def P17227104617429042463.Spec : Prop :=
  ∀ n, P17227104617429042463.a n = A267454 n

theorem P17227104617429042463.correct : P17227104617429042463.Spec := by
  intro n
  simp only [A267454]

end A267454

/-! ## A267454.P9088341883391099231

`∑[A267453(n)]`
-/

namespace A267454.P9088341883391099231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267454.P9088341883391099231

namespace A267454

/-- `∑[A267453(n)]` -/
def P9088341883391099231.Spec : Prop :=
  ∀ n, P9088341883391099231.a n = A267454 n

end A267454

/-! ## A267454.P12674126338563272357

`(n+1)²-A267452(n)`
-/

namespace A267454.P12674126338563272357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A267452 n

end

end A267454.P12674126338563272357

namespace A267454

/-- `(n+1)²-A267452(n)` -/
def P12674126338563272357.Spec : Prop :=
  ∀ n, P12674126338563272357.a n = A267454 n

end A267454

/-! ## A267454.P5238438223129004634

`∑[Δ[n²]-A267451(n)]`
-/

namespace A267454.P5238438223129004634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A267451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267454.P5238438223129004634

namespace A267454

/-- `∑[Δ[n²]-A267451(n)]` -/
def P5238438223129004634.Spec : Prop :=
  ∀ n, P5238438223129004634.a n = A267454 n

end A267454

/-! ## A267454.P5323819503747353664

`A010761(n+1)+∑[A002265(n+1)+n]`
-/

namespace A267454.P5323819503747353664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010761 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267454.P5323819503747353664

namespace A267454

/-- `A010761(n+1)+∑[A002265(n+1)+n]` -/
def P5323819503747353664.Spec : Prop :=
  ∀ n, P5323819503747353664.a n = A267454 n

end A267454

/-! ## A267454.P17931274498215629635

`∑[A002265(n+1)+A130481(n)+A000035(n)]`
-/

namespace A267454.P17931274498215629635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 1) + (A130481 n + A000035 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267454.P17931274498215629635

namespace A267454

/-- `∑[A002265(n+1)+A130481(n)+A000035(n)]` -/
def P17931274498215629635.Spec : Prop :=
  ∀ n, P17931274498215629635.a n = A267454 n

end A267454

/-!
# A267455: Primes which are a square (mod 39).

The programs for A267455, there is no canonical definition to state claims against.
-/

/-! ## A267455.P12188565428491999755

`∪[A033227(n+1), A106884(n+1)]`
-/

namespace A267455.P12188565428491999755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A267455.P12188565428491999755

/-! ## A267455.P4731535412682170576

`∪[A106883(n+1), A139494(n+1)]`
-/

namespace A267455.P4731535412682170576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A267455.P4731535412682170576

/-! ## A267455.P13815063445094092789

`∪[A106884(n+1), A139494(n+1)]`
-/

namespace A267455.P13815063445094092789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A267455.P13815063445094092789

/-! ## A267455.P4347529667905744756

`∪[A139494(n+1), A139908(n+1)]`
-/

namespace A267455.P4347529667905744756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A267455.P4347529667905744756

/-! ## A267455.P11681457031435636188

`∩[A007645(n+1), A038883(n+1)]`
-/

namespace A267455.P11681457031435636188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267455.P11681457031435636188

/-! ## A267455.P484162780335593242

`∩[A038883(n+1), A045331(n+1)]`
-/

namespace A267455.P484162780335593242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267455.P484162780335593242

/-! ## A267455.P8307911506940926815

`∩[A038883(n+1), A279815(n+1)]`
-/

namespace A267455.P8307911506940926815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267455.P8307911506940926815

/-! ## A267455.P17799799952923601117

`∩[A038883(n+1), A055664(n+1)]`
-/

namespace A267455.P17799799952923601117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267455.P17799799952923601117

/-! ## A267455.P3384406093973745553

`filter[A038883(n+1), A353815(#)]`
-/

namespace A267455.P3384406093973745553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A267455.P3384406093973745553

/-! ## A267455.P7417724966602971838

`filter[A038883(n+1), A353816(#)]`
-/

namespace A267455.P7417724966602971838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A267455.P7417724966602971838

/-! ## A267455.P14778588714223850668

`∩[A034021(n+1), A038883(n+1)]`
-/

namespace A267455.P14778588714223850668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267455.P14778588714223850668

/-! ## A267455.P12034009853942453908

`∩[A034017(n+1), A038883(n+1)]`
-/

namespace A267455.P12034009853942453908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267455.P12034009853942453908

/-! ## A267455.P17349951633700379975

`∩[A038883(n+1), A198772(n+1)]`
-/

namespace A267455.P17349951633700379975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267455.P17349951633700379975

/-! ## A267455.P4250928308951172119

`∩[A038883(n+1), A364614(n+1)]`
-/

namespace A267455.P4250928308951172119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267455.P4250928308951172119

/-! ## A267455.P3786457741056810716

`∩[A038883(n+1), A266836(n+1)]`
-/

namespace A267455.P3786457741056810716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267455.P3786457741056810716

/-! ## A267455.P3422732034343530496

`filter[A038883(n+1), A135461(#)]`
-/

namespace A267455.P3422732034343530496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A267455.P3422732034343530496

/-! ## A267455.P1419985476033283419

`∩[A038883(n+1), A100764(n+1)]`
-/

namespace A267455.P1419985476033283419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267455.P1419985476033283419

/-! ## A267455.P17807134151262842309

`∩[A007645(n+1), A035256(n+1)]`
-/

namespace A267455.P17807134151262842309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267455.P17807134151262842309

/-! ## A267455.P5737459017215198312

`∩[A035256(n+1), A045331(n+1)]`
-/

namespace A267455.P5737459017215198312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267455.P5737459017215198312

/-! ## A267455.P8251501242802494768

`∩[A038883(n+1), A329963(n+1)]`
-/

namespace A267455.P8251501242802494768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267455.P8251501242802494768

/-!
# A267456: Binary representation of the n-th iteration of the "Rule 133" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267456, there is no canonical definition to state claims against.
-/

/-! ## A267456.P7919003355109241075

`A281146(2*n-A158478(n))`
-/

namespace A267456.P7919003355109241075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281146 ((2 * n : ℤ) - A158478 n).toNat

end

end A267456.P7919003355109241075

/-! ## A267456.P11299535817539299414

`A281146(n-A158478(n)+n)`
-/

namespace A267456.P11299535817539299414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281146 ((n : ℤ) - A158478 n + (n : ℤ)).toNat

end

end A267456.P11299535817539299414

/-! ## A267456.P14002770696392274092

`A281146(n-(A158478(n)-n))`
-/

namespace A267456.P14002770696392274092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281146 ((n : ℤ) - (A158478 n - (n : ℤ))).toNat

end

end A267456.P14002770696392274092

/-! ## A267456.P17084554907702246084

`A281146(lt[A334720(n+3), 1])`
-/

namespace A267456.P17084554907702246084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334720 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281146 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A267456.P17084554907702246084

/-! ## A267456.P6071425954112560136

`record[gcd(A281146(n), A334720(n+3))]`
-/

namespace A267456.P6071425954112560136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A281146 n) (A334720 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267456.P6071425954112560136

/-!
# A267457: Decimal representation of the n-th iteration of the "Rule 133" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267457, the canonical program `A267457.P1785239229452461848` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267457 has offset 0).

The definition of A267457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267457.P1785239229452461848

`17*a(n-2)-16*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=84, a(5)=168`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267457

/-- `17*a(n-2)-16*a(n-4)` -/
def P1785239229452461848.Spec : Prop :=
  ∀ n, P1785239229452461848.a n = A267457 n

theorem P1785239229452461848.correct : P1785239229452461848.Spec := by
  intro n
  simp only [A267457]

end A267457

/-! ## A267457.P13792349233851118713

`abs(A153772(A042948(n)))`
-/

namespace A267457.P13792349233851118713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A153772 (A042948 n).toNat|

end

end A267457.P13792349233851118713

namespace A267457

/-- `abs(A153772(A042948(n)))` -/
def P13792349233851118713.Spec : Prop :=
  ∀ n, P13792349233851118713.a n = A267457 n

end A267457

/-! ## A267457.P17374838909557762907

`record[gcd(A050605(n), A153772(n))]`
-/

namespace A267457.P17374838909557762907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050605 n) (A153772 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267457.P17374838909557762907

namespace A267457

/-- `record[gcd(A050605(n), A153772(n))]` -/
def P17374838909557762907.Spec : Prop :=
  ∀ n, (P17374838909557762907.a n : ℤ) = A267457 n

end A267457

/-! ## A267457.P14164385778968552371

`lcm(A000034(n), A153772(A042948(n)))`
-/

namespace A267457.P14164385778968552371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A153772 (A042948 n).toNat)

end

end A267457.P14164385778968552371

namespace A267457

/-- `lcm(A000034(n), A153772(A042948(n)))` -/
def P14164385778968552371.Spec : Prop :=
  ∀ n, (P14164385778968552371.a n : ℤ) = A267457 n

end A267457

/-! ## A267457.P3991703536498564360

`xor(A001045(A042948(n)), A010684(n))`
-/

namespace A267457.P3991703536498564360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001045 (A042948 n).toNat) (A010684 n)

end

end A267457.P3991703536498564360

namespace A267457

/-- `xor(A001045(A042948(n)), A010684(n))` -/
def P3991703536498564360.Spec : Prop :=
  ∀ n, P3991703536498564360.a n = A267457 n

end A267457

/-! ## A267457.P3185062728946237837

`or(A078008(n), A094359(n))*A128209(n)`
-/

namespace A267457.P3185062728946237837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A078008 n) (A094359 n) * A128209 n

end

end A267457.P3185062728946237837

namespace A267457

/-- `or(A078008(n), A094359(n))*A128209(n)` -/
def P3185062728946237837.Spec : Prop :=
  ∀ n, P3185062728946237837.a n = A267457 n

end A267457

/-! ## A267457.P10200867672970574711

`and(A267527(n), A267678(n))`
-/

namespace A267457.P10200867672970574711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267527 n) (A267678 n)

end

end A267457.P10200867672970574711

namespace A267457

/-- `and(A267527(n), A267678(n))` -/
def P10200867672970574711.Spec : Prop :=
  ∀ n, P10200867672970574711.a n = A267457 n

end A267457

/-! ## A267457.P1298546217267670223

`and(A053209(2*n), A266873(n))`
-/

namespace A267457.P1298546217267670223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053209 (2 * n)) (A266873 n)

end

end A267457.P1298546217267670223

namespace A267457

/-- `and(A053209(2*n), A266873(n))` -/
def P1298546217267670223.Spec : Prop :=
  ∀ n, P1298546217267670223.a n = A267457 n

end A267457

/-!
# A267458: Number of ON (black) cells in the n-th iteration of the "Rule 133" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267458, the canonical program `A267458.P3233545453350610498` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267458 has offset 0).

The definition of A267458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267458.P3233545453350610498

`abs(or(1, 1-n))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267458

/-- `abs(or(1, 1-n))` -/
def P3233545453350610498.Spec : Prop :=
  ∀ n, P3233545453350610498.a n = A267458 n

theorem P3233545453350610498.correct : P3233545453350610498.Spec := by
  intro n
  simp only [A267458]

end A267458

/-! ## A267458.P12051943499807622868

`abs(1-and(n, -2))`
-/

namespace A267458.P12051943499807622868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - Int.land (n : ℤ) (-2)|

end

end A267458.P12051943499807622868

namespace A267458

/-- `abs(1-and(n, -2))` -/
def P12051943499807622868.Spec : Prop :=
  ∀ n, P12051943499807622868.a n = A267458 n

end A267458

/-! ## A267458.P4917996465850089251

`or(1, floor(n-atan(n)))`
-/

namespace A267458.P4917996465850089251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋

end

end A267458.P4917996465850089251

namespace A267458

/-- `or(1, floor(n-atan(n)))` -/
def P4917996465850089251.Spec : Prop :=
  ∀ n, P4917996465850089251.a n = A267458 n

end A267458

/-! ## A267458.P16817539460515058261

`root(or(1, 1-n)², 2)`
-/

namespace A267458.P16817539460515058261
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (1 - (n : ℤ)) ^ 2 : ℝ) ^ (1 / (2 : ℝ))

end

end A267458.P16817539460515058261

namespace A267458

/-- `root(or(1, 1-n)², 2)` -/
def P16817539460515058261.Spec : Prop :=
  ∀ n, P16817539460515058261.a n = (A267458 n : ℝ)

end A267458

/-! ## A267458.P14746884669101635958

`abs(n%2+1-n)`
-/

namespace A267458.P14746884669101635958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n % 2 : ℕ) : ℤ) + (1 - (n : ℤ))|

end

end A267458.P14746884669101635958

namespace A267458

/-- `abs(n%2+1-n)` -/
def P14746884669101635958.Spec : Prop :=
  ∀ n, P14746884669101635958.a n = A267458 n

end A267458

/-! ## A267458.P16902783961371607988

`abs(gcd(2, n+1)-n)`
-/

namespace A267458.P16902783961371607988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.gcd 2 (n + 1) : ℤ) - (n : ℤ)|

end

end A267458.P16902783961371607988

namespace A267458

/-- `abs(gcd(2, n+1)-n)` -/
def P16902783961371607988.Spec : Prop :=
  ∀ n, P16902783961371607988.a n = A267458 n

end A267458

/-! ## A267458.P9368809657506705923

`lcm(2, or(1, n-2))/2`
-/

namespace A267458.P9368809657506705923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (Int.lor 1 ((n : ℤ) - 2)) : ℚ) / 2

end

end A267458.P9368809657506705923

namespace A267458

/-- `lcm(2, or(1, n-2))/2` -/
def P9368809657506705923.Spec : Prop :=
  ∀ n, P9368809657506705923.a n = (A267458 n : ℚ)

end A267458

/-! ## A267458.P15135192480948770555

`abs(or(1, -(n+1))+2)`
-/

namespace A267458.P15135192480948770555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-(n + 1 : ℤ)) + 2|

end

end A267458.P15135192480948770555

namespace A267458

/-- `abs(or(1, -(n+1))+2)` -/
def P15135192480948770555.Spec : Prop :=
  ∀ n, P15135192480948770555.a n = A267458 n

end A267458

/-! ## A267458.P8699822020579405832

`or(1, n-2%(n+1))`
-/

namespace A267458.P8699822020579405832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - ((2 % (n + 1) : ℕ) : ℤ))

end

end A267458.P8699822020579405832

namespace A267458

/-- `or(1, n-2%(n+1))` -/
def P8699822020579405832.Spec : Prop :=
  ∀ n, P8699822020579405832.a n = A267458 n

end A267458

/-! ## A267458.P6057037400341093191

`or(1, (3*n)%(n+1))`
-/

namespace A267458.P6057037400341093191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n % (n + 1))

end

end A267458.P6057037400341093191

namespace A267458

/-- `or(1, (3*n)%(n+1))` -/
def P6057037400341093191.Spec : Prop :=
  ∀ n, (P6057037400341093191.a n : ℤ) = A267458 n

end A267458

/-! ## A267458.P16036085190366641029

`abs(((2*n)%4)!-n)`
-/

namespace A267458.P16036085190366641029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial (2 * n % 4) : ℤ) - (n : ℤ)|

end

end A267458.P16036085190366641029

namespace A267458

/-- `abs(((2*n)%4)!-n)` -/
def P16036085190366641029.Spec : Prop :=
  ∀ n, P16036085190366641029.a n = A267458 n

end A267458

/-! ## A267458.P3829421455320276065

`abs(2-(char[2*n]+n))`
-/

namespace A267458.P3829421455320276065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (((if ∃ j, f1 j = n then 1 else 0) + n : ℕ) : ℤ)|

end

end A267458.P3829421455320276065

namespace A267458

/-- `abs(2-(char[2*n]+n))` -/
def P3829421455320276065.Spec : Prop :=
  ∀ n, P3829421455320276065.a n = A267458 n

end A267458

/-! ## A267458.P2699666490530034872

`or(1, floor(n²/(n+2)))`
-/

namespace A267458.P2699666490530034872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(n ^ 2 : ℚ) / (n + 2 : ℚ)⌋

end

end A267458.P2699666490530034872

namespace A267458

/-- `or(1, floor(n²/(n+2)))` -/
def P2699666490530034872.Spec : Prop :=
  ∀ n, P2699666490530034872.a n = A267458 n

end A267458

/-! ## A267458.P17718043889950479402

`2+a(n-2)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A267458.P17718043889950479402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  2 + a (n - 2)

end

end A267458.P17718043889950479402

namespace A267458

/-- `2+a(n-2)` -/
def P17718043889950479402.Spec : Prop :=
  ∀ n, (P17718043889950479402.a n : ℤ) = A267458 n

end A267458

/-! ## A267458.P12835368265342614975

`or(1, 1-n)²^(1/2)`
-/

namespace A267458.P12835368265342614975
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (1 - (n : ℤ)) ^ 2 : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A267458.P12835368265342614975

namespace A267458

/-- `or(1, 1-n)²^(1/2)` -/
def P12835368265342614975.Spec : Prop :=
  ∀ n, P12835368265342614975.a n = (A267458 n : ℝ)

end A267458

/-! ## A267458.P14125611306745804492

`sqrt(or(1, n-2)^(4/2))`
-/

namespace A267458.P14125611306745804492
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((Int.lor 1 ((n : ℤ) - 2) : ℝ) ^ ((4 : ℚ) / 2 : ℝ))

end

end A267458.P14125611306745804492

namespace A267458

/-- `sqrt(or(1, n-2)^(4/2))` -/
def P14125611306745804492.Spec : Prop :=
  ∀ n, P14125611306745804492.a n = (A267458 n : ℝ)

end A267458

/-! ## A267458.P15616502806418491064

`or(n, ceil(3/(n+1)))-2`
-/

namespace A267458.P15616502806418491064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌈3 / (n + 1 : ℚ)⌉ - 2

end

end A267458.P15616502806418491064

namespace A267458

/-- `or(n, ceil(3/(n+1)))-2` -/
def P15616502806418491064.Spec : Prop :=
  ∀ n, P15616502806418491064.a n = A267458 n

end A267458

/-! ## A267458.P3692084938244185235

`∑[2-a(n-1)]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A267458.P3692084938244185235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267458.P3692084938244185235

namespace A267458

/-- `∑[2-a(n-1)]` -/
def P3692084938244185235.Spec : Prop :=
  ∀ n, P3692084938244185235.a n = A267458 n

end A267458

/-! ## A267458.P9240942100434270538

`gcd(and(1, n)-(n-1), C(2, n))`
-/

namespace A267458.P9240942100434270538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((Nat.land 1 n : ℤ) - ((n : ℤ) - 1)) (Nat.choose 2 n : ℤ)

end

end A267458.P9240942100434270538

namespace A267458

/-- `gcd(and(1, n)-(n-1), C(2, n))` -/
def P9240942100434270538.Spec : Prop :=
  ∀ n, (P9240942100434270538.a n : ℤ) = A267458 n

end A267458

/-! ## A267458.P14798747205132774450

`ogf((1-x^2+2x^4)/(1-x-x^2+x^3))`
-/

namespace A267458.P14798747205132774450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, 0, 2] [1, -1, -1, 1] n

end

end A267458.P14798747205132774450

namespace A267458

/-- `ogf((1-x^2+2x^4)/(1-x-x^2+x^3))` -/
def P14798747205132774450.Spec : Prop :=
  ∀ n, P14798747205132774450.a n = A267458 n

end A267458

/-!
# A267459: Total number of ON (black) cells after n iterations of the "Rule 133" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267459, the canonical program `A267459.P2217253163359387532` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267459 has offset 0).

The definition of A267459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267459.P2217253163359387532

`∑[abs(or(1, 1-n))]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267459

/-- `∑[abs(or(1, 1-n))]` -/
def P2217253163359387532.Spec : Prop :=
  ∀ n, P2217253163359387532.a n = A267459 n

theorem P2217253163359387532.correct : P2217253163359387532.Spec := by
  intro n
  simp only [A267459]

end A267459

/-! ## A267459.P17728985533262505461

`∑[abs(n%2+1-n)]`
-/

namespace A267459.P17728985533262505461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n % 2 + 1 : ℕ) : ℤ) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267459.P17728985533262505461

namespace A267459

/-- `∑[abs(n%2+1-n)]` -/
def P17728985533262505461.Spec : Prop :=
  ∀ n, P17728985533262505461.a n = A267459 n

end A267459

/-! ## A267459.P2757964135585469775

`∑[abs(gcd(2, n+1)-n)]`
-/

namespace A267459.P2757964135585469775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.gcd 2 (n + 1) : ℤ) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267459.P2757964135585469775

namespace A267459

/-- `∑[abs(gcd(2, n+1)-n)]` -/
def P2757964135585469775.Spec : Prop :=
  ∀ n, P2757964135585469775.a n = A267459 n

end A267459

/-! ## A267459.P16945817291945433207

`∑[or(1, n-2%(n+1))]`
-/

namespace A267459.P16945817291945433207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - ((2 % (n + 1) : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267459.P16945817291945433207

namespace A267459

/-- `∑[or(1, n-2%(n+1))]` -/
def P16945817291945433207.Spec : Prop :=
  ∀ n, P16945817291945433207.a n = A267459 n

end A267459

/-! ## A267459.P17920923701404846069

`∑[or(1, (3*n)%(n+1))]`
-/

namespace A267459.P17920923701404846069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267459.P17920923701404846069

namespace A267459

/-- `∑[or(1, (3*n)%(n+1))]` -/
def P17920923701404846069.Spec : Prop :=
  ∀ n, (P17920923701404846069.a n : ℤ) = A267459 n

end A267459

/-! ## A267459.P17654888287654291736

`∑[abs(char[2*n]+n-2)]`
-/

namespace A267459.P17654888287654291736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + ((n : ℤ) - 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267459.P17654888287654291736

namespace A267459

/-- `∑[abs(char[2*n]+n-2)]` -/
def P17654888287654291736.Spec : Prop :=
  ∀ n, P17654888287654291736.a n = A267459 n

end A267459

/-! ## A267459.P3284989943444448419

`∑[comp[or(2, n)]%(n+1)]+1`
-/

namespace A267459.P3284989943444448419
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A267459.P3284989943444448419

namespace A267459

/-- `∑[comp[or(2, n)]%(n+1)]+1` -/
def P3284989943444448419.Spec : Prop :=
  ∀ n, (P3284989943444448419.a n : ℤ) = A267459 n

end A267459

/-! ## A267459.P3782214061860936602

`or(1, a(n-1))+n-2` with `a(0)=1, a(1)=2`
-/

namespace A267459.P3782214061860936602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lor 1 (a (n - 1)) + ((n : ℤ) - 2)

end

end A267459.P3782214061860936602

namespace A267459

/-- `or(1, a(n-1))+n-2` -/
def P3782214061860936602.Spec : Prop :=
  ∀ n, P3782214061860936602.a n = A267459 n

end A267459

/-! ## A267459.P17366048258623805654

`a(n-2)+2*(n-2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A267459.P17366048258623805654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 2) + 2 * ((n : ℤ) - 2)

end

end A267459.P17366048258623805654

namespace A267459

/-- `a(n-2)+2*(n-2)` -/
def P17366048258623805654.Spec : Prop :=
  ∀ n, P17366048258623805654.a n = A267459 n

end A267459

/-! ## A267459.P9767591021558442829

`2*n-(4-a(n-2))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A267459.P9767591021558442829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  (2 * n : ℤ) - (4 - a (n - 2))

end

end A267459.P9767591021558442829

namespace A267459

/-- `2*n-(4-a(n-2))` -/
def P9767591021558442829.Spec : Prop :=
  ∀ n, P9767591021558442829.a n = A267459 n

end A267459

/-! ## A267459.P8095800702628172959

`a(n-2)-4+n+n` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A267459.P8095800702628172959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 2) - 4 + (n : ℤ) + (n : ℤ)

end

end A267459.P8095800702628172959

namespace A267459

/-- `a(n-2)-4+n+n` -/
def P8095800702628172959.Spec : Prop :=
  ∀ n, P8095800702628172959.a n = A267459 n

end A267459

/-! ## A267459.P3145990884606034886

`n-(4-a(n-2)-n)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A267459.P3145990884606034886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  (n : ℤ) - (4 - a (n - 2) - (n : ℤ))

end

end A267459.P3145990884606034886

namespace A267459

/-- `n-(4-a(n-2)-n)` -/
def P3145990884606034886.Spec : Prop :=
  ∀ n, P3145990884606034886.a n = A267459 n

end A267459

/-! ## A267459.P2190692996681096154

`∑[(n*(2-n))%2+n-1]+2`
-/

namespace A267459.P2190692996681096154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * (2 - (n : ℤ))) 2 + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A267459.P2190692996681096154

namespace A267459

/-- `∑[(n*(2-n))%2+n-1]+2` -/
def P2190692996681096154.Spec : Prop :=
  ∀ n, P2190692996681096154.a n = A267459 n

end A267459

/-! ## A267459.P10675341243748028839

`∑[xor(7*n+4, char[2*n])%(n+1)]+1`
-/

namespace A267459.P10675341243748028839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (7 * n + 4) (if ∃ j, f2 j = n then 1 else 0) % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A267459.P10675341243748028839

namespace A267459

/-- `∑[xor(7*n+4, char[2*n])%(n+1)]+1` -/
def P10675341243748028839.Spec : Prop :=
  ∀ n, (P10675341243748028839.a n : ℤ) = A267459 n

end A267459

/-! ## A267459.P11273682581722630507

`(n+1)²-A267461(n)`
-/

namespace A267459.P11273682581722630507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A267461 n

end

end A267459.P11273682581722630507

namespace A267459

/-- `(n+1)²-A267461(n)` -/
def P11273682581722630507.Spec : Prop :=
  ∀ n, P11273682581722630507.a n = A267459 n

end A267459

/-! ## A267459.P11004333948259424884

`∑[A109613(abs(2-n))]-2`
-/

namespace A267459.P11004333948259424884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A267459.P11004333948259424884

namespace A267459

/-- `∑[A109613(abs(2-n))]-2` -/
def P11004333948259424884.Spec : Prop :=
  ∀ n, P11004333948259424884.a n = A267459 n

end A267459

/-! ## A267459.P15260023138195082167

`(n+1)²-∑[A267460(n)]`
-/

namespace A267459.P15260023138195082167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267459.P15260023138195082167

namespace A267459

/-- `(n+1)²-∑[A267460(n)]` -/
def P15260023138195082167.Spec : Prop :=
  ∀ n, P15260023138195082167.a n = A267459 n

end A267459

/-! ## A267459.P7511738895625073423

`∑[n+1]-∑[A158478(n)]`
-/

namespace A267459.P7511738895625073423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A267459.P7511738895625073423

namespace A267459

/-- `∑[n+1]-∑[A158478(n)]` -/
def P7511738895625073423.Spec : Prop :=
  ∀ n, P7511738895625073423.a n = A267459 n

end A267459

/-! ## A267459.P15905800780599945179

`∑[abs(1-A266256(n)+n)]+1`
-/

namespace A267459.P15905800780599945179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A266256 n + (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A267459.P15905800780599945179

namespace A267459

/-- `∑[abs(1-A266256(n)+n)]+1` -/
def P15905800780599945179.Spec : Prop :=
  ∀ n, P15905800780599945179.a n = A267459 n

end A267459

/-! ## A267459.P3114466340938456163

`∪[A105343(n), A108100(n)]`
-/

namespace A267459.P3114466340938456163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105343 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A267459.P3114466340938456163

namespace A267459

/-- `∪[A105343(n), A108100(n)]` -/
def P3114466340938456163.Spec : Prop :=
  ∀ n, (P3114466340938456163.a n : ℤ) = A267459 n

end A267459

/-!
# A267460: Number of OFF (white) cells in the n-th iteration of the "Rule 133" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267460, the canonical program `A267460.P15085134000268551922` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267460 has offset 0).

The definition of A267460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267460.P15085134000268551922

`∑[abs(a(n%2))]` with `a(0)=0, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267460

/-- `∑[abs(a(n%2))]` -/
def P15085134000268551922.Spec : Prop :=
  ∀ n, (P15085134000268551922.a n : ℤ) = A267460 n

theorem P15085134000268551922.correct : P15085134000268551922.Spec := by
  intro n
  simp only [A267460]

end A267460

/-! ## A267460.P12480349903901016198

`a(n-2)+2` with `a(0)=0, a(1)=2, a(2)=4, a(3)=6`
-/

namespace A267460.P12480349903901016198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 6] fun n a =>
  a (n - 2) + 2

end

end A267460.P12480349903901016198

namespace A267460

/-- `a(n-2)+2` -/
def P12480349903901016198.Spec : Prop :=
  ∀ n, (P12480349903901016198.a n : ℤ) = A267460 n

end A267460

/-! ## A267460.P17067657972565214762

`∑[and(2, 2*∏{p}[2-n, #])]`
-/

namespace A267460.P17067657972565214762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (2 * (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267460.P17067657972565214762

namespace A267460

/-- `∑[and(2, 2*∏{p}[2-n, #])]` -/
def P17067657972565214762.Spec : Prop :=
  ∀ n, (P17067657972565214762.a n : ℤ) = A267460 n

end A267460

/-! ## A267460.P14700831845592117285

`∑[and(2, gcd(n, C(2, n))+n)]`
-/

namespace A267460.P14700831845592117285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (Nat.gcd n (Nat.choose 2 n) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267460.P14700831845592117285

namespace A267460

/-- `∑[and(2, gcd(n, C(2, n))+n)]` -/
def P14700831845592117285.Spec : Prop :=
  ∀ n, (P14700831845592117285.a n : ℤ) = A267460 n

end A267460

/-! ## A267460.P13193308770299333273

`Δ[n²]-abs(1-and(n, -2))`
-/

namespace A267460.P13193308770299333273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - |1 - Int.land (n : ℤ) (-2)|

end

end A267460.P13193308770299333273

namespace A267460

/-- `Δ[n²]-abs(1-and(n, -2))` -/
def P13193308770299333273.Spec : Prop :=
  ∀ n, P13193308770299333273.a n = A267460 n

end A267460

/-! ## A267460.P817278243730945176

`∑[2-a(n-1)]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A267460.P817278243730945176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2, 2] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267460.P817278243730945176

namespace A267460

/-- `∑[2-a(n-1)]` -/
def P817278243730945176.Spec : Prop :=
  ∀ n, P817278243730945176.a n = A267460 n

end A267460

/-! ## A267460.P1776095530177472830

`∑[and(2, 2*n-char[2])%3]`
-/

namespace A267460.P1776095530177472830
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land 2 ((2 * n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267460.P1776095530177472830

namespace A267460

/-- `∑[and(2, 2*n-char[2])%3]` -/
def P1776095530177472830.Spec : Prop :=
  ∀ n, P1776095530177472830.a n = A267460 n

end A267460

/-! ## A267460.P7364428672449741775

`or(1, n+3)%(n+1)+n`
-/

namespace A267460.P7364428672449741775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 3) % (n + 1) + n

end

end A267460.P7364428672449741775

namespace A267460

/-- `or(1, n+3)%(n+1)+n` -/
def P7364428672449741775.Spec : Prop :=
  ∀ n, (P7364428672449741775.a n : ℤ) = A267460 n

end A267460

/-! ## A267460.P465681850854439460

`2*ceil((∑[n]+n)/(n+1))`
-/

namespace A267460.P465681850854439460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℚ) / (n + 1 : ℚ)⌉

end

end A267460.P465681850854439460

namespace A267460

/-- `2*ceil((∑[n]+n)/(n+1))` -/
def P465681850854439460.Spec : Prop :=
  ∀ n, P465681850854439460.a n = A267460 n

end A267460

/-! ## A267460.P7469350185674475975

`ogf((2x+2x^2-2x^4)/(1-x-x^2+x^3))`
-/

namespace A267460.P7469350185674475975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2, 0, -2] [1, -1, -1, 1] n

end

end A267460.P7469350185674475975

namespace A267460

/-- `ogf((2x+2x^2-2x^4)/(1-x-x^2+x^3))` -/
def P7469350185674475975.Spec : Prop :=
  ∀ n, P7469350185674475975.a n = A267460 n

end A267460

/-! ## A267460.P9577575320559963240

`2*n+1-abs(or(1, 1-n))`
-/

namespace A267460.P9577575320559963240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - |Int.lor 1 (1 - (n : ℤ))|

end

end A267460.P9577575320559963240

namespace A267460

/-- `2*n+1-abs(or(1, 1-n))` -/
def P9577575320559963240.Spec : Prop :=
  ∀ n, P9577575320559963240.a n = A267460 n

end A267460

/-! ## A267460.P12837488535632405751

`1-(abs(or(1, 1-n))-2*n)`
-/

namespace A267460.P12837488535632405751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (|Int.lor 1 (1 - (n : ℤ))| - (2 * n : ℤ))

end

end A267460.P12837488535632405751

namespace A267460

/-- `1-(abs(or(1, 1-n))-2*n)` -/
def P12837488535632405751.Spec : Prop :=
  ∀ n, P12837488535632405751.a n = A267460 n

end A267460

/-! ## A267460.P565361782578499602

`and(n+3-C(2, n+1), -2)`
-/

namespace A267460.P565361782578499602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n + 3 : ℤ) - (Nat.choose 2 (n + 1) : ℤ)) (-2)

end

end A267460.P565361782578499602

namespace A267460

/-- `and(n+3-C(2, n+1), -2)` -/
def P565361782578499602.Spec : Prop :=
  ∀ n, P565361782578499602.a n = A267460 n

end A267460

/-! ## A267460.P11976329411309563836

`∑[2*(4%(n+1)+n)%2]`
-/

namespace A267460.P11976329411309563836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((4 % (n + 1) + n) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267460.P11976329411309563836

namespace A267460

/-- `∑[2*(4%(n+1)+n)%2]` -/
def P11976329411309563836.Spec : Prop :=
  ∀ n, (P11976329411309563836.a n : ℤ) = A267460 n

end A267460

/-! ## A267460.P8263020619761697222

`∑[and(2, lcm(n-1, n-3)+2)]`
-/

namespace A267460.P8263020619761697222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (Int.lcm ((n : ℤ) - 1) ((n : ℤ) - 3) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267460.P8263020619761697222

namespace A267460

/-- `∑[and(2, lcm(n-1, n-3)+2)]` -/
def P8263020619761697222.Spec : Prop :=
  ∀ n, (P8263020619761697222.a n : ℤ) = A267460 n

end A267460

/-! ## A267460.P10448959638928111036

`n-abs(or(1, 1-n))+n+1`
-/

namespace A267460.P10448959638928111036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - |Int.lor 1 (1 - (n : ℤ))| + (n + 1 : ℤ)

end

end A267460.P10448959638928111036

namespace A267460

/-- `n-abs(or(1, 1-n))+n+1` -/
def P10448959638928111036.Spec : Prop :=
  ∀ n, P10448959638928111036.a n = A267460 n

end A267460

/-! ## A267460.P1302114238610517218

`n²%2+2%(n+1)+n`
-/

namespace A267460.P1302114238610517218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 2 + (2 % (n + 1) + n)

end

end A267460.P1302114238610517218

namespace A267460

/-- `n²%2+2%(n+1)+n` -/
def P1302114238610517218.Spec : Prop :=
  ∀ n, (P1302114238610517218.a n : ℤ) = A267460 n

end A267460

/-! ## A267460.P10164740998902080118

`2*n-(a(n-1)-4)` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A267460.P10164740998902080118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4] fun n a =>
  (2 * n : ℤ) - (a (n - 1) - 4)

end

end A267460.P10164740998902080118

namespace A267460

/-- `2*n-(a(n-1)-4)` -/
def P10164740998902080118.Spec : Prop :=
  ∀ n, P10164740998902080118.a n = A267460 n

end A267460

/-! ## A267460.P5289003364646966844

`4-(a(n-1)-n-n)` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A267460.P5289003364646966844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4] fun n a =>
  4 - (a (n - 1) - (n : ℤ) - (n : ℤ))

end

end A267460.P5289003364646966844

namespace A267460

/-- `4-(a(n-1)-n-n)` -/
def P5289003364646966844.Spec : Prop :=
  ∀ n, P5289003364646966844.a n = A267460 n

end A267460

/-! ## A267460.P11046282024642789243

`∑[and(2, C(n, (1-n)²)+2*n)]`
-/

namespace A267460.P11046282024642789243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (Nat.choose n ((1 - (n : ℤ)) ^ 2).toNat + 2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267460.P11046282024642789243

namespace A267460

/-- `∑[and(2, C(n, (1-n)²)+2*n)]` -/
def P11046282024642789243.Spec : Prop :=
  ∀ n, (P11046282024642789243.a n : ℤ) = A267460 n

end A267460

/-!
# A267461: Total number of OFF (white) cells after n iterations of the "Rule 133" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267461, the canonical program `A267461.P16000820716533839576` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267461 has offset 0).

The definition of A267461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267461.P4278706637484957255

`∑[a(n-2)+2]` with `a(0)=0, a(1)=2, a(2)=4, a(3)=6`
-/

namespace A267461.P4278706637484957255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 6] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267461.P4278706637484957255

namespace A267461

/-- `∑[a(n-2)+2]` -/
def P4278706637484957255.Spec : Prop :=
  ∀ n, (P4278706637484957255.a n : ℤ) = A267461 n

end A267461

/-! ## A267461.P17365845474072863590

`∑[∑[2-a(n-1)]]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A267461.P17365845474072863590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2, 2] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267461.P17365845474072863590

namespace A267461

/-- `∑[∑[2-a(n-1)]]` -/
def P17365845474072863590.Spec : Prop :=
  ∀ n, P17365845474072863590.a n = A267461 n

end A267461

/-! ## A267461.P4455058273967538671

`∑[n%2+2%(n+1)+n]`
-/

namespace A267461.P4455058273967538671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + (2 % (n + 1) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267461.P4455058273967538671

namespace A267461

/-- `∑[n%2+2%(n+1)+n]` -/
def P4455058273967538671.Spec : Prop :=
  ∀ n, (P4455058273967538671.a n : ℤ) = A267461 n

end A267461

/-! ## A267461.P12079768285479096765

`∑[ogf((2x+2x^2-2x^4)/(1-x-x^2+x^3))]`
-/

namespace A267461.P12079768285479096765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2, 0, -2] [1, -1, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267461.P12079768285479096765

namespace A267461

/-- `∑[ogf((2x+2x^2-2x^4)/(1-x-x^2+x^3))]` -/
def P12079768285479096765.Spec : Prop :=
  ∀ n, P12079768285479096765.a n = A267461 n

end A267461

/-! ## A267461.P9563731573374629920

`a(n-1)+and(n+3, -2)` with `a(0)=0, a(1)=2`
-/

namespace A267461.P9563731573374629920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) + Int.land (n + 3 : ℤ) (-2)

end

end A267461.P9563731573374629920

namespace A267461

/-- `a(n-1)+and(n+3, -2)` -/
def P9563731573374629920.Spec : Prop :=
  ∀ n, P9563731573374629920.a n = A267461 n

end A267461

/-! ## A267461.P3977630969046432993

`2*(∑[round((n-2)/2)+2]-1)`
-/

namespace A267461.P3977630969046432993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℚ) / 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A267461.P3977630969046432993

namespace A267461

/-- `2*(∑[round((n-2)/2)+2]-1)` -/
def P3977630969046432993.Spec : Prop :=
  ∀ n, P3977630969046432993.a n = A267461 n

end A267461

/-! ## A267461.P5093202591580011870

`abs(∑[or(1, n+1)]-2)-1+n`
-/

namespace A267461.P5093202591580011870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2| - 1 + (n : ℤ)

end

end A267461.P5093202591580011870

namespace A267461

/-- `abs(∑[or(1, n+1)]-2)-1+n` -/
def P5093202591580011870.Spec : Prop :=
  ∀ n, P5093202591580011870.a n = A267461 n

end A267461

/-! ## A267461.P3949309759060692286

`4-gcd(2, n)+a(n-1)+n` with `a(0)=0, a(1)=2`
-/

namespace A267461.P3949309759060692286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  4 - (Nat.gcd 2 n : ℤ) + (a (n - 1) + (n : ℤ))

end

end A267461.P3949309759060692286

namespace A267461

/-- `4-gcd(2, n)+a(n-1)+n` -/
def P3949309759060692286.Spec : Prop :=
  ∀ n, P3949309759060692286.a n = A267461 n

end A267461

/-! ## A267461.P4684001123068701321

`and(1, n)+a(n-1)+n+2` with `a(0)=0, a(1)=2`
-/

namespace A267461.P4684001123068701321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  Nat.land 1 n + (a (n - 1) + (n + 2))

end

end A267461.P4684001123068701321

namespace A267461

/-- `and(1, n)+a(n-1)+n+2` -/
def P4684001123068701321.Spec : Prop :=
  ∀ n, (P4684001123068701321.a n : ℤ) = A267461 n

end A267461

/-! ## A267461.P2960130558769253991

`2-((2-n)%2-a(n-1)-n)` with `a(0)=0`
-/

namespace A267461.P2960130558769253991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 - (Int.tmod (2 - (n : ℤ)) 2 - a (n - 1) - (n : ℤ))

end

end A267461.P2960130558769253991

namespace A267461

/-- `2-((2-n)%2-a(n-1)-n)` -/
def P2960130558769253991.Spec : Prop :=
  ∀ n, P2960130558769253991.a n = A267461 n

end A267461

/-! ## A267461.P16000820716533839576

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=12, a(4)=18`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267461

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P16000820716533839576.Spec : Prop :=
  ∀ n, P16000820716533839576.a n = A267461 n

theorem P16000820716533839576.correct : P16000820716533839576.Spec := by
  intro n
  simp only [A267461]

end A267461

/-! ## A267461.P7654711892319326709

`∑[A267460(n)]`
-/

namespace A267461.P7654711892319326709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267461.P7654711892319326709

namespace A267461

/-- `∑[A267460(n)]` -/
def P7654711892319326709.Spec : Prop :=
  ∀ n, P7654711892319326709.a n = A267461 n

end A267461

/-! ## A267461.P3563835726844540399

`∑[A158478(n)+n]`
-/

namespace A267461.P3563835726844540399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267461.P3563835726844540399

namespace A267461

/-- `∑[A158478(n)+n]` -/
def P3563835726844540399.Spec : Prop :=
  ∀ n, P3563835726844540399.a n = A267461 n

end A267461

/-! ## A267461.P12446210698150348187

`(n+1)²-A267459(n)`
-/

namespace A267461.P12446210698150348187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A267459 n

end

end A267461.P12446210698150348187

namespace A267461

/-- `(n+1)²-A267459(n)` -/
def P12446210698150348187.Spec : Prop :=
  ∀ n, P12446210698150348187.a n = A267461 n

end A267461

/-! ## A267461.P4580426058904294802

`∑[Δ[n²]-A267458(n)]`
-/

namespace A267461.P4580426058904294802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A267458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267461.P4580426058904294802

namespace A267461

/-- `∑[Δ[n²]-A267458(n)]` -/
def P4580426058904294802.Spec : Prop :=
  ∀ n, P4580426058904294802.a n = A267461 n

end A267461

/-! ## A267461.P15287891119190243585

`2*A184674(n+1)-2`
-/

namespace A267461.P15287891119190243585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184674 (n + 1) - 2

end

end A267461.P15287891119190243585

namespace A267461

/-- `2*A184674(n+1)-2` -/
def P15287891119190243585.Spec : Prop :=
  ∀ n, P15287891119190243585.a n = A267461 n

end A267461

/-! ## A267461.P16965281327642318285

`A179207(n+1)-1+n`
-/

namespace A267461.P16965281327642318285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179207 (n + 1) - 1 + (n : ℤ)

end

end A267461.P16965281327642318285

namespace A267461

/-- `A179207(n+1)-1+n` -/
def P16965281327642318285.Spec : Prop :=
  ∀ n, P16965281327642318285.a n = A267461 n

end A267461

/-! ## A267461.P12426640580258503801

`∑[A000032(a(and(1, n)))+n]` with `a(0)=0, a(1)=2`
-/

namespace A267461.P12426640580258503801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  A000032 (f1 (Nat.land 1 n)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267461.P12426640580258503801

namespace A267461

/-- `∑[A000032(a(and(1, n)))+n]` -/
def P12426640580258503801.Spec : Prop :=
  ∀ n, P12426640580258503801.a n = A267461 n

end A267461

/-!
# A267462: Carmichael numbers that are not of the form x^2 + y^2 + z^2 where x, y and z are integers.

The programs for A267462, there is no canonical definition to state claims against.
-/

/-! ## A267462.P11889703250185158954

`∩[or(4, A185321(n+1)), A185321(n+1)]`
-/

namespace A267462.P11889703250185158954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A185321 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267462.P11889703250185158954

/-! ## A267462.P16028198795722808408

`∩[or(6, A329468(n+1)), A329468(n+1)]`
-/

namespace A267462.P16028198795722808408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 (A329468 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267462.P16028198795722808408

/-! ## A267462.P18187124742245410250

`∩[or(6, A002997(n+1)), A002997(n+1)]`
-/

namespace A267462.P18187124742245410250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 (A002997 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267462.P18187124742245410250

/-!
# A267463: Triangle read by rows giving successive states of cellular automaton generated by "Rule 137" initiated with a single ON (black) cell.

The programs for A267463, there is no canonical definition to state claims against.
-/

/-! ## A267463.P18427149263554159016

`A267636(A020703(n+1)-1)`
-/

namespace A267463.P18427149263554159016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267636 (A020703 (n + 1) - 1).toNat

end

end A267463.P18427149263554159016

/-! ## A267463.P1371421826565240353

`A267636(A020703(n+2)%A237520(2*n))`
-/

namespace A267463.P1371421826565240353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267636 (Int.tmod (A020703 (n + 2)) (A237520 (2 * n))).toNat

end

end A267463.P1371421826565240353

/-! ## A267463.P17208746579383575274

`A035263(A094098(n+1)+24)`
-/

namespace A267463.P17208746579383575274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A094098 (n + 1) + 24).toNat

end

end A267463.P17208746579383575274

/-! ## A267463.P9222259258276817138

`A029239(A283826(n+1))²%A168309(A168288(n))`
-/

namespace A267463.P9222259258276817138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029239 (A283826 (n + 1)).toNat ^ 2) (A168309 (A168288 n).toNat)

end

end A267463.P9222259258276817138

/-! ## A267463.P13215167202629177864

`A285142(or(A094098(n+1), A244010(n+1)))`
-/

namespace A267463.P13215167202629177864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (Int.lor (A094098 (n + 1)) (A244010 (n + 1))).toNat

end

end A267463.P13215167202629177864

/-!
# A267464: Number of length-n 0..n arrays with no following elements larger than the first repeated value.

The programs for A267464, there is no canonical definition to state claims against.
-/

/-! ## A267464.P2261332758302207670

`A267471((n+1)²+n²)`
-/

namespace A267464.P2261332758302207670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 ((n + 1) ^ 2 + n ^ 2)

end

end A267464.P2261332758302207670

/-! ## A267464.P6971647627605901551

`record[A003982(n)*A267471(n+1)]`
-/

namespace A267464.P6971647627605901551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A267471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267464.P6971647627605901551

/-! ## A267464.P4064771969871553318

`record[gcd(A037012(n), A267471(n+1))]`
-/

namespace A267464.P4064771969871553318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A267471 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267464.P4064771969871553318

/-! ## A267464.P17631554851697882415

`record[root(A267471(n+1), A140685(n+1))]`
-/

namespace A267464.P17631554851697882415
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A267471 (n + 1) : ℝ) ^ (1 / (A140685 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267464.P17631554851697882415

/-! ## A267464.P10549803704143011786

`gcd(A000038(n), A267471(A001844(n)))`
-/

namespace A267464.P10549803704143011786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A267471 (A001844 n).toNat)

end

end A267464.P10549803704143011786

/-!
# A267465: Number of length-n 0..2 arrays with no following elements larger than the first repeated value.

The programs for A267465, the canonical program `A267465.P6286956107587574874` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267465 has offset 1).

The definition of A267465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267465.P6286956107587574874

`2^(n+1)+3^n+2^(n-1)*(n+2)-1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267465

/-- `2^(n+1)+3^n+2^(n-1)*(n+2)-1` -/
def P6286956107587574874.Spec : Prop :=
  ∀ n, P6286956107587574874.a n = (A267465 (n + 1) : ℚ)

end A267465

/-! ## A267465.P13475513462995435855

`A267471(∑[n+2])`
-/

namespace A267465.P13475513462995435855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267465.P13475513462995435855

namespace A267465

/-- `A267471(∑[n+2])` -/
def P13475513462995435855.Spec : Prop :=
  ∀ n, P13475513462995435855.a n = A267465 (n + 1)

end A267465

/-! ## A267465.P17317673829175612892

`A376957(A253831(n+1))`
-/

namespace A267465.P17317673829175612892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376957 (A253831 (n + 1)).toNat

end

end A267465.P17317673829175612892

namespace A267465

/-- `A376957(A253831(n+1))` -/
def P17317673829175612892.Spec : Prop :=
  ∀ n, P17317673829175612892.a n = A267465 (n + 1)

end A267465

/-!
# A267466: Number of length-n 0..3 arrays with no following elements larger than the first repeated value.

The programs for A267466, there is no canonical definition to state claims against.
-/

/-! ## A267466.P3114986239902577550

`A267471(∑[n+3]+1)`
-/

namespace A267466.P3114986239902577550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A267466.P3114986239902577550

/-! ## A267466.P15072978237647999943

`lcm(2, A267471(Δ[A008778(n)]))`
-/

namespace A267466.P15072978237647999943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A267471 (f1 (n + 1) - f1 n).toNat)

end

end A267466.P15072978237647999943

/-! ## A267466.P2047812053047650316

`A267471(Δ[A008778(n)])+A000035(2*n)`
-/

namespace A267466.P2047812053047650316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (f1 (n + 1) - f1 n).toNat + A000035 (2 * n)

end

end A267466.P2047812053047650316

/-! ## A267466.P14957683590973620862

`A267471(Δ[A008778(n)])%A237689(n+1)`
-/

namespace A267466.P14957683590973620862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267471 (f1 (n + 1) - f1 n).toNat) (A237689 (n + 1))

end

end A267466.P14957683590973620862

/-! ## A267466.P6340812265637866679

`A081729(3*n)²*A267471(Δ[A008778(n)])`
-/

namespace A267466.P6340812265637866679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (3 * n) ^ 2 * A267471 (f1 (n + 1) - f1 n).toNat

end

end A267466.P6340812265637866679

/-! ## A267466.P5561559207348392061

`n+1+A267471(Δ[A008778(n)])+A001478(n+1)`
-/

namespace A267466.P5561559207348392061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A267471 (f1 (n + 1) - f1 n).toNat + A001478 (n + 1))

end

end A267466.P5561559207348392061

/-! ## A267466.P16601117821290631313

`A230850((2*(n+1))²)*A267471(Δ[A008778(n)])`
-/

namespace A267466.P16601117821290631313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230850 ((2 * (n + 1)) ^ 2) * A267471 (f1 (n + 1) - f1 n).toNat

end

end A267466.P16601117821290631313

/-!
# A267467: Number of length-n 0..4 arrays with no following elements larger than the first repeated value.

The programs for A267467, there is no canonical definition to state claims against.
-/

/-! ## A267467.P14678466419559313462

`A267471(∑[n+4]+3)`
-/

namespace A267467.P14678466419559313462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A267467.P14678466419559313462

/-! ## A267467.P16276784100870481221

`or(1, A267471(A055998(n+2)))`
-/

namespace A267467.P16276784100870481221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A267471 (A055998 (n + 2)).toNat)

end

end A267467.P16276784100870481221

/-! ## A267467.P6787709655066378386

`A010052(n²)*A267471(A055998(n+2))`
-/

namespace A267467.P6787709655066378386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n ^ 2) * A267471 (A055998 (n + 2)).toNat

end

end A267467.P6787709655066378386

/-! ## A267467.P17501154241481738453

`A267471(A055998(n+2))+A000007(n+1)`
-/

namespace A267467.P17501154241481738453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A055998 (n + 2)).toNat + A000007 (n + 1)

end

end A267467.P17501154241481738453

/-! ## A267467.P13341591916209528096

`A267471(A055998(n+2))+A000038(n+1)`
-/

namespace A267467.P13341591916209528096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A055998 (n + 2)).toNat + A000038 (n + 1)

end

end A267467.P13341591916209528096

/-! ## A267467.P11240826899721878613

`A219977(n²)²*A267471(A055998(n+2))`
-/

namespace A267467.P11240826899721878613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (n ^ 2) ^ 2 * A267471 (A055998 (n + 2)).toNat

end

end A267467.P11240826899721878613

/-! ## A267467.P17789395500677536369

`A267471(A055998(n+2))+A008966((n+2)²)`
-/

namespace A267467.P17789395500677536369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A055998 (n + 2)).toNat + A008966 ((n + 2) ^ 2)

end

end A267467.P17789395500677536369

/-! ## A267467.P5033409985252770584

`A008836(n+1)²*A267471(A055998(n+2))`
-/

namespace A267467.P5033409985252770584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2 * A267471 (A055998 (n + 2)).toNat

end

end A267467.P5033409985252770584

/-! ## A267467.P10585514700908215522

`A000188(A006530(n+2))*A267471(A055998(n+2))`
-/

namespace A267467.P10585514700908215522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A006530 (n + 2)).toNat * A267471 (A055998 (n + 2)).toNat

end

end A267467.P10585514700908215522

/-! ## A267467.P17332763319315622157

`A014963(A000217(n+9))*A267471(A055998(n+2))`
-/

namespace A267467.P17332763319315622157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 9)).toNat * A267471 (A055998 (n + 2)).toNat

end

end A267467.P17332763319315622157

/-!
# A267468: Number of length-n 0..5 arrays with no following elements larger than the first repeated value.

The programs for A267468, there is no canonical definition to state claims against.
-/

/-! ## A267468.P9892704958749273740

`A267471(A046691(n+3))`
-/

namespace A267468.P9892704958749273740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A046691 (n + 3)).toNat

end

end A267468.P9892704958749273740

/-! ## A267468.P11371676368751482905

`A267471(A056115(n)+11)`
-/

namespace A267468.P11371676368751482905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A056115 n + 11).toNat

end

end A267468.P11371676368751482905

/-! ## A267468.P10262454286312282505

`A267471(Δ[A023545(n+1)])`
-/

namespace A267468.P10262454286312282505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (f1 (n + 1) - f1 n).toNat

end

end A267468.P10262454286312282505

/-! ## A267468.P14797987245925136203

`A267471(A000217(n+5)-4)`
-/

namespace A267468.P14797987245925136203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A000217 (n + 5) - 4).toNat

end

end A267468.P14797987245925136203

/-! ## A267468.P5790560741075438997

`A267471(eq[4, A025581(n)]+1)`
-/

namespace A267468.P5790560741075438997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A267468.P5790560741075438997

/-! ## A267468.P2977889816411137798

`A267471(A000124(n+6)-(n+11))`
-/

namespace A267468.P2977889816411137798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A000124 (n + 6) - (n + 11 : ℤ)).toNat

end

end A267468.P2977889816411137798

/-! ## A267468.P16161928313139961069

`A267471(A005408(n)+A055999(n)+10)`
-/

namespace A267468.P16161928313139961069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A005408 n + (A055999 n + 10)).toNat

end

end A267468.P16161928313139961069

/-!
# A267469: Number of length-n 0..6 arrays with no following elements larger than the first repeated value.

The programs for A267469, there is no canonical definition to state claims against.
-/

/-! ## A267469.P13180057019513496345

`A267471(A052905(n+3))`
-/

namespace A267469.P13180057019513496345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A052905 (n + 3)).toNat

end

end A267469.P13180057019513496345

/-! ## A267469.P16855487718380377644

`A267471(A000124(n+6)-6)`
-/

namespace A267469.P16855487718380377644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A000124 (n + 6) - 6).toNat

end

end A267469.P16855487718380377644

/-! ## A267469.P3372046206921221508

`A267471(Δ[Δ[A006504(n+1)]])`
-/

namespace A267469.P3372046206921221508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (f1 (n + 1) - f1 n).toNat

end

end A267469.P3372046206921221508

/-! ## A267469.P1249796558757765769

`A267471(Δ[A023551(n+1)]+1)`
-/

namespace A267469.P1249796558757765769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (f1 (n + 1) - f1 n + 1).toNat

end

end A267469.P1249796558757765769

/-! ## A267469.P14240746481485552450

`A267471(Δ[A023545(n+2)]-1)`
-/

namespace A267469.P14240746481485552450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (f1 (n + 1) - f1 n - 1).toNat

end

end A267469.P14240746481485552450

/-! ## A267469.P17074867855082603693

`A267471(eq[6, A004736(n+1)]+1)`
-/

namespace A267469.P17074867855082603693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A267469.P17074867855082603693

/-! ## A267469.P15006341190879742704

`A267471(A000217(n+5)+n+1)`
-/

namespace A267469.P15006341190879742704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A000217 (n + 5) + (n + 1 : ℤ)).toNat

end

end A267469.P15006341190879742704

/-! ## A267469.P2110713929328925694

`A267471(2*n+3+A167614(n+3))`
-/

namespace A267469.P2110713929328925694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 ((2 * n + 3 : ℤ) + A167614 (n + 3)).toNat

end

end A267469.P2110713929328925694

/-!
# A267470: Number of length-n 0..7 arrays with no following elements larger than the first repeated value.

The programs for A267470, there is no canonical definition to state claims against.
-/

/-! ## A267470.P228857499825943571

`A267471(A055999(n+4))`
-/

namespace A267470.P228857499825943571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A055999 (n + 4)).toNat

end

end A267470.P228857499825943571

/-! ## A267470.P2038029009674806081

`A267471(Δ[A023551(n+2)])`
-/

namespace A267470.P2038029009674806081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (f1 (n + 1) - f1 n).toNat

end

end A267470.P2038029009674806081

/-! ## A267470.P15716478968125146423

`A267471(A000096(n+6)-5)`
-/

namespace A267470.P15716478968125146423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A000096 (n + 6) - 5).toNat

end

end A267470.P15716478968125146423

/-! ## A267470.P16187983290608742220

`A267471(A000217(n+7)-6)`
-/

namespace A267470.P16187983290608742220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A000217 (n + 7) - 6).toNat

end

end A267470.P16187983290608742220

/-! ## A267470.P3427147438908130406

`A267471(A000124(n+7)-7)`
-/

namespace A267470.P3427147438908130406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A000124 (n + 7) - 7).toNat

end

end A267470.P3427147438908130406

/-! ## A267470.P9802367946199230643

`A267471(A167614(n+6)-9)`
-/

namespace A267470.P9802367946199230643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A167614 (n + 6) - 9).toNat

end

end A267470.P9802367946199230643

/-!
# A267472: Number of length-4 0..n arrays with no following elements larger than the first repeated value.

The programs for A267472, the canonical program `A267472.P14684440490728622484` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267472 has offset 1).

The definition of A267472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267472.P14684440490728622484

`(n+1)^4+17/6*(n+1)^3+4*(n+1)²+19/6*(n+1)+1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267472

/-- `(n+1)^4+17/6*(n+1)^3+4*(n+1)²+19/6*(n+1)+1` -/
def P14684440490728622484.Spec : Prop :=
  ∀ n, P14684440490728622484.a n = (A267472 (n + 1) : ℚ)

end A267472

/-! ## A267472.P10346990034764582255

`Δ[A085463(n+1)+A004302(n)]`
-/

namespace A267472.P10346990034764582255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085463 (n + 1) + A004302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A267472.P10346990034764582255

namespace A267472

/-- `Δ[A085463(n+1)+A004302(n)]` -/
def P10346990034764582255.Spec : Prop :=
  ∀ n, P10346990034764582255.a n = A267472 (n + 1)

end A267472

/-!
# A267473: Number of length-5 0..n arrays with no following elements larger than the first repeated value.

The programs for A267473, the canonical program `A267473.P14462735783117214725` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267473 has offset 1).

The definition of A267473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267473.P14462735783117214725

`(n+1)^5+37/12*(n+1)^4+11/2*(n+1)^3+77/12*(n+1)²+4*(n+1)+1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267473

/-- `(n+1)^5+37/12*(n+1)^4+11/2*(n+1)^3+77/12*(n+1)²+4*(n+1)+1` -/
def P14462735783117214725.Spec : Prop :=
  ∀ n, P14462735783117214725.a n = (A267473 (n + 1) : ℚ)

end A267473

/-! ## A267473.P12148100753225471798

`A267471(A167499(n+3))`
-/

namespace A267473.P12148100753225471798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A167499 (n + 3)).toNat

end

end A267473.P12148100753225471798

namespace A267473

/-- `A267471(A167499(n+3))` -/
def P12148100753225471798.Spec : Prop :=
  ∀ n, P12148100753225471798.a n = A267473 (n + 1)

end A267473

/-! ## A267473.P16059897026590391240

`A267471(A056000(n)+15)`
-/

namespace A267473.P16059897026590391240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A056000 n + 15).toNat

end

end A267473.P16059897026590391240

namespace A267473

/-- `A267471(A056000(n)+15)` -/
def P16059897026590391240.Spec : Prop :=
  ∀ n, P16059897026590391240.a n = A267473 (n + 1)

end A267473

/-! ## A267473.P16555153866003959542

`A267471(A167614(n+3)+2)`
-/

namespace A267473.P16555153866003959542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A167614 (n + 3) + 2).toNat

end

end A267473.P16555153866003959542

namespace A267473

/-- `A267471(A167614(n+3)+2)` -/
def P16555153866003959542.Spec : Prop :=
  ∀ n, P16555153866003959542.a n = A267473 (n + 1)

end A267473

/-! ## A267473.P16381552285447678256

`A267471(A000124(n+4)+4)`
-/

namespace A267473.P16381552285447678256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A000124 (n + 4) + 4).toNat

end

end A267473.P16381552285447678256

namespace A267473

/-- `A267471(A000124(n+4)+4)` -/
def P16381552285447678256.Spec : Prop :=
  ∀ n, P16381552285447678256.a n = A267473 (n + 1)

end A267473

/-! ## A267473.P16989259366841808254

`A267471(Δ[A023551(n+1)]-2*n)`
-/

namespace A267473.P16989259366841808254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (f1 (n + 1) - f1 n - (2 * n : ℤ)).toNat

end

end A267473.P16989259366841808254

namespace A267473

/-- `A267471(Δ[A023551(n+1)]-2*n)` -/
def P16989259366841808254.Spec : Prop :=
  ∀ n, P16989259366841808254.a n = A267473 (n + 1)

end A267473

/-!
# A267474: Number of length-6 0..n arrays with no following elements larger than the first repeated value.

The programs for A267474, there is no canonical definition to state claims against.
-/

/-! ## A267474.P7955626853962605980

`A267471(A167499(n+4)+1)`
-/

namespace A267474.P7955626853962605980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A167499 (n + 4) + 1).toNat

end

end A267474.P7955626853962605980

/-! ## A267474.P2579624245966708417

`A267471(A167614(n+4)+3)`
-/

namespace A267474.P2579624245966708417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A167614 (n + 4) + 3).toNat

end

end A267474.P2579624245966708417

/-! ## A267474.P16349604057197258801

`A267471(A000124(n+5)+5)`
-/

namespace A267474.P16349604057197258801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A000124 (n + 5) + 5).toNat

end

end A267474.P16349604057197258801

/-! ## A267474.P12886275438280229829

`A267471(A000217(n+5)+6)`
-/

namespace A267474.P12886275438280229829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A000217 (n + 5) + 6).toNat

end

end A267474.P12886275438280229829

/-! ## A267474.P2098249822181964842

`A267471(A087811(n+1)+A087811(n+8))`
-/

namespace A267474.P2098249822181964842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A087811 (n + 1) + A087811 (n + 8)).toNat

end

end A267474.P2098249822181964842

/-!
# A267475: Number of length-7 0..n arrays with no following elements larger than the first repeated value.

The programs for A267475, there is no canonical definition to state claims against.
-/

/-! ## A267475.P6604376340473510866

`A267471(A056119(n)+28)`
-/

namespace A267475.P6604376340473510866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A056119 n + 28).toNat

end

end A267475.P6604376340473510866

/-! ## A267475.P9261646688390007174

`A267471(A000124(n+6)+6)`
-/

namespace A267475.P9261646688390007174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A000124 (n + 6) + 6).toNat

end

end A267475.P9261646688390007174

/-! ## A267475.P6220631905147713440

`A267471(A000217(n+6)+7)`
-/

namespace A267475.P6220631905147713440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A000217 (n + 6) + 7).toNat

end

end A267475.P6220631905147713440

/-! ## A267475.P14265477219655601461

`A267471(A179865(n+7)+7)`
-/

namespace A267475.P14265477219655601461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A179865 (n + 7) + 7).toNat

end

end A267475.P14265477219655601461

/-! ## A267475.P6302959682731502639

`A267471(A007318(C(3, n))+A167487(n+5)-1)`
-/

namespace A267475.P6302959682731502639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267471 (A007318 (Nat.choose 3 n) + (A167487 (n + 5) - 1)).toNat

end

end A267475.P6302959682731502639

/-!
# A267476: Primes p such that 2*p + 1 is abundant.

The programs for A267476, there is no canonical definition to state claims against.
-/

/-! ## A267476.P194785755966578014

`p?[floor(A005231(n+1)/2)]`
-/

namespace A267476.P194785755966578014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005231 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267476.P194785755966578014

/-! ## A267476.P10858838199240107063

`p?[floor(A174865(n+1)/2)]`
-/

namespace A267476.P10858838199240107063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A174865 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267476.P10858838199240107063

/-! ## A267476.P8241892787374483301

`p?[A014682(A005231(n+1)-1)]`
-/

namespace A267476.P8241892787374483301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A005231 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267476.P8241892787374483301

/-!
# A267477: Integers n such that n^2 = (x^3 + y^3) / 2 where x, y > 0, is soluble.

The programs for A267477, there is no canonical definition to state claims against.
-/

/-! ## A267477.P6437484795746229770

`lt[0, A025455(2*n²)]`
-/

namespace A267477.P6437484795746229770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (2 * n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A267477.P6437484795746229770

/-! ## A267477.P16127373066854906364

`eq[1, A025455(A001105(n))]`
-/

namespace A267477.P16127373066854906364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (A001105 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A267477.P16127373066854906364

/-! ## A267477.P18153861328317622115

`lt[0, A280618(2*n²)]`
-/

namespace A267477.P18153861328317622115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 (2 * n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A267477.P18153861328317622115

/-!
# A267478: Primes which are squares (mod 55).

The programs for A267478, there is no canonical definition to state claims against.
-/

/-! ## A267478.P8765146765427959319

`∪[A033235(n+1), A106908(n+1)]`
-/

namespace A267478.P8765146765427959319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A267478.P8765146765427959319

/-! ## A267478.P15880655045076814868

`∩[A038872(n+1), A056874(n+1)]`
-/

namespace A267478.P15880655045076814868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267478.P15880655045076814868

/-! ## A267478.P5761343592453549469

`∩[A056874(n+1), A341783(n+1)]`
-/

namespace A267478.P5761343592453549469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267478.P5761343592453549469

/-! ## A267478.P14663366832221276705

`∩[A038872(n+1), A341785(n+1)]`
-/

namespace A267478.P14663366832221276705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267478.P14663366832221276705

/-! ## A267478.P10129884274320690342

`∩[A031363(n+1), A056874(n+1)]`
-/

namespace A267478.P10129884274320690342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267478.P10129884274320690342

/-! ## A267478.P12999803479239702695

`∩[A056874(n+1), A057762(n+1)]`
-/

namespace A267478.P12999803479239702695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267478.P12999803479239702695

/-! ## A267478.P3659511093196401034

`∩[A035247(n+1), A038872(n+1)]`
-/

namespace A267478.P3659511093196401034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267478.P3659511093196401034

/-! ## A267478.P16146306353823450599

`∩[A035259(n+1), A056874(n+1)]`
-/

namespace A267478.P16146306353823450599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267478.P16146306353823450599

/-! ## A267478.P7844536526972476285

`∩[A056874(n+1), A063213(n+1)]`
-/

namespace A267478.P7844536526972476285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267478.P7844536526972476285

/-! ## A267478.P9614997812263772838

`∩[A056874(n+1), A374492(n+1)]`
-/

namespace A267478.P9614997812263772838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267478.P9614997812263772838

/-! ## A267478.P18290789912194894590

`∩[A341785(n+1), A374492(n+1)]`
-/

namespace A267478.P18290789912194894590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267478.P18290789912194894590

/-! ## A267478.P13473307797457649937

`∩[A008854(n+1), A056874(n+1)]`
-/

namespace A267478.P13473307797457649937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267478.P13473307797457649937

/-! ## A267478.P13808339528772022478

`∩[A056874(n+1), A275068(n)]`
-/

namespace A267478.P13808339528772022478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275068 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267478.P13808339528772022478

/-! ## A267478.P4600959044739932699

`∩[A341785(n+1), A275068(n)]`
-/

namespace A267478.P4600959044739932699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275068 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267478.P4600959044739932699

/-! ## A267478.P15182956846991918334

`∩[p?[A035247(n+1)], A275068(n)]`
-/

namespace A267478.P15182956846991918334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035247 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275068 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A267478.P15182956846991918334

/-! ## A267478.P6457167251368290725

`∩[A056874(n+1), A089270(n+1)]`
-/

namespace A267478.P6457167251368290725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267478.P6457167251368290725

/-!
# A267479: Number A(n,k) of words on {1,1,2,2,...,n,n} with longest increasing subsequence of length <= k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A267479, there is no canonical definition to state claims against.
-/

/-! ## A267479.P16530948510518426805

`A305820(A250484(n)²)`
-/

namespace A267479.P16530948510518426805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305820 (A250484 n ^ 2).toNat

end

end A267479.P16530948510518426805

/-! ## A267479.P8554407352619828647

`A305820(A305161(n)²)`
-/

namespace A267479.P8554407352619828647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305820 (A305161 n ^ 2).toNat

end

end A267479.P8554407352619828647

/-! ## A267479.P18103731300274480201

`A305820(A250484(n)^2)`
-/

namespace A267479.P18103731300274480201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305820 (A250484 n ^ 2).toNat

end

end A267479.P18103731300274480201

/-! ## A267479.P2242108740147558265

`A305820(A305161(n)^2)`
-/

namespace A267479.P2242108740147558265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305820 (A305161 n ^ 2).toNat

end

end A267479.P2242108740147558265

/-! ## A267479.P8320727463586683998

`A008647(8^A276719(n))`
-/

namespace A267479.P8320727463586683998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (SequenceMachineLib.roundAway ((8 : ℚ) ^ (A276719 n : ℤ))).toNat

end

end A267479.P8320727463586683998

/-!
# A267480: Number T(n,k) of words on {1,1,2,2,...,n,n} with longest increasing subsequence of length k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A267480, there is no canonical definition to state claims against.
-/

/-! ## A267480.P12671092946269174279

`A000194(A135313(n)^3)`
-/

namespace A267480.P12671092946269174279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A135313 n ^ 3).toNat

end

end A267480.P12671092946269174279

/-! ## A267480.P13694973489702575019

`A002821(A135313(n)^A033761(n))`
-/

namespace A267480.P13694973489702575019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (SequenceMachineLib.roundAway ((A135313 n : ℚ) ^ (A033761 n : ℤ))).toNat

end

end A267480.P13694973489702575019

/-! ## A267480.P2909398557878783517

`A002821(C(A135313(n), A033761(n)))`
-/

namespace A267480.P2909398557878783517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (Nat.choose (A135313 n).toNat (A033761 n).toNat)

end

end A267480.P2909398557878783517

/-! ## A267480.P2854300427932610618

`A000194(A135313(n)²*A135313(n))`
-/

namespace A267480.P2854300427932610618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A135313 n ^ 2 * A135313 n).toNat

end

end A267480.P2854300427932610618

/-! ## A267480.P2423687349956020165

`A126120(floor(5*n/4)*a(n-1))` with `a(0)=1`
-/

namespace A267480.P2423687349956020165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A126120 (⌊5 * ((n : ℚ) / 4)⌋ * a (n - 1)).toNat

end

end A267480.P2423687349956020165

/-!
# A267481: Primes which are squares (mod 31).

The programs for A267481, there is no canonical definition to state claims against.
-/

/-! ## A267481.P10103245688519610691

`∪[A033221(n+1), A106872(n+1)]`
-/

namespace A267481.P10103245688519610691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A267481.P10103245688519610691

/-! ## A267481.P7760910989811169936

`∪[A033221(n+1), A191024(n+1)]`
-/

namespace A267481.P7760910989811169936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A267481.P7760910989811169936

/-! ## A267481.P12815678504758788630

`∪[A139509(n+1), A191024(n+1)]`
-/

namespace A267481.P12815678504758788630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A267481.P12815678504758788630

/-! ## A267481.P9240709615573189349

`p?[A035235(n+1)]`
-/

namespace A267481.P9240709615573189349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267481.P9240709615573189349

/-! ## A267481.P6454350896298434250

`p?[record[A035235(A349315(n))]]`
-/

namespace A267481.P6454350896298434250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035235 (A349315 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267481.P6454350896298434250

/-! ## A267481.P14863367636570915757

`record[A006530(A035235(n+2))]`
-/

namespace A267481.P14863367636570915757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A035235 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267481.P14863367636570915757

/-! ## A267481.P4400582279337493624

`record[A020639(A035235(n+3))]`
-/

namespace A267481.P4400582279337493624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A035235 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267481.P4400582279337493624

/-! ## A267481.P15505385359612338102

`filter[A035235(n+1), A010051(#)]`
-/

namespace A267481.P15505385359612338102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A267481.P15505385359612338102

/-! ## A267481.P10944385652936069538

`∩[A000040(n+1), A035235(n+1)]`
-/

namespace A267481.P10944385652936069538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267481.P10944385652936069538

/-! ## A267481.P4341566476133711911

`∩[A035235(n+1), A045344(n+1)]`
-/

namespace A267481.P4341566476133711911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267481.P4341566476133711911

/-! ## A267481.P15912883513475488100

`∩[A035235(n+1), A116974(n+1)]`
-/

namespace A267481.P15912883513475488100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267481.P15912883513475488100

/-! ## A267481.P9825400070450753715

`∩[A035235(n+1), A182986(n+1)]`
-/

namespace A267481.P9825400070450753715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267481.P9825400070450753715

/-! ## A267481.P1942284292786823816

`filter[A035235(n+2), A080339(#)]`
-/

namespace A267481.P1942284292786823816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035235 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A267481.P1942284292786823816

/-! ## A267481.P11832988900383460996

`∩[A035235(n+1), A240960(n+1)]`
-/

namespace A267481.P11832988900383460996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267481.P11832988900383460996

/-! ## A267481.P75797320601233593

`p?[lt[1, A123063(2*n)]]`
-/

namespace A267481.P75797320601233593
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123063 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A267481.P75797320601233593

/-!
# A267482: Triangle of coefficients of Gaussian polynomials [2n+1,1]_q represented as finite sum of terms (1+q^2)^k*q^(g-k), where k = 0,1,...,g with g=n.

The programs for A267482, the canonical program `A267482.P279289813743896576` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267482 has offset 0).

The definition of A267482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A267482.P279289813743896576

`(-1)^floor((row(n)-col(n))/2)*C(floor((row(n)+col(n))/2), col(n))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267482

/-- `(-1)^floor((row(n)-col(n))/2)*C(floor((row(n)+col(n))/2), col(n))` -/
def P279289813743896576.Spec : Prop :=
  ∀ n, P279289813743896576.a n = (A267482 n : ℚ)

end A267482

/-! ## A267482.P4854240941909242639

`T(n-1,k-1)-T(n-2,k)` with `a(0)=1, a(1)=1`
-/

namespace A267482.P4854240941909242639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2 a n

end

end A267482.P4854240941909242639

namespace A267482

/-- `T(n-1,k-1)-T(n-2,k)` -/
def P4854240941909242639.Spec : Prop :=
  ∀ n, P4854240941909242639.a n = A267482 n

end A267482

/-! ## A267482.P12257441221848747257

`A097807(n)*A130777(n)`
-/

namespace A267482.P12257441221848747257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A130777 n

end

end A267482.P12257441221848747257

namespace A267482

/-- `A097807(n)*A130777(n)` -/
def P12257441221848747257.Spec : Prop :=
  ∀ n, P12257441221848747257.a n = A267482 n

end A267482

/-! ## A267482.P7025024040141581898

`2*A049310(n)-A130777(n)`
-/

namespace A267482.P7025024040141581898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049310 n - A130777 n

end

end A267482.P7025024040141581898

namespace A267482

/-- `2*A049310(n)-A130777(n)` -/
def P7025024040141581898.Spec : Prop :=
  ∀ n, P7025024040141581898.a n = A267482 n

end A267482

/-! ## A267482.P5107464764587402288

`A046854(n)*A057077(A025581(n))`
-/

namespace A267482.P5107464764587402288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n * A057077 (A025581 n).toNat

end

end A267482.P5107464764587402288

namespace A267482

/-- `A046854(n)*A057077(A025581(n))` -/
def P5107464764587402288.Spec : Prop :=
  ∀ n, P5107464764587402288.a n = A267482 n

end A267482

/-! ## A267482.P521818152400747664

`A259875(A057944(n)+A038722(n+1))`
-/

namespace A267482.P521818152400747664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259875 (A057944 n + A038722 (n + 1)).toNat

end

end A267482.P521818152400747664

namespace A267482

/-- `A259875(A057944(n)+A038722(n+1))` -/
def P521818152400747664.Spec : Prop :=
  ∀ n, P521818152400747664.a n = A267482 n

end A267482

/-! ## A267482.P8076104425840139340

`A259875(A093995(n+1)-A002262(n))`
-/

namespace A267482.P8076104425840139340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259875 (A093995 (n + 1) - A002262 n).toNat

end

end A267482.P8076104425840139340

namespace A267482

/-- `A259875(A093995(n+1)-A002262(n))` -/
def P8076104425840139340.Spec : Prop :=
  ∀ n, P8076104425840139340.a n = A267482 n

end A267482

/-! ## A267482.P8916351065985243970

`A117568(n)^A117568(n)*A046854(n)`
-/

namespace A267482.P8916351065985243970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117568 n : ℚ) ^ (A117568 n : ℤ) * (A046854 n : ℚ)

end

end A267482.P8916351065985243970

namespace A267482

/-- `A117568(n)^A117568(n)*A046854(n)` -/
def P8916351065985243970.Spec : Prop :=
  ∀ n, P8916351065985243970.a n = (A267482 n : ℚ)

end A267482

/-! ## A267482.P12726893581392659179

`A046854(n)*A057077(A004736(n+1)-1)`
-/

namespace A267482.P12726893581392659179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n * A057077 (A004736 (n + 1) - 1).toNat

end

end A267482.P12726893581392659179

namespace A267482

/-- `A046854(n)*A057077(A004736(n+1)-1)` -/
def P12726893581392659179.Spec : Prop :=
  ∀ n, P12726893581392659179.a n = A267482 n

end A267482

/-! ## A267482.P10038137527276808884

`A033999(A025581(n))*A108299(A061579(n))`
-/

namespace A267482.P10038137527276808884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A108299 (A061579 n).toNat

end

end A267482.P10038137527276808884

namespace A267482

/-- `A033999(A025581(n))*A108299(A061579(n))` -/
def P10038137527276808884.Spec : Prop :=
  ∀ n, P10038137527276808884.a n = A267482 n

end A267482

/-! ## A267482.P16503330211419425620

`A057077(A099375(n))*A108299(A061579(n))`
-/

namespace A267482.P16503330211419425620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A099375 n).toNat * A108299 (A061579 n).toNat

end

end A267482.P16503330211419425620

namespace A267482

/-- `A057077(A099375(n))*A108299(A061579(n))` -/
def P16503330211419425620.Spec : Prop :=
  ∀ n, P16503330211419425620.a n = A267482 n

end A267482

/-! ## A267482.P1792720078037888573

`A108299(A061579(n))*A165326(A004736(n+1))`
-/

namespace A267482.P1792720078037888573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108299 (A061579 n).toNat * A165326 (A004736 (n + 1)).toNat

end

end A267482.P1792720078037888573

namespace A267482

/-- `A108299(A061579(n))*A165326(A004736(n+1))` -/
def P1792720078037888573.Spec : Prop :=
  ∀ n, P1792720078037888573.a n = A267482 n

end A267482

/-! ## A267482.P2760948302225597705

`A108299(A061579(n))*A165591(A130321(n))`
-/

namespace A267482.P2760948302225597705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108299 (A061579 n).toNat * A165591 (A130321 n).toNat

end

end A267482.P2760948302225597705

namespace A267482

/-- `A108299(A061579(n))*A165591(A130321(n))` -/
def P2760948302225597705.Spec : Prop :=
  ∀ n, P2760948302225597705.a n = A267482 n

end A267482

/-!
# A267483: Triangle of coefficients of Gaussian polynomials [2n+3,2]_q represented as finite sum of terms (1+q^2)^k*q^(g-k), where k = 0,1,...,g with g=2n+1.

The programs for A267483, there is no canonical definition to state claims against.
-/

/-! ## A267483.P5804457773296128115

`A128494(eq[0, ∑[char[∑[n]]]%2])`
-/

namespace A267483.P5804457773296128115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128494 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A267483.P5804457773296128115

/-! ## A267483.P10060850624928362027

`A128494(A162917(n+1))`
-/

namespace A267483.P10060850624928362027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128494 (A162917 (n + 1)).toNat

end

end A267483.P10060850624928362027

/-! ## A267483.P4623258201298100211

`A128494(A053187(n)+n)`
-/

namespace A267483.P4623258201298100211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128494 (A053187 n + (n : ℤ)).toNat

end

end A267483.P4623258201298100211

/-! ## A267483.P16241966114929384466

`A128494(A116942(Δ[n²]))`
-/

namespace A267483.P16241966114929384466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128494 (A116942 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A267483.P16241966114929384466

/-! ## A267483.P8109418409740992386

`A128494(comp[A007606(n+1)])`
-/

namespace A267483.P8109418409740992386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007606 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128494 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A267483.P8109418409740992386

/-! ## A267483.P12366210227357327930

`A128494(eq[A204545(n+1), A204547(n+1)])`
-/

namespace A267483.P12366210227357327930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128494 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A267483.P12366210227357327930

/-!
# A267487: Primes p such that A001221(p+1)^(p-1) == 1 (mod p^2).

The programs for A267487, there is no canonical definition to state claims against.
-/

/-! ## A267487.P4367143350152458042

`p?[record[A104878(n)]]`
-/

namespace A267487.P4367143350152458042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104878 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267487.P4367143350152458042

/-! ## A267487.P10569702540309544577

`p?[record[A228275(n)+1]]`
-/

namespace A267487.P10569702540309544577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228275 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267487.P10569702540309544577

/-!
# A267488: Smallest b > 1 such that there exists an odd prime p with p < b such that b^(p-1) == 1 (mod p^n).

The programs for A267488, there is no canonical definition to state claims against.
-/

/-! ## A267488.P13826889827445121212

`A226116(∑[A001317(n)])+1`
-/

namespace A267488.P13826889827445121212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226116 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A267488.P13826889827445121212

/-!
# A267489: a(n) = n^2 - 4*floor(n^2/6).

The programs for A267489, the canonical program `A267489.P6009788843582405890` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267489 has offset 0).

The definition of A267489 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²-4*floor(n²/6)` (program `A267489.P6009788843582405890`, by `A267489.P6009788843582405890.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A267489.P6009788843582405890

`n²-4*floor(n²/6)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A267489

/-- `n²-4*floor(n²/6)` -/
def P6009788843582405890.Spec : Prop :=
  ∀ n, P6009788843582405890.a n = A267489 n

theorem P6009788843582405890.correct : P6009788843582405890.Spec := by
  intro n
  simp only [A267489]

end A267489

/-! ## A267489.P8782911416039106932

`and(A008810(n)+2, -3)`
-/

namespace A267489.P8782911416039106932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008810 n + 2) (-3)

end

end A267489.P8782911416039106932

namespace A267489

/-- `and(A008810(n)+2, -3)` -/
def P8782911416039106932.Spec : Prop :=
  ∀ n, P8782911416039106932.a n = A267489 n

end A267489

/-! ## A267489.P2724823192996121065

`∑[A004273(A008611(xor(1, n)))]`
-/

namespace A267489.P2724823192996121065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A008611 (Nat.xor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267489.P2724823192996121065

namespace A267489

/-- `∑[A004273(A008611(xor(1, n)))]` -/
def P2724823192996121065.Spec : Prop :=
  ∀ n, P2724823192996121065.a n = A267489 n

end A267489

/-! ## A267489.P2128721809661606625

`∑[A063198(A131793(n+1)-A010872(n))]`
-/

namespace A267489.P2128721809661606625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063198 (A131793 (n + 1) - A010872 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267489.P2128721809661606625

namespace A267489

/-- `∑[A063198(A131793(n+1)-A010872(n))]` -/
def P2128721809661606625.Spec : Prop :=
  ∀ n, P2128721809661606625.a n = A267489 n

end A267489

/-! ## A267489.P16128436125117710842

`∑[A063942(A004442(n)*A036453(n+1))]`
-/

namespace A267489.P16128436125117710842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063942 (A004442 n * A036453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267489.P16128436125117710842

namespace A267489

/-- `∑[A063942(A004442(n)*A036453(n+1))]` -/
def P16128436125117710842.Spec : Prop :=
  ∀ n, P16128436125117710842.a n = A267489 n

end A267489

/-! ## A267489.P7928385474342489719

`A042948(∑[A047563(n+1)%(n+1)])`
-/

namespace A267489.P7928385474342489719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047563 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A267489.P7928385474342489719

namespace A267489

/-- `A042948(∑[A047563(n+1)%(n+1)])` -/
def P7928385474342489719.Spec : Prop :=
  ∀ n, P7928385474342489719.a n = A267489 n

end A267489

/-! ## A267489.P18380428679016316690

`A042948(A112421(n+7)-A047593(n+1))`
-/

namespace A267489.P18380428679016316690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A112421 (n + 7) - A047593 (n + 1)).toNat

end

end A267489.P18380428679016316690

namespace A267489

/-- `A042948(A112421(n+7)-A047593(n+1))` -/
def P18380428679016316690.Spec : Prop :=
  ∀ n, P18380428679016316690.a n = A267489 n

end A267489

/-! ## A267489.P7562215324228509085

`ceil(xor(2, A004396(n²)+2)/2)`
-/

namespace A267489.P7562215324228509085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor 2 (A004396 (n ^ 2) + 2) : ℚ) / 2⌉

end

end A267489.P7562215324228509085

namespace A267489

/-- `ceil(xor(2, A004396(n²)+2)/2)` -/
def P7562215324228509085.Spec : Prop :=
  ∀ n, P7562215324228509085.a n = A267489 n

end A267489

/-! ## A267489.P9136380803795941708

`A110654(xor(2, A004396(n²)+2))`
-/

namespace A267489.P9136380803795941708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.xor 2 (A004396 (n ^ 2) + 2)).toNat

end

end A267489.P9136380803795941708

namespace A267489

/-- `A110654(xor(2, A004396(n²)+2))` -/
def P9136380803795941708.Spec : Prop :=
  ∀ n, P9136380803795941708.a n = A267489 n

end A267489

/-! ## A267489.P2928387067161595867

`A271800(A195143(n))`
-/

namespace A267489.P2928387067161595867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271800 (A195143 n).toNat

end

end A267489.P2928387067161595867

namespace A267489

/-- `A271800(A195143(n))` -/
def P2928387067161595867.Spec : Prop :=
  ∀ n, P2928387067161595867.a n = A267489 n

end A267489

/-!
# A267490: Primes whose base-8 representation is a perfect square in base 10.

The programs for A267490, there is no canonical definition to state claims against.
-/

/-! ## A267490.P8005254818318617412

`p?[A267768(n+1)]`
-/

namespace A267490.P8005254818318617412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267490.P8005254818318617412

/-! ## A267490.P15542945255703613426

`p?[record[A267768(A133310(n))]]`
-/

namespace A267490.P15542945255703613426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267768 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267490.P15542945255703613426

/-! ## A267490.P17857932298443167861

`p?[record[A267768(A158416(n))]]`
-/

namespace A267490.P17857932298443167861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267768 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267490.P17857932298443167861

/-! ## A267490.P15023017680132881424

`p?[record[A267768(A328399(n))]]`
-/

namespace A267490.P15023017680132881424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267768 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267490.P15023017680132881424

/-! ## A267490.P12280852571985987153

`p?[record[A267768(A344180(n))]]`
-/

namespace A267490.P12280852571985987153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267768 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267490.P12280852571985987153

/-!
# A267493: Autobiographical numbers in base 5: numbers which are fixed or belong to a cycle under the operator T.

The programs for A267493, there is no canonical definition to state claims against.
-/

/-! ## A267493.P15104777624747065431

`A267494(A326851(n+3)+A140991(n))`
-/

namespace A267493.P15104777624747065431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267494 (A326851 (n + 3) + A140991 n).toNat

end

end A267493.P15104777624747065431

/-! ## A267493.P17791535456060865776

`A267494(lcm(A163088(n), A280864(n+1)))`
-/

namespace A267493.P17791535456060865776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267494 (Int.lcm (A163088 n) (A280864 (n + 1)))

end

end A267493.P17791535456060865776

/-!
# A267494: Autobiographical numbers in base 6: numbers which are fixed or belong to a cycle under the operator T.

The programs for A267494, there is no canonical definition to state claims against.
-/

/-! ## A267494.P15704641533387661482

`A267495(lt[A354661(n+1), A146985(n)])`
-/

namespace A267494.P15704641533387661482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267495 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A267494.P15704641533387661482

/-! ## A267494.P104026123752183200

`A267495(lt[A354661(n+1), A210936(n+1)])`
-/

namespace A267494.P104026123752183200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267495 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A267494.P104026123752183200

/-! ## A267494.P17046775806445452497

`A267495(A082216(n)+A006141(n+4))`
-/

namespace A267494.P17046775806445452497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267495 (A082216 n + A006141 (n + 4)).toNat

end

end A267494.P17046775806445452497

/-! ## A267494.P2149049153379121509

`A267495(∑[A225479(n)!])`
-/

namespace A267494.P2149049153379121509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A225479 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267495 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267494.P2149049153379121509

/-!
# A267495: Autobiographical numbers in base 7: numbers which are fixed or belong to a cycle under the operator T.

The programs for A267495, there is no canonical definition to state claims against.
-/

/-! ## A267495.P12616093716342653004

`A267496(lt[A049812(n+1), A336148(n+1)])`
-/

namespace A267495.P12616093716342653004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267496 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A267495.P12616093716342653004

/-! ## A267495.P6591043397806418078

`A267496(lt[A000607(n), A336148(n+1)])`
-/

namespace A267495.P6591043397806418078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267496 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A267495.P6591043397806418078

/-! ## A267495.P12492006984041348464

`A267496(A097601(n)+A048645(n+1))`
-/

namespace A267495.P12492006984041348464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267496 (A097601 n + A048645 (n + 1)).toNat

end

end A267495.P12492006984041348464

/-! ## A267495.P14316419226183413614

`A267496(A048645(n+1)*A139337(n))`
-/

namespace A267495.P14316419226183413614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267496 (A048645 (n + 1) * A139337 n).toNat

end

end A267495.P14316419226183413614

/-! ## A267495.P7916051020168886844

`A267496(A048645(n+1)^A139337(n))`
-/

namespace A267495.P7916051020168886844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267496 (SequenceMachineLib.roundAway ((A048645 (n + 1) : ℚ) ^ (A139337 n : ℤ))).toNat

end

end A267495.P7916051020168886844

/-!
# A267496: Autobiographical numbers in base 8: numbers which are fixed or belong to a cycle under the operator T.

The programs for A267496, there is no canonical definition to state claims against.
-/

/-! ## A267496.P2487851437276881066

`A267497(lt[A352129(n), A273429(n)])`
-/

namespace A267496.P2487851437276881066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352129 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267497 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A267496.P2487851437276881066

/-! ## A267496.P16794826081497830825

`A267497(∑[A331562(n+1)!])`
-/

namespace A267496.P16794826081497830825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A331562 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267497 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267496.P16794826081497830825

/-! ## A267496.P14216762057695806792

`A267497(A068937(n+1)%A271269(3*n+2))`
-/

namespace A267496.P14216762057695806792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267497 (Int.tmod (A068937 (n + 1)) (A271269 (3 * n + 2))).toNat

end

end A267496.P14216762057695806792

/-! ## A267496.P2904946762320125667

`A267497(A029804(n+2))`
-/

namespace A267496.P2904946762320125667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267497 (A029804 (n + 2)).toNat

end

end A267496.P2904946762320125667

/-!
# A267497: Autobiographical numbers in base 9: numbers which are fixed or belong to a cycle under the operator T (see comments).

The programs for A267497, there is no canonical definition to state claims against.
-/

/-! ## A267497.P13251517945091878228

`A047841(lt[A191419(n+1), A328695(3*n+1)])`
-/

namespace A267497.P13251517945091878228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328695 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047841 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A267497.P13251517945091878228

/-! ## A267497.P3923964858975149148

`A047841(record[A338260(n)])`
-/

namespace A267497.P3923964858975149148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338260 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047841 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A267497.P3923964858975149148

/-!
# A267499: Number of fixed points of autobiographical numbers (A267491 ... A267498) in base n.

The programs for A267499, there is no canonical definition to state claims against.
-/

/-! ## A267499.P17161123479149026734

`∑[n+1]+sqrt(A262616(∑[n]+2))`
-/

namespace A267499.P17161123479149026734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + Real.sqrt (A262616 (∑ j ∈ Finset.range (n + 1), f2 j + 2) : ℝ)

end

end A267499.P17161123479149026734

/-! ## A267499.P1615134661638200915

`A059268(A052905(n))+A025747(n)`
-/

namespace A267499.P1615134661638200915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A052905 n).toNat + A025747 n

end

end A267499.P1615134661638200915

/-! ## A267499.P10401175640691469431

`A253145(n)+A130321(A058331(n))`
-/

namespace A267499.P10401175640691469431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n + A130321 (A058331 n).toNat

end

end A267499.P10401175640691469431

/-! ## A267499.P12243848021020834644

`A059268(A052905(n))+∑[A005496(n)]`
-/

namespace A267499.P12243848021020834644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A052905 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267499.P12243848021020834644

/-! ## A267499.P17923637512181834329

`A059268(A052905(n))+A000217(n+1)`
-/

namespace A267499.P17923637512181834329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A052905 n).toNat + A000217 (n + 1)

end

end A267499.P17923637512181834329

