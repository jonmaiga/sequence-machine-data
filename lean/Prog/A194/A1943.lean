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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C024

/-!
# A194301: Triangular array: g(n,k)=number of fractional parts (i*sqrt(5)) in interval [(k-1)/n, k/n], for 1<=i<=n, 1<=k<=n.

The programs for A194301, there is no canonical definition to state claims against.
-/

/-! ## A194301.P12961234591549544923

`A194337(∑[char[∑[n]]]²-n)`
-/

namespace A194301.P12961234591549544923
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194337 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194301.P12961234591549544923

/-!
# A194302: Triangular array: g(n,k)=number of fractional parts (i*sqrt(5)) in interval [(k-1)/n, k/n], for 1<=i<=2n, 1<=k<=n.

The programs for A194302, there is no canonical definition to state claims against.
-/

/-! ## A194302.P11019203225262616146

`A194338(∑[char[∑[n]]]²-n)`
-/

namespace A194302.P11019203225262616146
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194338 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194302.P11019203225262616146

/-!
# A194303: Triangular array: g(n,k)=number of fractional parts (i*sqrt(5)) in interval [(k-1)/n, k/n], for 1<=i<=n^2, 1<=k<=n.

The programs for A194303, there is no canonical definition to state claims against.
-/

/-! ## A194303.P910740685311744312

`A194339(∑[char[∑[n]]]²-n)`
-/

namespace A194303.P910740685311744312
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194339 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194303.P910740685311744312

/-!
# A194304: Triangular array: g(n,k)=number of fractional parts (i*sqrt(5)) in interval [(k-1)/n, k/n], for 1<=i<=2^n, 1<=k<=n.

The programs for A194304, there is no canonical definition to state claims against.
-/

/-! ## A194304.P2883897158588041778

`A194340(∑[char[∑[n]]]²-n)`
-/

namespace A194304.P2883897158588041778
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194340 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194304.P2883897158588041778

/-!
# A194305: Triangular array: g(n,k) = number of fractional parts (i*Pi) in interval [(k-1)/n, k/n], for 1 <= i <= n, 1 <= k <= n.

The programs for A194305, there is no canonical definition to state claims against.
-/

/-! ## A194305.P13117789443371769577

`A023532(n)+A000035(A326889(n+1))`
-/

namespace A194305.P13117789443371769577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n + A000035 (A326889 (n + 1)).toNat

end

end A194305.P13117789443371769577

/-! ## A194305.P2068452236107771507

`Δ[A285139(A174909(n+1))]+1`
-/

namespace A194305.P2068452236107771507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285139 (A174909 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A194305.P2068452236107771507

/-! ## A194305.P15765264525731778747

`A326753(A111880(n+3)*A327351(n))`
-/

namespace A194305.P15765264525731778747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326753 (A111880 (n + 3) * A327351 n).toNat

end

end A194305.P15765264525731778747

/-! ## A194305.P10716813063316214741

`ceil(A143324(n+1)/A003056(A000029(n)))`
-/

namespace A194305.P10716813063316214741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A143324 (n + 1) : ℚ) / (A003056 (A000029 n).toNat : ℚ)⌉

end

end A194305.P10716813063316214741

/-! ## A194305.P12791239328742917799

`A007968(A113832(n+2)+A053255(n+1))`
-/

namespace A194305.P12791239328742917799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 (A113832 (n + 2) + A053255 (n + 1)).toNat

end

end A194305.P12791239328742917799

/-!
# A194309: Triangular array: g(n,k)=number of fractional parts (i*e) in interval [(k-1)/n, k/n], for 1<=i<=n, 1<=k<=n.

The programs for A194309, there is no canonical definition to state claims against.
-/

/-! ## A194309.P1577270980587018338

`A194341(∑[char[∑[n]]]²-n)`
-/

namespace A194309.P1577270980587018338
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194341 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194309.P1577270980587018338

/-! ## A194309.P876785681710124293

`A035175(gcd(A112835(n), A166040(3*n+4)))`
-/

namespace A194309.P876785681710124293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035175 (Int.gcd (A112835 n) (A166040 (3 * n + 4)))

end

end A194309.P876785681710124293

/-! ## A194309.P1272587548905493816

`A001221(∑{digits}[A227951(n+1)², #])`
-/

namespace A194309.P1272587548905493816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227951 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A194309.P1272587548905493816

/-! ## A194309.P1909861086013879590

`A326786(gcd(A038818(n+1), A174349(n+1)))`
-/

namespace A194309.P1909861086013879590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326786 (Int.gcd (A038818 (n + 1)) (A174349 (n + 1)))

end

end A194309.P1909861086013879590

/-! ## A194309.P8890737912308253336

`A324872(A324846(3*(n+1))+A008305(n+1))`
-/

namespace A194309.P8890737912308253336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324872 (A324846 (3 * (n + 1)) + A008305 (n + 1)).toNat

end

end A194309.P8890737912308253336

/-!
# A194310: Triangular array: g(n,k)=number of fractional parts (i*e) in interval [(k-1)/n, k/n], for 1<=i<=2n, 1<=k<=n.

The programs for A194310, there is no canonical definition to state claims against.
-/

/-! ## A194310.P4112309834892933070

`A194342(∑[char[∑[n]]]²-n)`
-/

namespace A194310.P4112309834892933070
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194342 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194310.P4112309834892933070

/-!
# A194311: Triangular array: g(n,k)=number of fractional parts (i*e) in interval [(k-1)/n, k/n], for 1<=i<=n^2, 1<=k<=n.

The programs for A194311, there is no canonical definition to state claims against.
-/

/-! ## A194311.P1955285223535168536

`A194343(A038722(n+1))`
-/

namespace A194311.P1955285223535168536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194343 (A038722 (n + 1)).toNat

end

end A194311.P1955285223535168536

/-!
# A194312: Triangular array: g(n,k)=number of fractional parts (i*e) in interval [(k-1)/n, k/n], for 1<=i<=2^n, 1<=k<=n.

The programs for A194312, there is no canonical definition to state claims against.
-/

/-! ## A194312.P10090841829242398157

`A194344(∑[char[∑[n]]]²-n)`
-/

namespace A194312.P10090841829242398157
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194344 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194312.P10090841829242398157

/-!
# A194313: Triangular array: g(n,k)=number of fractional parts (i*sqrt(6)) in interval [(k-1)/n, k/n], for 1<=i<=n, 1<=k<=n.

The programs for A194313, there is no canonical definition to state claims against.
-/

/-! ## A194313.P17234673482497787876

`Δ[A188090(A039828(n+1))]+1`
-/

namespace A194313.P17234673482497787876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188090 (A039828 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A194313.P17234673482497787876

/-! ## A194313.P2267728381960354429

`and(A084654(n+1), A287364(A132217(n)²))`
-/

namespace A194313.P2267728381960354429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084654 (n + 1)) (A287364 (A132217 n ^ 2).toNat)

end

end A194313.P2267728381960354429

/-! ## A194313.P696525872215273

`A121361(A257340(n+1)+A230708(n+1))`
-/

namespace A194313.P696525872215273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121361 (A257340 (n + 1) + A230708 (n + 1)).toNat

end

end A194313.P696525872215273

/-! ## A194313.P10657822732232221320

`A036578(A002260(n+1)*A326629(3*n+1))`
-/

namespace A194313.P10657822732232221320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036578 (A002260 (n + 1) * A326629 (3 * n + 1)).toNat

end

end A194313.P10657822732232221320

/-!
# A194319: Triangular array: g(n,k)=number of fractional parts (i*sqrt(8)) in interval [(k-1)/n, k/n], for 1<=i<=n^2, 1<=k<=n.

The programs for A194319, there is no canonical definition to state claims against.
-/

/-! ## A194319.P17111212136873605993

`A225245(A005202(n+3))+A189671(n+1)`
-/

namespace A194319.P17111212136873605993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 (A005202 (n + 3)).toNat + A189671 (n + 1)

end

end A194319.P17111212136873605993

/-!
# A194321: Triangular array: g(n,k)=number of fractional parts (i*sqrt(1/2)) in interval [(k-1)/n, k/n], for 1<=i<=n, 1<=k<=n.

The programs for A194321, there is no canonical definition to state claims against.
-/

/-! ## A194321.P5267623051014698656

`A194285(A348946(n+1)+A297314(n+1))`
-/

namespace A194321.P5267623051014698656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194285 (A348946 (n + 1) + A297314 (n + 1)).toNat

end

end A194321.P5267623051014698656

/-!
# A194323: Triangular array: g(n,k)=number of fractional parts (i*sqrt(1/2)) in interval [(k-1)/n, k/n], for 1<=i<=n^2, 1<=k<=n.

The programs for A194323, there is no canonical definition to state claims against.
-/

/-! ## A194323.P16741204565748044011

`A122922(2*A294428(2*n+1))`
-/

namespace A194323.P16741204565748044011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122922 (2 * A294428 (2 * n + 1)).toNat

end

end A194323.P16741204565748044011

/-! ## A194323.P14377642565445955858

`A296658(eq[1, A296656(2*(n+1))])`
-/

namespace A194323.P14377642565445955858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296656 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296658 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194323.P14377642565445955858

/-! ## A194323.P16952487188471059213

`A357186(A235363(n)+A050066(n+1))`
-/

namespace A194323.P16952487188471059213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357186 (A235363 n + A050066 (n + 1)).toNat

end

end A194323.P16952487188471059213

/-! ## A194323.P1765764389182969173

`A145649(A000081(n+1))+A064097(n+1)`
-/

namespace A194323.P1765764389182969173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A000081 (n + 1)).toNat + A064097 (n + 1)

end

end A194323.P1765764389182969173

/-!
# A194325: Triangular array: g(n,k)=number of fractional parts (i*r) in interval [(k-1)/n, k/n], for 1<=i<=n, 1<=k<=n, r=2-sqrt(2).

The programs for A194325, there is no canonical definition to state claims against.
-/

/-! ## A194325.P11626052239707277328

`A194285(∑[char[∑[n]]]²-n)`
-/

namespace A194325.P11626052239707277328
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194285 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194325.P11626052239707277328

/-! ## A194325.P4112766781916411309

`A381635(A383014(2*n+1)+2)`
-/

namespace A194325.P4112766781916411309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381635 (A383014 (2 * n + 1) + 2).toNat

end

end A194325.P4112766781916411309

/-! ## A194325.P17663085808431143301

`A060036(A122060(n+1))`
-/

namespace A194325.P17663085808431143301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060036 (A122060 (n + 1)).toNat

end

end A194325.P17663085808431143301

/-! ## A194325.P16793143268977099599

`A175083(A387144(n+2))`
-/

namespace A194325.P16793143268977099599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175083 (A387144 (n + 2)).toNat

end

end A194325.P16793143268977099599

/-! ## A194325.P470505125141128640

`A331982(A331845(A087188(2*n+1)))`
-/

namespace A194325.P470505125141128640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331982 (A331845 (A087188 (2 * n + 1)).toNat).toNat

end

end A194325.P470505125141128640

/-!
# A194326: Triangular array: g(n,k)=number of fractional parts (i*r) in interval [(k-1)/n, k/n], for 1<=i<=2n, 1<=k<=n, r=2-sqrt(2).

The programs for A194326, there is no canonical definition to state claims against.
-/

/-! ## A194326.P5885412065866522733

`A194286(∑[char[∑[n]]]²-n)`
-/

namespace A194326.P5885412065866522733
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194286 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194326.P5885412065866522733

/-!
# A194327: Triangular array: g(n,k)=number of fractional parts (i*r) in interval [(k-1)/n, k/n], for 1<=i<=n^2, 1<=k<=n, r=2-sqrt(2).

The programs for A194327, there is no canonical definition to state claims against.
-/

/-! ## A194327.P2554754327784966791

`A194287(A038722(1+n))`
-/

namespace A194327.P2554754327784966791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194287 (A038722 (1 + n)).toNat

end

end A194327.P2554754327784966791

/-!
# A194328: Triangular array: g(n,k)=number of fractional parts (i*r) in interval [(k-1)/n, k/n], for 1<=i<=2^n, 1<=k<=n, r=2-sqrt(2).

The programs for A194328, there is no canonical definition to state claims against.
-/

/-! ## A194328.P18411285821098442156

`A194288(∑[char[∑[n]]]²-n)`
-/

namespace A194328.P18411285821098442156
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194288 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194328.P18411285821098442156

/-!
# A194329: Triangular array: g(n,k)=number of fractional parts (i*r) in interval [(k-1)/n, k/n], for 1<=i<=n, 1<=k<=n, r=2-sqrt(3).

The programs for A194329, there is no canonical definition to state claims against.
-/

/-! ## A194329.P5122168742685848598

`A194289(∑[char[∑[n]]]²-n)`
-/

namespace A194329.P5122168742685848598
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194289 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194329.P5122168742685848598

/-!
# A194330: Triangular array: g(n,k)=number of fractional parts (i*r) in interval [(k-1)/n, k/n], for 1<=i<=2n, 1<=k<=n, r=2-sqrt(3).

The programs for A194330, there is no canonical definition to state claims against.
-/

/-! ## A194330.P567620869629768672

`A194290(A038722(1+n))`
-/

namespace A194330.P567620869629768672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194290 (A038722 (1 + n)).toNat

end

end A194330.P567620869629768672

/-!
# A194331: Triangular array: g(n,k)=number of fractional parts (i*r) in interval [(k-1)/n, k/n], for 1<=i<=n^2, 1<=k<=n, r=2-sqrt(3).

The programs for A194331, there is no canonical definition to state claims against.
-/

/-! ## A194331.P3871799190547443221

`A194291(∑[char[∑[n]]]²-n)`
-/

namespace A194331.P3871799190547443221
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194291 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194331.P3871799190547443221

/-!
# A194332: Triangular array: g(n,k)=number of fractional parts (i*r) in interval [(k-1)/n, k/n], for 1<=i<=2^n, 1<=k<=n, r=2-sqrt(3).

The programs for A194332, there is no canonical definition to state claims against.
-/

/-! ## A194332.P14037604309310714038

`A194292(∑[char[∑[n]]]²-n)`
-/

namespace A194332.P14037604309310714038
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194292 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194332.P14037604309310714038

/-!
# A194333: Triangular array: g(n,k)=number of fractional parts (i*r) in interval [(k-1)/n, k/n], for 1<=i<=n, 1<=k<=n, r=2-phi, where phi=(1+sqrt(5))/2, the golden ratio.

The programs for A194333, there is no canonical definition to state claims against.
-/

/-! ## A194333.P3052823421755126844

`A194293(∑[char[∑[n]]]²-n)`
-/

namespace A194333.P3052823421755126844
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194293 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194333.P3052823421755126844

/-! ## A194333.P4398647524496388202

`A014067(A269678(n+1)+n)+1`
-/

namespace A194333.P4398647524496388202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014067 (A269678 (n + 1) + (n : ℤ)).toNat + 1

end

end A194333.P4398647524496388202

/-! ## A194333.P3119334538576164305

`A000700(and(A009194(n+1), A367323(n+7)))`
-/

namespace A194333.P3119334538576164305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (Int.land (A009194 (n + 1)) (A367323 (n + 7))).toNat

end

end A194333.P3119334538576164305

/-! ## A194333.P12632656486535773008

`A336423(A336423(2*n+3)+A001221(2*n+5))`
-/

namespace A194333.P12632656486535773008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336423 (A336423 (2 * n + 3) + A001221 (2 * n + 5)).toNat

end

end A194333.P12632656486535773008

/-! ## A194333.P9573614255255385302

`A176047(A133569(n+2))`
-/

namespace A194333.P9573614255255385302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176047 (A133569 (n + 2)).toNat

end

end A194333.P9573614255255385302

/-!
# A194334: Triangular array: g(n,k)=number of fractional parts (i*r) in interval [(k-1)/n, k/n], for 1<=i<=2n, 1<=k<=n, r=2-phi, where phi=(1+sqrt(5))/2, the golden ratio.

The programs for A194334, there is no canonical definition to state claims against.
-/

/-! ## A194334.P2435849427429713866

`A194294(A038722(1+n))`
-/

namespace A194334.P2435849427429713866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194294 (A038722 (1 + n)).toNat

end

end A194334.P2435849427429713866

/-!
# A194335: Triangular array: g(n,k)=number of fractional parts (i*r) in interval [(k-1)/n, k/n], for 1<=i<=n^2, 1<=k<=n, r=2-phi, where phi=(1+sqrt(5))/2, the golden ratio.

The programs for A194335, there is no canonical definition to state claims against.
-/

/-! ## A194335.P4980326889630872828

`A194295(∑[char[∑[n]]]²-n)`
-/

namespace A194335.P4980326889630872828
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194295 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194335.P4980326889630872828

/-! ## A194335.P8359937576528246434

`A343221(A038238(n+1))`
-/

namespace A194335.P8359937576528246434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343221 (A038238 (n + 1)).toNat

end

end A194335.P8359937576528246434

/-!
# A194336: Triangular array: g(n,k)=number of fractional parts (i*r) in interval [(k-1)/n, k/n], for 1<=i<=2^n, 1<=k<=n, r=2-phi, where phi=(1+sqrt(5))/2, the golden ratio.

The programs for A194336, there is no canonical definition to state claims against.
-/

/-! ## A194336.P9452993737156262492

`A194296(∑[char[∑[n]]]²-n)`
-/

namespace A194336.P9452993737156262492
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194296 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194336.P9452993737156262492

/-!
# A194337: Triangular array: g(n,k)=number of fractional parts (i*r) in interval [(k-1)/n, k/n], for 1<=i<=n, 1<=k<=n, r=3-sqrt(5).

The programs for A194337, there is no canonical definition to state claims against.
-/

/-! ## A194337.P10735262226967539635

`A194301(A038722(1+n))`
-/

namespace A194337.P10735262226967539635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194301 (A038722 (1 + n)).toNat

end

end A194337.P10735262226967539635

/-!
# A194338: Triangular array: g(n,k)=number of fractional parts (i*r) in interval [(k-1)/n, k/n], for 1<=i<=2n, 1<=k<=n, r=3-sqrt(5).

The programs for A194338, there is no canonical definition to state claims against.
-/

/-! ## A194338.P8923790364615392393

`A194302(A038722(n+1))`
-/

namespace A194338.P8923790364615392393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194302 (A038722 (n + 1)).toNat

end

end A194338.P8923790364615392393

/-!
# A194339: Triangular array: g(n,k)=number of fractional parts (i*r) in interval [(k-1)/n, k/n], for 1<=i<=n^2, 1<=k<=n, r=3-sqrt(5).

The programs for A194339, there is no canonical definition to state claims against.
-/

/-! ## A194339.P15997741013875875082

`A194303(A038722(n+1))`
-/

namespace A194339.P15997741013875875082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194303 (A038722 (n + 1)).toNat

end

end A194339.P15997741013875875082

/-!
# A194340: Triangular array: g(n,k)=number of fractional parts (i*r) in interval [(k-1)/n, k/n], for 1<=i<=2^n, 1<=k<=n, r=3-sqrt(5).

The programs for A194340, there is no canonical definition to state claims against.
-/

/-! ## A194340.P4933453597354011060

`A194304(∑[char[∑[n]]]²-n)`
-/

namespace A194340.P4933453597354011060
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194304 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194340.P4933453597354011060

/-!
# A194341: Triangular array: g(n,k)=number of fractional parts (i*r) in interval [(k-1)/n, k/n], for 1<=i<=n, 1<=k<=n, r=3-e.

The programs for A194341, there is no canonical definition to state claims against.
-/

/-! ## A194341.P10307519294661412149

`A194309(∑[2*n]%comp[∑[n]]+1)`
-/

namespace A194341.P10307519294661412149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194309 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

end

end A194341.P10307519294661412149

/-!
# A194342: Triangular array: g(n,k)=number of fractional parts (i*r) in interval [(k-1)/n, k/n], for 1<=i<=2n, 1<=k<=n, r=3-e.

The programs for A194342, there is no canonical definition to state claims against.
-/

/-! ## A194342.P721693625917487383

`A194310(∑[char[∑[n]]]²-n)`
-/

namespace A194342.P721693625917487383
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194310 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194342.P721693625917487383

/-! ## A194342.P3218747072902730836

`A063056(A391528(n+2))`
-/

namespace A194342.P3218747072902730836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063056 (A391528 (n + 2)).toNat

end

end A194342.P3218747072902730836

/-!
# A194343: Triangular array: g(n,k)=number of fractional parts (i*r) in interval [(k-1)/n, k/n], for 1<=i<=n^2, 1<=k<=n, r=3-e.

The programs for A194343, there is no canonical definition to state claims against.
-/

/-! ## A194343.P880846872046773760

`A194311(A038722(n+1))`
-/

namespace A194343.P880846872046773760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194311 (A038722 (n + 1)).toNat

end

end A194343.P880846872046773760

/-!
# A194344: Triangular array: g(n,k)=number of fractional parts (i*r) in interval [(k-1)/n, k/n], for 1<=i<=2^n, 1<=k<=n, r=3-e.

The programs for A194344, there is no canonical definition to state claims against.
-/

/-! ## A194344.P16636668147437821141

`A194312(∑[char[∑[n]]]²-n)`
-/

namespace A194344.P16636668147437821141
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194312 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194344.P16636668147437821141

/-!
# A194345: Numbers k for which the largest prime factor of p(k) divides p(1)*p(2)*...*p(k-1), where p(k) is the number of partitions of k.

The programs for A194345, there is no canonical definition to state claims against.
-/

/-! ## A194345.P12779629426719708300

`eq[1, A194261(n+1)]+1`
-/

namespace A194345.P12779629426719708300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194261 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A194345.P12779629426719708300

/-! ## A194345.P8635542589352540759

`eq[1, A194262(n+1)]+1`
-/

namespace A194345.P8635542589352540759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194262 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A194345.P8635542589352540759

/-! ## A194345.P15697534428962389500

`record[n+3-A194262(n+2)]`
-/

namespace A194345.P15697534428962389500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A194262 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194345.P15697534428962389500

/-! ## A194345.P6626604585381103251

`record[A000027(n+1)/A194261(n+1)]`
-/

namespace A194345.P6626604585381103251
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A194261 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194345.P6626604585381103251

/-! ## A194345.P16788909895496726843

`record[A000027(n+1)/A194262(n+1)]`
-/

namespace A194345.P16788909895496726843
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A194262 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194345.P16788909895496726843

/-!
# A194349: E.g.f.: -log( sqrt(1-x^2) - x ).

The programs for A194349, the canonical program `A194349.P10534286862702129531` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194349 has offset 1).

The definition of A194349 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194349.P10534286862702129531

`n!/2^(n+1)*∑{#}[floor((n+2)/2), C(n+2, #)*A000129(n+2-2*#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A194349

/-- `n!/2^(n+1)*∑{#}[floor((n+2)/2), C(n+2, #)*A000129(n+2-2*#)]` -/
def P10534286862702129531.Spec : Prop :=
  ∀ n, P10534286862702129531.a n = (A194349 (n + 1) : ℚ)

end A194349

/-! ## A194349.P10770945776453404624

`A100097(n+2)*n!/2^(n+1)`
-/

namespace A194349.P10770945776453404624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100097 (n + 2) * (Nat.factorial n : ℤ) : ℚ) / (2 ^ (n + 1) : ℚ)

end

end A194349.P10770945776453404624

namespace A194349

/-- `A100097(n+2)*n!/2^(n+1)` -/
def P10770945776453404624.Spec : Prop :=
  ∀ n, P10770945776453404624.a n = (A194349 (n + 1) : ℚ)

end A194349

/-!
# A194350: Numbers covering A000027: a(n) = (1, 1, 2, 5) * A011557(n).

The programs for A194350, the canonical program `A194350.P8431382199481923968` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194350 has offset 1).

The definition of A194350 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194350.P8431382199481923968

`10*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A194350

/-- `10*a(n-4)` -/
def P8431382199481923968.Spec : Prop :=
  ∀ n, (P8431382199481923968.a n : ℤ) = A194350 (n + 1)

theorem P8431382199481923968.correct : P8431382199481923968.Spec := by
  intro n
  simp only [A194350, Nat.add_sub_cancel]

end A194350

/-! ## A194350.P7322188631254265911

`ogf((1+x+2x^2+5x^3)/(1-10x^4))`
-/

namespace A194350.P7322188631254265911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, 5] [1, 0, 0, 0, -10] n

end

end A194350.P7322188631254265911

namespace A194350

/-- `ogf((1+x+2x^2+5x^3)/(1-10x^4))` -/
def P7322188631254265911.Spec : Prop :=
  ∀ n, P7322188631254265911.a n = A194350 (n + 1)

end A194350

/-! ## A194350.P10345821869475304877

`a(n-2)+a(n-2)/(1/a(n-1)%3)²` with `a(0)=1, a(1)=1`
-/

namespace A194350.P10345821869475304877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 2) / (1 / (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) 3 : ℚ)) ^ 2

end

end A194350.P10345821869475304877

namespace A194350

/-- `a(n-2)+a(n-2)/(1/a(n-1)%3)²` -/
def P10345821869475304877.Spec : Prop :=
  ∀ n, P10345821869475304877.a n = (A194350 (n + 1) : ℚ)

end A194350

/-! ## A194350.P7992721957637639801

`A051109(A057353(n))`
-/

namespace A194350.P7992721957637639801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051109 (A057353 n).toNat

end

end A194350.P7992721957637639801

namespace A194350

/-- `A051109(A057353(n))` -/
def P7992721957637639801.Spec : Prop :=
  ∀ n, P7992721957637639801.a n = A194350 (n + 1)

end A194350

/-! ## A194350.P13991008206794036378

`Δ[A093785(n+1)]`
-/

namespace A194350.P13991008206794036378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194350.P13991008206794036378

namespace A194350

/-- `Δ[A093785(n+1)]` -/
def P13991008206794036378.Spec : Prop :=
  ∀ n, P13991008206794036378.a n = A194350 (n + 1)

end A194350

/-!
# A194351: Starting position of the first occurrence of a string of 2^n in the decimal expansion of Pi.

The programs for A194351, there is no canonical definition to state claims against.
-/

/-! ## A194351.P10330931628648248621

`A032445(2^n)-1`
-/

namespace A194351.P10330931628648248621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032445 (2 ^ n) - 1

end

end A194351.P10330931628648248621

/-! ## A194351.P7731502300388840700

`A014777(2^n)`
-/

namespace A194351.P7731502300388840700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014777 (2 ^ n)

end

end A194351.P7731502300388840700

/-! ## A194351.P8297230203901248828

`A176341(2^n)`
-/

namespace A194351.P8297230203901248828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176341 (2 ^ n)

end

end A194351.P8297230203901248828

/-!
# A194352: First of quadruples of consecutive happy numbers.

The programs for A194352, there is no canonical definition to state claims against.
-/

/-! ## A194352.P5725118156591034736

`∩[A072494(n+1)-1, A072494(n+1)]`
-/

namespace A194352.P5725118156591034736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072494 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194352.P5725118156591034736

/-!
# A194353: G.f.: exp( Sum_{n>=1} (x^n/n)/sqrt(1 - 4*x^n) ).

The programs for A194353, there is no canonical definition to state claims against.
-/

/-! ## A194353.P1370414478972359233

`A256502(or(1, A197601(n)))`
-/

namespace A194353.P1370414478972359233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (Int.lor 1 (A197601 n)).toNat

end

end A194353.P1370414478972359233

/-! ## A194353.P16087330059861651335

`A052709(n+1)+Δ[A032259(3*(n+1))]%2`
-/

namespace A194353.P16087330059861651335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032259 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052709 (n + 1) + Int.tmod (f1 (n + 1) - f1 n) 2

end

end A194353.P16087330059861651335

/-! ## A194353.P8806548969867000660

`A380496(A127976(n+1))+A052709(n+1)`
-/

namespace A194353.P8806548969867000660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380496 (A127976 (n + 1)).toNat + A052709 (n + 1)

end

end A194353.P8806548969867000660

/-!
# A194354: Number of up-down permutations on [n] whose peaks have k rises.

The programs for A194354, there is no canonical definition to state claims against.
-/

/-! ## A194354.P18249348655456972339

`and(A001700(n), A285572(A102712(n+1)))`
-/

namespace A194354.P18249348655456972339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001700 n) (A285572 (A102712 (n + 1)).toNat)

end

end A194354.P18249348655456972339

/-! ## A194354.P3306931589462378109

`and(A216246(n+1), A285189(A010754(n)))`
-/

namespace A194354.P3306931589462378109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A216246 (n + 1)) (A285189 (A010754 n).toNat)

end

end A194354.P3306931589462378109

/-! ## A194354.P1758425533399683370

`and(A169973(A329976(n)), A233693(n+1))`
-/

namespace A194354.P1758425533399683370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A169973 (A329976 n).toNat) (A233693 (n + 1))

end

end A194354.P1758425533399683370

/-! ## A194354.P13169278125617658099

`and(A056232(A057373(n+4)), A319421(2*(n+2)))`
-/

namespace A194354.P13169278125617658099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056232 (A057373 (n + 4)).toNat) (A319421 (2 * (n + 2)))

end

end A194354.P13169278125617658099

/-!
# A194355: First of quintuples of consecutive happy numbers.

The programs for A194355, there is no canonical definition to state claims against.
-/

/-! ## A194355.P16513510687729576164

`∩[A194352(n+1)-1, A194352(n+1)]`
-/

namespace A194355.P16513510687729576164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194352 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194355.P16513510687729576164

/-! ## A194355.P216549031999891416

`∩[A072494(n+1)-2, A072494(n+1)]`
-/

namespace A194355.P216549031999891416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072494 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194355.P216549031999891416

/-!
# A194356: Triangle of divisors of 10^n, each number occurring once.

The programs for A194356, there is no canonical definition to state claims against.
-/

/-! ## A194356.P16416177613413062659

`filter[A194358(n), A011655(#)]`
-/

namespace A194356.P16416177613413062659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A194356.P16416177613413062659

/-! ## A194356.P7852769870594241585

`filter[A194358(n), A267208(#)]`
-/

namespace A194356.P7852769870594241585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A194356.P7852769870594241585

/-! ## A194356.P13529017057009812348

`gcd(A164309(A164340(n+1)), A164313(2*n+5))`
-/

namespace A194356.P13529017057009812348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A164309 (A164340 (n + 1)).toNat) (A164313 (2 * n + 5))

end

end A194356.P13529017057009812348

/-!
# A194357: Triangle of divisors of 6^n, each number occurring once.

The programs for A194357, there is no canonical definition to state claims against.
-/

/-! ## A194357.P3524532424927889380

`filter[A194358(n), A011558(#)]`
-/

namespace A194357.P3524532424927889380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A194357.P3524532424927889380

/-! ## A194357.P12465875998784116971

`filter[A194358(n), A358847(#)]`
-/

namespace A194357.P12465875998784116971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358847 (f1 j).toNat = 1) n)

end

end A194357.P12465875998784116971

/-! ## A194357.P8925955600998971245

`filter[A194358(n), A364252(#)]`
-/

namespace A194357.P8925955600998971245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A194357.P8925955600998971245

/-! ## A194357.P14954952937542402223

`filter[A194358(n), A065333(#)]`
-/

namespace A194357.P14954952937542402223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065333 (f1 j).toNat = 1) n)

end

end A194357.P14954952937542402223

/-! ## A194357.P7948297294013462538

`filter[A178484(n+1), A065333(#)]`
-/

namespace A194357.P7948297294013462538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065333 (f1 j).toNat = 1) n)

end

end A194357.P7948297294013462538

/-!
# A194358: Triangle of divisors of 30^n, each number occurring once.

The programs for A194358, there is no canonical definition to state claims against.
-/

/-! ## A194358.P4095008327037037543

`filter[A194359(n), A109720(#)]`
-/

namespace A194358.P4095008327037037543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A194358.P4095008327037037543

/-!
# A194360: Triangle of divisors of 105^n, each number occurring once.

The programs for A194360, there is no canonical definition to state claims against.
-/

/-! ## A194360.P6674397778133039488

`filter[A194359(n), and(1, #)]`
-/

namespace A194360.P6674397778133039488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.land 1 (f1 j) = 1) n)

end

end A194360.P6674397778133039488

/-! ## A194360.P15514806751019033503

`filter[A194359(n), A000035(#)]`
-/

namespace A194360.P15514806751019033503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A194360.P15514806751019033503

/-! ## A194360.P8769055841552563328

`filter[A194359(n), A000079(A007814(#))]`
-/

namespace A194360.P8769055841552563328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000079 (A007814 (f1 j).toNat).toNat = 1) n)

end

end A194360.P8769055841552563328

/-!
# A194363: Lucas entry points: smallest m >= 0 such that the n-th prime divides Lucas(m), or -1 if there is no such m.

The programs for A194363, there is no canonical definition to state claims against.
-/

/-! ## A194363.P9273013656289166772

`A223486(A000040(n+1))`
-/

namespace A194363.P9273013656289166772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223486 (A000040 (n + 1)).toNat

end

end A194363.P9273013656289166772

/-! ## A194363.P15474852400306120977

`A223486(record[A051698(n)])`
-/

namespace A194363.P15474852400306120977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A194363.P15474852400306120977

/-!
# A194364: The number of n-permutations having precisely two cycles whose lengths are relatively prime.

The programs for A194364, there is no canonical definition to state claims against.
-/

/-! ## A194364.P8649148246449172955

`A000142(n+1)/A001783(n+2)*A056855(n+2)`
-/

namespace A194364.P8649148246449172955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A001783 (n + 2) : ℚ) * (A056855 (n + 2) : ℚ)

end

end A194364.P8649148246449172955

/-! ## A194364.P9311089757979700891

`A110376(n+2)/(n+2)`
-/

namespace A194364.P9311089757979700891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110376 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A194364.P9311089757979700891

/-! ## A194364.P4971653321250322528

`record[A110376(A052938(n))/A052938(n)]`
-/

namespace A194364.P4971653321250322528
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110376 (A052938 n).toNat : ℚ) / (A052938 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194364.P4971653321250322528

/-!
# A194365: Triangle read by rows: T(n,k) is the number of down-up permutations on [n] whose peaks have k rises.

The programs for A194365, there is no canonical definition to state claims against.
-/

/-! ## A194365.P15023536916107049158

`A213911(2^A265020(n))`
-/

namespace A194365.P15023536916107049158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A265020 n : ℤ))).toNat

end

end A194365.P15023536916107049158

/-! ## A194365.P2663374967866306538

`A037800(5^A265020(n))`
-/

namespace A194365.P2663374967866306538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A265020 n : ℤ))).toNat

end

end A194365.P2663374967866306538

/-! ## A194365.P5587193734102508474

`A087116(5^A265020(n))`
-/

namespace A194365.P5587193734102508474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A265020 n : ℤ))).toNat

end

end A194365.P5587193734102508474

/-! ## A194365.P16094821168114993543

`∑{e}[A103872(A258323(n))+1, #]`
-/

namespace A194365.P16094821168114993543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103872 (A258323 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A194365.P16094821168114993543

/-! ## A194365.P11782766696711196943

`A143842(A250305(n))`
-/

namespace A194365.P11782766696711196943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143842 (A250305 n).toNat

end

end A194365.P11782766696711196943

/-!
# A194366: Nonsquare positive integers n such that the fundamental unit of quadratic field Q(sqrt(n)) has norm 1 and can be written as x+y*sqrt(d) with integers x, y where d is the squarefree part of n.

The programs for A194366, there is no canonical definition to state claims against.
-/

/-! ## A194366.P15625264900390396646

`∩[comp[A197121(n+1)], A087643(n+3)]`
-/

namespace A194366.P15625264900390396646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197121 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087643 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A194366.P15625264900390396646

/-! ## A194366.P16726579773926785155

`∩[A267983(n+1), A087643(n+3)]`
-/

namespace A194366.P16726579773926785155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087643 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194366.P16726579773926785155

/-! ## A194366.P11602452031672452381

`∩[comp[A245226(n+1)], A267983(n+1)]`
-/

namespace A194366.P11602452031672452381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245226 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A194366.P11602452031672452381

/-! ## A194366.P12636649628305374043

`∩[comp[8*n-3]%A172000(n+1), A087643(n+3)]`
-/

namespace A194366.P12636649628305374043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) (A172000 (n + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087643 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A194366.P12636649628305374043

/-! ## A194366.P14283353756951328456

`eq[A014577(n), A374093(3*(n+1))]+1`
-/

namespace A194366.P14283353756951328456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374093 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A194366.P14283353756951328456

/-!
# A194367: Smallest k such that prime(n) divides k*prime(n+1)+1.

The programs for A194367, there is no canonical definition to state claims against.
-/

/-! ## A194367.P7666023558539239592

`(A000040(n+1)*A069830(n+1)-1)/A000040(n+2)`
-/

namespace A194367.P7666023558539239592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) * A069830 (n + 1) - 1 : ℚ) / (A000040 (n + 2) : ℚ)

end

end A194367.P7666023558539239592

/-! ## A194367.P16055226342983998990

`Δ[A007504(n)]-A087454(n+2)`
-/

namespace A194367.P16055226342983998990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A087454 (n + 2)

end

end A194367.P16055226342983998990

/-! ## A194367.P3841596927327566808

`A000040(n+1)-A087454(n+2)`
-/

namespace A194367.P3841596927327566808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A087454 (n + 2)

end

end A194367.P3841596927327566808

/-! ## A194367.P11100558330121265649

`(A073603(n+1)-1)/A065091(n+1)`
-/

namespace A194367.P11100558330121265649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073603 (n + 1) - 1 : ℚ) / (A065091 (n + 1) : ℚ)

end

end A194367.P11100558330121265649

/-! ## A194367.P8734779218547800765

`A073603(n+1)/A069830(n+1)-A087454(n+2)`
-/

namespace A194367.P8734779218547800765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073603 (n + 1) : ℚ) / (A069830 (n + 1) : ℚ) - (A087454 (n + 2) : ℚ)

end

end A194367.P8734779218547800765

/-! ## A194367.P14959439468746421730

`A008578(n+2)-A087454(n+2)`
-/

namespace A194367.P14959439468746421730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A087454 (n + 2)

end

end A194367.P14959439468746421730

/-! ## A194367.P3793590069227487279

`(A073603(n+1)-1)/A000040(n+2)`
-/

namespace A194367.P3793590069227487279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073603 (n + 1) - 1 : ℚ) / (A000040 (n + 2) : ℚ)

end

end A194367.P3793590069227487279

/-! ## A194367.P3888223832172706959

`p?[A004273(n)+2]-A087454(n+2)`
-/

namespace A194367.P3888223832172706959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A087454 (n + 2)

end

end A194367.P3888223832172706959

/-! ## A194367.P17941136027218935919

`p?[A107750(n)]-A087454(n+2)`
-/

namespace A194367.P17941136027218935919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A087454 (n + 2)

end

end A194367.P17941136027218935919

/-! ## A194367.P2478281010505013252

`p?[A256450(n)]-A087454(n+2)`
-/

namespace A194367.P2478281010505013252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A087454 (n + 2)

end

end A194367.P2478281010505013252

/-! ## A194367.P4713675758645664886

`p?[A000037(n+1)]-A087454(n+2)`
-/

namespace A194367.P4713675758645664886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A087454 (n + 2)

end

end A194367.P4713675758645664886

/-! ## A194367.P6401536576034315997

`p?[A014681(n)]-A087454(n+2)`
-/

namespace A194367.P6401536576034315997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A087454 (n + 2)

end

end A194367.P6401536576034315997

/-! ## A194367.P16382095601056280457

`p?[A080412(n)]-A087454(n+2)`
-/

namespace A194367.P16382095601056280457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A087454 (n + 2)

end

end A194367.P16382095601056280457

/-! ## A194367.P7295692819559564927

`eq[1, A105700(n)]-A087454(n+2)`
-/

namespace A194367.P7295692819559564927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A087454 (n + 2)

end

end A194367.P7295692819559564927

/-! ## A194367.P4012543489530454686

`p?[A051377(n+1)]-A087454(n+2)`
-/

namespace A194367.P4012543489530454686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A087454 (n + 2)

end

end A194367.P4012543489530454686

/-! ## A194367.P1464168525878164189

`p?[A323309(n+1)]-A087454(n+2)`
-/

namespace A194367.P1464168525878164189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A087454 (n + 2)

end

end A194367.P1464168525878164189

/-! ## A194367.P1532163834186505793

`p?[A022998(n)+2]-A087454(n+2)`
-/

namespace A194367.P1532163834186505793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A087454 (n + 2)

end

end A194367.P1532163834186505793

/-! ## A194367.P5807143845999489930

`p?[A195161(n)+2]-A087454(n+2)`
-/

namespace A194367.P5807143845999489930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A087454 (n + 2)

end

end A194367.P5807143845999489930

/-! ## A194367.P4647047976990724269

`p?[A249818(n+1)]-A087454(n+2)`
-/

namespace A194367.P4647047976990724269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A087454 (n + 2)

end

end A194367.P4647047976990724269

/-! ## A194367.P10150486111450549959

`p?[A113981(n+1)]-A087454(n+2)`
-/

namespace A194367.P10150486111450549959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A087454 (n + 2)

end

end A194367.P10150486111450549959

/-!
# A194368: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) = 0, where r=sqrt(2) and < > denotes fractional part.

The programs for A194368, there is no canonical definition to state claims against.
-/

/-! ## A194368.P4838900997966935572

`2*A194369(n+1)`
-/

namespace A194368.P4838900997966935572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A194369 (n + 1)

end

end A194368.P4838900997966935572

/-! ## A194368.P7309068864431044100

`∑[A002315(val(n+1, 3))+1]`
-/

namespace A194368.P7309068864431044100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 (SequenceMachineLib.valuation (n + 1) 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194368.P7309068864431044100

/-! ## A194368.P15686150185909544346

`∑[2*A046090(val(1+n, 3))]`
-/

namespace A194368.P15686150185909544346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046090 (SequenceMachineLib.valuation (1 + n) 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194368.P15686150185909544346

/-! ## A194368.P333578951665457259

`∑[2*(A001652(val(n+1, 3))+1)]`
-/

namespace A194368.P333578951665457259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001652 (SequenceMachineLib.valuation (n + 1) 3) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194368.P333578951665457259

/-! ## A194368.P10133449504207084938

`A004277(A194369(n+1))`
-/

namespace A194368.P10133449504207084938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A194369 (n + 1)).toNat

end

end A194368.P10133449504207084938

/-! ## A194368.P1689173838857209672

`A194369(A000027(n+1))+A194369(n+1)`
-/

namespace A194368.P1689173838857209672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194369 (A000027 (n + 1)).toNat + A194369 (n + 1)

end

end A194368.P1689173838857209672

/-! ## A194368.P7106971602553363796

`record[gcd(n+2, A120751(n+1))]`
-/

namespace A194368.P7106971602553363796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A120751 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194368.P7106971602553363796

/-! ## A194368.P2382344010278489096

`record[gcd(2*(n+1), A120749(n+1))]`
-/

namespace A194368.P2382344010278489096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n + 1) : ℤ) (A120749 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194368.P2382344010278489096

/-! ## A194368.P1661722843632334664

`eq[A120750(n+1), A131738(n)]`
-/

namespace A194368.P1661722843632334664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194368.P1661722843632334664

/-! ## A194368.P13921097205052811460

`eq[A063196(n+1), A120750(n+1)]`
-/

namespace A194368.P13921097205052811460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120750 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194368.P13921097205052811460

/-!
# A194369: (A194368)/2.

The programs for A194369, there is no canonical definition to state claims against.
-/

/-! ## A194369.P8044820549558399992

`A194368(1+n)/2`
-/

namespace A194369.P8044820549558399992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194368 (1 + n) : ℚ) / 2

end

end A194369.P8044820549558399992

/-! ## A194369.P16639439866356078613

`∑[A046090(val(1+n, 3))]`
-/

namespace A194369.P16639439866356078613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046090 (SequenceMachineLib.valuation (1 + n) 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194369.P16639439866356078613

/-! ## A194369.P5099228345024132132

`∑[A001652(val(1+n, 3))+1]`
-/

namespace A194369.P5099228345024132132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001652 (SequenceMachineLib.valuation (1 + n) 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194369.P5099228345024132132

/-! ## A194369.P3073550251581485133

`∑[(A002315(val(n+1, 3))+1)/2]`
-/

namespace A194369.P3073550251581485133
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002315 (SequenceMachineLib.valuation (n + 1) 3) + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194369.P3073550251581485133

/-! ## A194369.P7389939888619714341

`A046090(val(n+1, 3))+a(n-1)` with `a(0)=1`
-/

namespace A194369.P7389939888619714341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A046090 (SequenceMachineLib.valuation (n + 1) 3) + a (n - 1)

end

end A194369.P7389939888619714341

/-! ## A194369.P9862169234609134783

`A001281(A194368(n+1))`
-/

namespace A194369.P9862169234609134783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A194368 (n + 1)).toNat

end

end A194369.P9862169234609134783

/-! ## A194369.P6824086983256200352

`∑[A001057(A002315(val(n+1, 3)))]`
-/

namespace A194369.P6824086983256200352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A002315 (SequenceMachineLib.valuation (n + 1) 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194369.P6824086983256200352

/-! ## A194369.P7232887224737039029

`record[gcd(n+1, A120749(n+1))]`
-/

namespace A194369.P7232887224737039029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A120749 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194369.P7232887224737039029

/-!
# A194370: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) > 0, where r=sqrt(2) and < > denotes fractional part.

The programs for A194370, the canonical program `A194370.P18385211741053095968` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194370 has offset 1).

The definition of A194370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194370.P12327816848329095136

`comp[∑[A002315(val(n+1, 3))+1]-1]+1`
-/

namespace A194370.P12327816848329095136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 (SequenceMachineLib.valuation (n + 1) 3) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A194370.P12327816848329095136

namespace A194370

/-- `comp[∑[A002315(val(n+1, 3))+1]-1]+1` -/
def P12327816848329095136.Spec : Prop :=
  ∀ n, (P12327816848329095136.a n : ℤ) = A194370 (n + 1)

end A194370

/-! ## A194370.P18385211741053095968

`lt[A190763(A003602(n+1)), A001952(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A194370

/-- `lt[A190763(A003602(n+1)), A001952(n+1)]` -/
def P18385211741053095968.Spec : Prop :=
  ∀ n, (P18385211741053095968.a n : ℤ) = A194370 (n + 1)

theorem P18385211741053095968.correct : P18385211741053095968.Spec := by
  intro n
  simp only [A194370, Nat.add_sub_cancel]

end A194370

/-! ## A194370.P2049550506327096250

`comp[A194368(1+n)-1]+1`
-/

namespace A194370.P2049550506327096250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194368 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A194370.P2049550506327096250

namespace A194370

/-- `comp[A194368(1+n)-1]+1` -/
def P2049550506327096250.Spec : Prop :=
  ∀ n, (P2049550506327096250.a n : ℤ) = A194370 (n + 1)

end A194370

/-! ## A194370.P1786311576855574859

`record[(1+n)%A120749(A008619(n))]`
-/

namespace A194370.P1786311576855574859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 + n : ℤ) (A120749 (A008619 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194370.P1786311576855574859

namespace A194370

/-- `record[(1+n)%A120749(A008619(n))]` -/
def P1786311576855574859.Spec : Prop :=
  ∀ n, P1786311576855574859.a n = A194370 (n + 1)

end A194370

/-! ## A194370.P17736867599852964922

`lt[A003602(A120750(n+1)), A001281(n+2)]`
-/

namespace A194370.P17736867599852964922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A120750 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194370.P17736867599852964922

namespace A194370

/-- `lt[A003602(A120750(n+1)), A001281(n+2)]` -/
def P17736867599852964922.Spec : Prop :=
  ∀ n, (P17736867599852964922.a n : ℤ) = A194370 (n + 1)

end A194370

/-! ## A194370.P14461202148527124849

`comp[eq[n+1, A120751(n+2)]]`
-/

namespace A194370.P14461202148527124849
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120751 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A194370.P14461202148527124849

namespace A194370

/-- `comp[eq[n+1, A120751(n+2)]]` -/
def P14461202148527124849.Spec : Prop :=
  ∀ n, (P14461202148527124849.a n : ℤ) = A194370 (n + 1)

end A194370

/-! ## A194370.P14088049164030809579

`comp[record[gcd(2*(n+1), A120749(n+1))]-1]+1`
-/

namespace A194370.P14088049164030809579
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n + 1) : ℤ) (A120749 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A194370.P14088049164030809579

namespace A194370

/-- `comp[record[gcd(2*(n+1), A120749(n+1))]-1]+1` -/
def P14088049164030809579.Spec : Prop :=
  ∀ n, (P14088049164030809579.a n : ℤ) = A194370 (n + 1)

end A194370

/-! ## A194370.P11095234347157768689

`comp[eq[n, A004442(A120750(n+1))]]`
-/

namespace A194370.P11095234347157768689
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A120750 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A194370.P11095234347157768689

namespace A194370

/-- `comp[eq[n, A004442(A120750(n+1))]]` -/
def P11095234347157768689.Spec : Prop :=
  ∀ n, (P11095234347157768689.a n : ℤ) = A194370 (n + 1)

end A194370

/-! ## A194370.P13683167800934215595

`comp[eq[A000265(n+1), A120750(n+1)]]`
-/

namespace A194370.P13683167800934215595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120750 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A194370.P13683167800934215595

namespace A194370

/-- `comp[eq[A000265(n+1), A120750(n+1)]]` -/
def P13683167800934215595.Spec : Prop :=
  ∀ n, (P13683167800934215595.a n : ℤ) = A194370 (n + 1)

end A194370

/-! ## A194370.P3258445187195000019

`eq[char[A194368(n+1)], A151933(n)]`
-/

namespace A194370.P3258445187195000019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194368 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A194370.P3258445187195000019

namespace A194370

/-- `eq[char[A194368(n+1)], A151933(n)]` -/
def P3258445187195000019.Spec : Prop :=
  ∀ n, (P3258445187195000019.a n : ℤ) = A194370 (n + 1)

end A194370

/-!
# A194371: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) < 0, where r=sqrt(3) and fractional part is denoted by < >.

The programs for A194371, the canonical program `A194371.P12996466738484531238` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194371 has offset 1).

The definition of A194371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194371.P12996466738484531238

`record[(n+1)%A190670(A008619(n))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A194371

/-- `record[(n+1)%A190670(A008619(n))]` -/
def P12996466738484531238.Spec : Prop :=
  ∀ n, P12996466738484531238.a n = A194371 (n + 1)

theorem P12996466738484531238.correct : P12996466738484531238.Spec := by
  intro n
  simp only [A194371, Nat.add_sub_cancel]

end A194371

/-! ## A194371.P4954428943489987848

`lt[n+1, A190670(A123108(n)+1)]+1`
-/

namespace A194371.P4954428943489987848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190670 (A123108 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A194371.P4954428943489987848

namespace A194371

/-- `lt[n+1, A190670(A123108(n)+1)]+1` -/
def P4954428943489987848.Spec : Prop :=
  ∀ n, (P4954428943489987848.a n : ℤ) = A194371 (n + 1)

end A194371

/-! ## A194371.P16679437431040781384

`eq[A056594(n), A342023(A162238(n+1))]`
-/

namespace A194371.P16679437431040781384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342023 (A162238 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194371.P16679437431040781384

namespace A194371

/-- `eq[A056594(n), A342023(A162238(n+1))]` -/
def P16679437431040781384.Spec : Prop :=
  ∀ n, (P16679437431040781384.a n : ℤ) = A194371 (n + 1)

end A194371

/-! ## A194371.P996168977690616057

`eq[A007814(n+2), A342023(A162238(n+1))]`
-/

namespace A194371.P996168977690616057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342023 (A162238 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194371.P996168977690616057

namespace A194371

/-- `eq[A007814(n+2), A342023(A162238(n+1))]` -/
def P996168977690616057.Spec : Prop :=
  ∀ n, (P996168977690616057.a n : ℤ) = A194371 (n + 1)

end A194371

/-! ## A194371.P4214016552969234557

`lt[A284313(n), A078616(A213598(n))]`
-/

namespace A194371.P4214016552969234557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284313 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078616 (A213598 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194371.P4214016552969234557

namespace A194371

/-- `lt[A284313(n), A078616(A213598(n))]` -/
def P4214016552969234557.Spec : Prop :=
  ∀ n, (P4214016552969234557.a n : ℤ) = A194371 (n + 1)

end A194371

/-!
# A194372: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) = 0, where r=sqrt(3) and < > denotes fractional part.

The programs for A194372, there is no canonical definition to state claims against.
-/

/-! ## A194372.P2593444488164981815

`∑[A106703(n+1)*A353497(35*A313062(9*n+6))]`
-/

namespace A194372.P2593444488164981815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106703 (n + 1) * A353497 (35 * A313062 (9 * n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194372.P2593444488164981815

/-! ## A194372.P16201467434155257587

`lt[1, A059707(A035363(n+2))]`
-/

namespace A194372.P16201467434155257587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059707 (A035363 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A194372.P16201467434155257587

/-! ## A194372.P6813864577011055180

`lt[1, A059707(A035363(n))]-2`
-/

namespace A194372.P6813864577011055180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059707 (A035363 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 2

end

end A194372.P6813864577011055180

/-! ## A194372.P8967081571575202738

`∑[A010694(∑[A251760(n)])]`
-/

namespace A194372.P8967081571575202738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251760 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010694 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194372.P8967081571575202738

/-! ## A194372.P8499693119997088059

`∑[A000005(A376935(n+4)+1)]`
-/

namespace A194372.P8499693119997088059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A376935 (n + 4) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194372.P8499693119997088059

/-!
# A194373: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) > 0, where r=sqrt(3) and < > denotes fractional part.

The programs for A194373, the canonical program `A194373.P2131192760433905498` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194373 has offset 1).

The definition of A194373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194373.P2131192760433905498

`lt[A190670(A008619(n))-n, 1]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A194373

/-- `lt[A190670(A008619(n))-n, 1]` -/
def P2131192760433905498.Spec : Prop :=
  ∀ n, (P2131192760433905498.a n : ℤ) = A194373 (n + 1)

theorem P2131192760433905498.correct : P2131192760433905498.Spec := by
  intro n
  simp only [A194373, Nat.add_sub_cancel]

end A194373

/-! ## A194373.P4453769948549069019

`lt[A190670(A123108(n)+1), 1+n]`
-/

namespace A194373.P4453769948549069019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190670 (A123108 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A194373.P4453769948549069019

namespace A194373

/-- `lt[A190670(A123108(n)+1), 1+n]` -/
def P4453769948549069019.Spec : Prop :=
  ∀ n, (P4453769948549069019.a n : ℤ) = A194373 (n + 1)

end A194373

/-! ## A194373.P3900029638605012122

`lt[n-(A190670(floor(n/2)+1)%(n+1))², A056239(n+1)]`
-/

namespace A194373.P3900029638605012122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A190670 (⌊(n : ℚ) / 2⌋ + 1).toNat) (n + 1 : ℤ) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194373.P3900029638605012122

namespace A194373

/-- `lt[n-(A190670(floor(n/2)+1)%(n+1))², A056239(n+1)]` -/
def P3900029638605012122.Spec : Prop :=
  ∀ n, (P3900029638605012122.a n : ℤ) = A194373 (n + 1)

end A194373

/-! ## A194373.P4049556967699282052

`lt[A028310(n)%A190670(A008619(n)), n]`
-/

namespace A194373.P4049556967699282052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 n) (A190670 (A008619 n).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A194373.P4049556967699282052

namespace A194373

/-- `lt[A028310(n)%A190670(A008619(n)), n]` -/
def P4049556967699282052.Spec : Prop :=
  ∀ n, (P4049556967699282052.a n : ℤ) = A194373 (n + 1)

end A194373

/-! ## A194373.P7084876104396230128

`lt[n%A190670(A008619(n)), A303543(n+1)]`
-/

namespace A194373.P7084876104396230128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A190670 (A008619 n).toNat)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303543 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194373.P7084876104396230128

namespace A194373

/-- `lt[n%A190670(A008619(n)), A303543(n+1)]` -/
def P7084876104396230128.Spec : Prop :=
  ∀ n, (P7084876104396230128.a n : ℤ) = A194373 (n + 1)

end A194373

/-!
# A194374: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) = 0, where r=sqrt(5) and < > denotes fractional part.

The programs for A194374, there is no canonical definition to state claims against.
-/

/-! ## A194374.P13267201957287319342

`4*record[gcd(n+1, A190885(n+1))]`
-/

namespace A194374.P13267201957287319342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A190885 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194374.P13267201957287319342

/-! ## A194374.P4872799361265636143

`record[gcd(A008594(n+1), A190885(n+1))]`
-/

namespace A194374.P4872799361265636143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008594 (n + 1)) (A190885 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194374.P4872799361265636143

/-! ## A194374.P8549612879015722731

`∑[A154753(Δ[A007091(n)])]`
-/

namespace A194374.P8549612879015722731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154753 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194374.P8549612879015722731

/-! ## A194374.P3234308936389760323

`∑[A220109(Δ[A007091(n)])]`
-/

namespace A194374.P3234308936389760323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220109 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194374.P3234308936389760323

/-! ## A194374.P16343501581825553559

`∑[A397492(Δ[A007091(n)])]`
-/

namespace A194374.P16343501581825553559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397492 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194374.P16343501581825553559

/-!
# A194375: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) > 0, where r=sqrt(5) and < > denotes fractional part.

The programs for A194375, there is no canonical definition to state claims against.
-/

/-! ## A194375.P4715959988567959992

`comp[∑[A099733(2^val(n+1, 2))]]`
-/

namespace A194375.P4715959988567959992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099733 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A194375.P4715959988567959992

/-! ## A194375.P5545081407434066202

`lt[A010153(n), A086066(A325678(n))]`
-/

namespace A194375.P5545081407434066202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 (A325678 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194375.P5545081407434066202

/-! ## A194375.P5105241631371719767

`comp[and(A033316(3*n+1), A110084(n+1))]`
-/

namespace A194375.P5105241631371719767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033316 (3 * n + 1)) (A110084 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A194375.P5105241631371719767

/-! ## A194375.P10095078780813844556

`comp[A391586(A076876(n)+5)]`
-/

namespace A194375.P10095078780813844556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391586 (A076876 n + 5).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A194375.P10095078780813844556

/-! ## A194375.P13706541772341977470

`comp[∑[A005888(A209744(n+1))]]`
-/

namespace A194375.P13706541772341977470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005888 (A209744 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A194375.P13706541772341977470

/-! ## A194375.P14073691058324994439

`comp[A048728(∑[A180626(2+n)])]`
-/

namespace A194375.P14073691058324994439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180626 (2 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048728 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A194375.P14073691058324994439

/-! ## A194375.P3603359716987773842

`comp[A369056(A369242(n)+1)]+1`
-/

namespace A194375.P3603359716987773842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369056 (A369242 n + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A194375.P3603359716987773842

/-! ## A194375.P2336793177587542260

`comp[A014444(n)*A329399(n+4)]`
-/

namespace A194375.P2336793177587542260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014444 n * A329399 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A194375.P2336793177587542260

/-! ## A194375.P9456154072111689451

`comp[and(A029470(n+1), A124007(n))]`
-/

namespace A194375.P9456154072111689451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029470 (n + 1)) (A124007 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A194375.P9456154072111689451

/-!
# A194376: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) = 0, where r=sqrt(6) and < > denotes fractional part.

The programs for A194376, the canonical program `A194376.P8742211185253626047` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194376 has offset 1).

The definition of A194376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194376.P11285787354952005076

`record[(2*(n+1))%A327254(n+2)]`
-/

namespace A194376.P11285787354952005076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (n + 1) : ℤ) (A327254 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194376.P11285787354952005076

namespace A194376

/-- `record[(2*(n+1))%A327254(n+2)]` -/
def P11285787354952005076.Spec : Prop :=
  ∀ n, P11285787354952005076.a n = A194376 (n + 1)

end A194376

/-! ## A194376.P8742211185253626047

`record[gcd(2*(n+1), A327255(n+1))]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A194376

/-- `record[gcd(2*(n+1), A327255(n+1))]` -/
def P8742211185253626047.Spec : Prop :=
  ∀ n, (P8742211185253626047.a n : ℤ) = A194376 (n + 1)

theorem P8742211185253626047.correct : P8742211185253626047.Spec := by
  intro n
  simp only [A194376, Nat.add_sub_cancel]

end A194376

/-! ## A194376.P4957564542365487365

`record[A327255(n+1)%A131738(2*(n+1))]`
-/

namespace A194376.P4957564542365487365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327255 (n + 1)) (A131738 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194376.P4957564542365487365

namespace A194376

/-- `record[A327255(n+1)%A131738(2*(n+1))]` -/
def P4957564542365487365.Spec : Prop :=
  ∀ n, P4957564542365487365.a n = A194376 (n + 1)

end A194376

/-! ## A194376.P9880513980447125479

`eq[A131738(n), A327254(A008619(n))]`
-/

namespace A194376.P9880513980447125479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327254 (A008619 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194376.P9880513980447125479

namespace A194376

/-- `eq[A131738(n), A327254(A008619(n))]` -/
def P9880513980447125479.Spec : Prop :=
  ∀ n, (P9880513980447125479.a n : ℤ) = A194376 (n + 1)

end A194376

/-! ## A194376.P8263507394107890393

`eq[A131738(n), A327254(A266981(n))]`
-/

namespace A194376.P8263507394107890393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327254 (A266981 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194376.P8263507394107890393

namespace A194376

/-- `eq[A131738(n), A327254(A266981(n))]` -/
def P8263507394107890393.Spec : Prop :=
  ∀ n, (P8263507394107890393.a n : ℤ) = A194376 (n + 1)

end A194376

/-! ## A194376.P4755312248092235905

`eq[A063196(n+1), A327254(A266981(n))]`
-/

namespace A194376.P4755312248092235905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327254 (A266981 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194376.P4755312248092235905

namespace A194376

/-- `eq[A063196(n+1), A327254(A266981(n))]` -/
def P4755312248092235905.Spec : Prop :=
  ∀ n, (P4755312248092235905.a n : ℤ) = A194376 (n + 1)

end A194376

/-! ## A194376.P9124930852921508818

`eq[A087156(n+1), A327254(A266981(n))]`
-/

namespace A194376.P9124930852921508818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327254 (A266981 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194376.P9124930852921508818

namespace A194376

/-- `eq[A087156(n+1), A327254(A266981(n))]` -/
def P9124930852921508818.Spec : Prop :=
  ∀ n, (P9124930852921508818.a n : ℤ) = A194376 (n + 1)

end A194376

/-!
# A194377: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) > 0, where r=sqrt(6) and < > denotes fractional part.

The programs for A194377, the canonical program `A194377.P3645860054468588062` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194377 has offset 1).

The definition of A194377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194377.P3645860054468588062

`lt[A327254(A008619(n))-n, 1]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A194377

/-- `lt[A327254(A008619(n))-n, 1]` -/
def P3645860054468588062.Spec : Prop :=
  ∀ n, (P3645860054468588062.a n : ℤ) = A194377 (n + 1)

theorem P3645860054468588062.correct : P3645860054468588062.Spec := by
  intro n
  simp only [A194377, Nat.add_sub_cancel]

end A194377

/-! ## A194377.P15267864771002448509

`lt[A327254(A003602(n+1)), n+1]`
-/

namespace A194377.P15267864771002448509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327254 (A003602 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A194377.P15267864771002448509

namespace A194377

/-- `lt[A327254(A003602(n+1)), n+1]` -/
def P15267864771002448509.Spec : Prop :=
  ∀ n, (P15267864771002448509.a n : ℤ) = A194377 (n + 1)

end A194377

/-! ## A194377.P15534958359056885156

`comp[A194376(n+1)-1]+1`
-/

namespace A194377.P15534958359056885156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194376 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A194377.P15534958359056885156

namespace A194377

/-- `comp[A194376(n+1)-1]+1` -/
def P15534958359056885156.Spec : Prop :=
  ∀ n, (P15534958359056885156.a n : ℤ) = A194377 (n + 1)

end A194377

/-!
# A194379: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) = 0, where r=sqrt(7) and < > denotes fractional part.

The programs for A194379, there is no canonical definition to state claims against.
-/

/-! ## A194379.P10263395620544147730

`∑[A368777(∑[A368800(2*(n+2))])]`
-/

namespace A194379.P10263395620544147730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368800 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368777 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194379.P10263395620544147730

/-! ## A194379.P1998771857396286988

`eq[A040304(n+3), A040332(A071788(n+1))]`
-/

namespace A194379.P1998771857396286988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040304 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040332 (A071788 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194379.P1998771857396286988

/-!
# A194380: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) > 0, where r=sqrt(7) and < > denotes fractional part.

The programs for A194380, there is no canonical definition to state claims against.
-/

/-! ## A194380.P9025096703640673809

`∩[comp[A194378(n+1)], A005843(n)+1]`
-/

namespace A194380.P9025096703640673809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194378 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A194380.P9025096703640673809

/-!
# A194381: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) < 0, where r=sqrt(8) and < > denotes fractional part.

The programs for A194381, the canonical program `A194381.P1450577894410993002` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194381 has offset 1).

The definition of A194381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194381.P1450577894410993002

`record[(n+1)%∑[2*A327256(n+1)]]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A194381

/-- `record[(n+1)%∑[2*A327256(n+1)]]` -/
def P1450577894410993002.Spec : Prop :=
  ∀ n, P1450577894410993002.a n = A194381 (n + 1)

theorem P1450577894410993002.correct : P1450577894410993002.Spec := by
  intro n
  simp only [A194381, Nat.add_sub_cancel]

end A194381

/-! ## A194381.P6265284645234350754

`lt[A123108(n), ∑[A327256(n)]]`
-/

namespace A194381.P6265284645234350754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327256 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194381.P6265284645234350754

namespace A194381

/-- `lt[A123108(n), ∑[A327256(n)]]` -/
def P6265284645234350754.Spec : Prop :=
  ∀ n, (P6265284645234350754.a n : ℤ) = A194381 (n + 1)

end A194381

/-! ## A194381.P2996686701444686760

`lt[A263773(n+2), sqrt(A263791(2*n+5))]`
-/

namespace A194381.P2996686701444686760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263773 (n + 2)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A263791 (2 * n + 5) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A194381.P2996686701444686760

namespace A194381

/-- `lt[A263773(n+2), sqrt(A263791(2*n+5))]` -/
def P2996686701444686760.Spec : Prop :=
  ∀ n, (P2996686701444686760.a n : ℤ) = A194381 (n + 1)

end A194381

/-! ## A194381.P7737521679108391350

`lt[A156269(n+2), A299528(A321292(n+1))]`
-/

namespace A194381.P7737521679108391350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156269 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299528 (A321292 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194381.P7737521679108391350

namespace A194381

/-- `lt[A156269(n+2), A299528(A321292(n+1))]` -/
def P7737521679108391350.Spec : Prop :=
  ∀ n, (P7737521679108391350.a n : ℤ) = A194381 (n + 1)

end A194381

/-! ## A194381.P12727596502817008615

`lt[A236191(n+3), A341532(A000700(n))]`
-/

namespace A194381.P12727596502817008615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341532 (A000700 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194381.P12727596502817008615

namespace A194381

/-- `lt[A236191(n+3), A341532(A000700(n))]` -/
def P12727596502817008615.Spec : Prop :=
  ∀ n, (P12727596502817008615.a n : ℤ) = A194381 (n + 1)

end A194381

/-!
# A194382: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) = 0, where r=sqrt(8) and < > denotes fractional part.

The programs for A194382, there is no canonical definition to state claims against.
-/

/-! ## A194382.P6000892011966088078

`2*A194383(1+n)`
-/

namespace A194382.P6000892011966088078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A194383 (1 + n)

end

end A194382.P6000892011966088078

/-! ## A194382.P2298526203167311602

`A004277(A194383(1+n))`
-/

namespace A194382.P2298526203167311602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A194383 (1 + n)).toNat

end

end A194382.P2298526203167311602

/-! ## A194382.P1391187751995326097

`A005843(A194383(n+1))`
-/

namespace A194382.P1391187751995326097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A194383 (n + 1)).toNat

end

end A194382.P1391187751995326097

/-! ## A194382.P12148532458149425851

`A004275(A194383(1+n)+1)`
-/

namespace A194382.P12148532458149425851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A194383 (1 + n) + 1).toNat

end

end A194382.P12148532458149425851

/-! ## A194382.P11944729224837922288

`A092535(A194383(n+1)+1)`
-/

namespace A194382.P11944729224837922288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 (A194383 (n + 1) + 1).toNat

end

end A194382.P11944729224837922288

/-! ## A194382.P14684282037484912003

`A004271(A194383(n+1)+2)`
-/

namespace A194382.P14684282037484912003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (A194383 (n + 1) + 2).toNat

end

end A194382.P14684282037484912003

/-! ## A194382.P11314750323025874167

`A194383(A000027(n+1))+A194383(n+1)`
-/

namespace A194382.P11314750323025874167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194383 (A000027 (n + 1)).toNat + A194383 (n + 1)

end

end A194382.P11314750323025874167

/-!
# A194383: a(n) = (1/2) * A194382(n).

The programs for A194383, there is no canonical definition to state claims against.
-/

/-! ## A194383.P922439095286404090

`1/2*A194382(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A194383.P922439095286404090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A194382 (n + 1) : ℚ)

end

end A194383.P922439095286404090

/-! ## A194383.P506047488407551437

`A194382(1+n)/2`
-/

namespace A194383.P506047488407551437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194382 (1 + n) : ℚ) / 2

end

end A194383.P506047488407551437

/-! ## A194383.P17481341558114964677

`A001281(A194382(1+n))`
-/

namespace A194383.P17481341558114964677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A194382 (1 + n)).toNat

end

end A194383.P17481341558114964677

/-! ## A194383.P6969554139771447503

`A004525(A194382(n+1))`
-/

namespace A194383.P6969554139771447503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A194382 (n + 1)).toNat

end

end A194383.P6969554139771447503

/-! ## A194383.P14579428037809090082

`A004524(A194382(n+1)+1)`
-/

namespace A194383.P14579428037809090082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A194382 (n + 1) + 1).toNat

end

end A194383.P14579428037809090082

/-! ## A194383.P14763878743541885855

`A004526(A194382(n+1)+1)`
-/

namespace A194383.P14763878743541885855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A194382 (n + 1) + 1).toNat

end

end A194383.P14763878743541885855

/-! ## A194383.P6123195751449527749

`A028242(A194382(n+1)+1)`
-/

namespace A194383.P6123195751449527749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A194382 (n + 1) + 1).toNat

end

end A194383.P6123195751449527749

/-! ## A194383.P18379326629399476726

`A001057(A194382(n+1)-1)`
-/

namespace A194383.P18379326629399476726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A194382 (n + 1) - 1).toNat

end

end A194383.P18379326629399476726

/-!
# A194384: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) > 0, where r=sqrt(8) and < > denotes fractional part.

The programs for A194384, there is no canonical definition to state claims against.
-/

/-! ## A194384.P7267253768898438223

`A325617(ceil(sqrt(n))!)+A006370(2*n+1)`
-/

namespace A194384.P7267253768898438223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325617 (Nat.factorial ⌈Real.sqrt (n : ℝ)⌉.toNat) + A006370 (2 * n + 1)

end

end A194384.P7267253768898438223

/-! ## A194384.P3349061274661593764

`A007310(eq[A106253(2*(n+1)), A170980(2*n+3)])`
-/

namespace A194384.P3349061274661593764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106253 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170980 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A194384.P3349061274661593764

/-! ## A194384.P1188683487840406590

`∩[A190337(n+1), A399397(n+1)]`
-/

namespace A194384.P1188683487840406590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194384.P1188683487840406590

/-!
# A194385: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) = 0, where r=sqrt(10) and < > denotes fractional part.

The programs for A194385, there is no canonical definition to state claims against.
-/

/-! ## A194385.P4797214611817283561

`∑[lcm(6, A088842(n+1)²)]`
-/

namespace A194385.P4797214611817283561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 (A088842 (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194385.P4797214611817283561

/-! ## A194385.P1684330574814020004

`∑[6*A022596(val(n+1, 7))]`
-/

namespace A194385.P1684330574814020004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A022596 (SequenceMachineLib.valuation (n + 1) 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194385.P1684330574814020004

/-! ## A194385.P15289821540094460712

`∑[A187462(Δ[A007093(n)])]`
-/

namespace A194385.P15289821540094460712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187462 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194385.P15289821540094460712

/-! ## A194385.P14966675641006426903

`∑[A187670(Δ[A007093(n)])]`
-/

namespace A194385.P14966675641006426903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187670 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194385.P14966675641006426903

/-!
# A194386: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) > 0, where r=sqrt(10) and < > denotes fractional part.

The programs for A194386, there is no canonical definition to state claims against.
-/

/-! ## A194386.P3657503233631482888

`comp[∪[A194385(n+1), A201507(3*n+2)]]`
-/

namespace A194386.P3657503233631482888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194385 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201507 (3 * n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A194386.P3657503233631482888

/-! ## A194386.P11168747687765262496

`comp[A233583(A194385(n+1))]+1`
-/

namespace A194386.P11168747687765262496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A194385 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A194386.P11168747687765262496

/-! ## A194386.P5453558021715480320

`comp[(A302789(A132958(n+1))+5)*n]`
-/

namespace A194386.P5453558021715480320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A302789 (A132958 (n + 1)).toNat + 5) * (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A194386.P5453558021715480320

/-! ## A194386.P10464879619704957902

`lt[A040788(n), A229964(A075818(n+1))]`
-/

namespace A194386.P10464879619704957902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040788 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229964 (A075818 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194386.P10464879619704957902

/-! ## A194386.P13652681505235211188

`lt[A040258(n), A233583(A091203(n+1))]`
-/

namespace A194386.P13652681505235211188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040258 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A091203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194386.P13652681505235211188

/-! ## A194386.P15892841260452866925

`lt[A040731(n), A004773(A105119(n+1))]`
-/

namespace A194386.P15892841260452866925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040731 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A105119 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194386.P15892841260452866925

/-! ## A194386.P14477381950691880700

`lt[A139251(A220664(n+3)), A064987(n+5)]`
-/

namespace A194386.P14477381950691880700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (A220664 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064987 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194386.P14477381950691880700

/-! ## A194386.P1154212400106381579

`lt[A008590(2*(n+1)), A255591(A056000(2*n+3))]`
-/

namespace A194386.P1154212400106381579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (A056000 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194386.P1154212400106381579

/-! ## A194386.P12044636698030965548

`lt[A250120(3*(n+1)), A255591(A056000(2*n+3))]`
-/

namespace A194386.P12044636698030965548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (A056000 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194386.P12044636698030965548

/-! ## A194386.P1100441498809604636

`lt[2, A330848(A141310(n+2))]`
-/

namespace A194386.P1100441498809604636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330848 (A141310 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A194386.P1100441498809604636

/-! ## A194386.P7633633427575507523

`lt[A040799(n), A328105(A210964(n))]`
-/

namespace A194386.P7633633427575507523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040799 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328105 (A210964 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194386.P7633633427575507523

/-! ## A194386.P2648625217776895777

`lt[A040434(n), A091732((n+1)²)/A091732(n+1)]`
-/

namespace A194386.P2648625217776895777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040434 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091732 ((n + 1) ^ 2) : ℚ) / (A091732 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A194386.P2648625217776895777

/-! ## A194386.P1070099169939813941

`lt[A040369(A030978(n)), A002330(3*n+5)]`
-/

namespace A194386.P1070099169939813941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040369 (A030978 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194386.P1070099169939813941

/-! ## A194386.P9500387210986818236

`lt[A079979(n), A112348(A025793(n))]`
-/

namespace A194386.P9500387210986818236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112348 (A025793 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194386.P9500387210986818236

/-! ## A194386.P6667846798366724091

`lt[A040258(n), A277620(A052938(n))]`
-/

namespace A194386.P6667846798366724091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040258 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277620 (A052938 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194386.P6667846798366724091

/-!
# A194387: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) < 0, where r=sqrt(11) and < > denotes fractional part.

The programs for A194387, there is no canonical definition to state claims against.
-/

/-! ## A194387.P17885970032566700563

`eq[0, A010115(Δ[round((1-n)²/11)])]`
-/

namespace A194387.P17885970032566700563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((1 - (n : ℤ)) ^ 2 : ℚ) / 11)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010115 (f3 (n + 1) - f3 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194387.P17885970032566700563

/-! ## A194387.P3155334131742778955

`eq[0, A008612(A289122(n))]`
-/

namespace A194387.P3155334131742778955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A289122 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194387.P3155334131742778955

/-! ## A194387.P6222694324533872352

`eq[1, A147784(A289122(n)+2)]`
-/

namespace A194387.P6222694324533872352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147784 (A289122 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194387.P6222694324533872352

/-! ## A194387.P6816581989168100592

`eq[A000038(n), A025828(A289122(n))]`
-/

namespace A194387.P6816581989168100592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025828 (A289122 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194387.P6816581989168100592

/-! ## A194387.P6567937264508852645

`eq[A000007(n+1), A025828(A289122(n))]`
-/

namespace A194387.P6567937264508852645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025828 (A289122 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194387.P6567937264508852645

/-!
# A194388: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) = 0, where r=sqrt(11) and < > denotes fractional part.

The programs for A194388, the canonical program `A194388.P17628058412744009852` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194388 has offset 1).

The definition of A194388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194388.P17628058412744009852

`∑[gcd(9, A000196((2-n)²))+1]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A194388

/-- `∑[gcd(9, A000196((2-n)²))+1]` -/
def P17628058412744009852.Spec : Prop :=
  ∀ n, (P17628058412744009852.a n : ℤ) = A194388 (n + 1)

theorem P17628058412744009852.correct : P17628058412744009852.Spec := by
  intro n
  simp only [A194388, Nat.add_sub_cancel]

end A194388

/-! ## A194388.P5342597037399595756

`∑[1+gcd((n+1)², A010000(n²))]`
-/

namespace A194388.P5342597037399595756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + Int.gcd ((n + 1) ^ 2 : ℤ) (A010000 (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194388.P5342597037399595756

namespace A194388

/-- `∑[1+gcd((n+1)², A010000(n²))]` -/
def P5342597037399595756.Spec : Prop :=
  ∀ n, (P5342597037399595756.a n : ℤ) = A194388 (n + 1)

end A194388

/-! ## A194388.P12200351702091780887

`∑[gcd(n-2, A085079((n+1)²))+1]`
-/

namespace A194388.P12200351702091780887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 2) (A085079 ((n + 1) ^ 2)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194388.P12200351702091780887

namespace A194388

/-- `∑[gcd(n-2, A085079((n+1)²))+1]` -/
def P12200351702091780887.Spec : Prop :=
  ∀ n, (P12200351702091780887.a n : ℤ) = A194388 (n + 1)

end A194388

/-! ## A194388.P5725242648670115849

`∑[A109012(A157262(n+1))+1]`
-/

namespace A194388.P5725242648670115849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109012 (A157262 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194388.P5725242648670115849

namespace A194388

/-- `∑[A109012(A157262(n+1))+1]` -/
def P5725242648670115849.Spec : Prop :=
  ∀ n, P5725242648670115849.a n = A194388 (n + 1)

end A194388

/-! ## A194388.P6918847911934159113

`∑[A130335(∑[A247678(2*n+5)])]`
-/

namespace A194388.P6918847911934159113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247678 (2 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130335 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194388.P6918847911934159113

namespace A194388

/-- `∑[A130335(∑[A247678(2*n+5)])]` -/
def P6918847911934159113.Spec : Prop :=
  ∀ n, P6918847911934159113.a n = A194388 (n + 1)

end A194388

/-!
# A194389: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) > 0, where r=sqrt(11) and < > denotes fractional part.

The programs for A194389, there is no canonical definition to state claims against.
-/

/-! ## A194389.P8225608959206145061

`eq[A000035(A007431(n)), A154520(2*(n+2))]`
-/

namespace A194389.P8225608959206145061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A007431 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154520 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194389.P8225608959206145061

/-!
# A194390: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) = 0, where r=sqrt(12) and < > denotes fractional part.

The programs for A194390, there is no canonical definition to state claims against.
-/

/-! ## A194390.P2481363716743234222

`∑[A096174(Δ[A007093(n)])]`
-/

namespace A194390.P2481363716743234222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096174 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194390.P2481363716743234222

/-! ## A194390.P4205483252703295878

`comp[A194391(A123108(2*n))%A047263(2*(n+1))]`
-/

namespace A194390.P4205483252703295878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194391 (A123108 (2 * n)).toNat) (A047263 (2 * (n + 1)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A194390.P4205483252703295878

/-! ## A194390.P9858787965217904977

`∑[A006449(Δ[A007093(n)])]`
-/

namespace A194390.P9858787965217904977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006449 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194390.P9858787965217904977

/-! ## A194390.P6897387093175703005

`∑[A076766(Δ[A007093(n)])]`
-/

namespace A194390.P6897387093175703005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076766 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194390.P6897387093175703005

/-! ## A194390.P8105376938440153916

`∑[A077635(Δ[A007093(n)])]`
-/

namespace A194390.P8105376938440153916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077635 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194390.P8105376938440153916

/-!
# A194391: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) > 0, where r=sqrt(12) and < > denotes fractional part.

The programs for A194391, there is no canonical definition to state claims against.
-/

/-! ## A194391.P12039163681643064821

`lt[A140754(n+1)%2, A006519(n+1)]`
-/

namespace A194391.P12039163681643064821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140754 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194391.P12039163681643064821

/-! ## A194391.P17279468462258550717

`lt[A000035(A140754(n+1)), A001511(n+1)]`
-/

namespace A194391.P17279468462258550717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A140754 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194391.P17279468462258550717

/-! ## A194391.P8492156806635559821

`lt[A000035(A140754(n+1)), A006519(n+1)]`
-/

namespace A194391.P8492156806635559821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A140754 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194391.P8492156806635559821

/-! ## A194391.P2474360638374244308

`lt[A033999(n), A001511(A043318(n+1))]`
-/

namespace A194391.P2474360638374244308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A043318 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194391.P2474360638374244308

/-! ## A194391.P13420274379720454547

`lt[A059841(n), A001511(A043318(n+1))]`
-/

namespace A194391.P13420274379720454547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A043318 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194391.P13420274379720454547

/-! ## A194391.P5388682211233048175

`lt[A010673(A043318(n+1)), A060395(n)]`
-/

namespace A194391.P5388682211233048175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A043318 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060395 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194391.P5388682211233048175

/-! ## A194391.P5679588395132906529

`lt[1, A001511(A043318(n+1))+A000035(n)]`
-/

namespace A194391.P5679588395132906529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A043318 (n + 1)).toNat + A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A194391.P5679588395132906529

/-! ## A194391.P1066276027724524014

`lt[A000034(A043318(n+1)), A079612(n+1)]`
-/

namespace A194391.P1066276027724524014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A043318 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079612 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194391.P1066276027724524014

/-! ## A194391.P14749755226122356582

`lt[A020639(A033012(n+1)), A020639(n+2)+1]`
-/

namespace A194391.P14749755226122356582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A033012 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194391.P14749755226122356582

/-!
# A194392: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) < 0, where r=sqrt(13) and < > denotes fractional part.

The programs for A194392, there is no canonical definition to state claims against.
-/

/-! ## A194392.P2748589000071977182

`lt[A008645(n), A322390(n+3)]`
-/

namespace A194392.P2748589000071977182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008645 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322390 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194392.P2748589000071977182

/-! ## A194392.P9534791012063529006

`eq[A002265(A029101(n)), A025811(n)]`
-/

namespace A194392.P9534791012063529006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A029101 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194392.P9534791012063529006

/-! ## A194392.P6237450992734418532

`lt[A204095(A079955(n)), A355191(n)]`
-/

namespace A194392.P6237450992734418532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204095 (A079955 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355191 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194392.P6237450992734418532

/-!
# A194393: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) = 0, where r=sqrt(13) and < > denotes fractional part.

The programs for A194393, there is no canonical definition to state claims against.
-/

/-! ## A194393.P8794912488325289367

`∑[2*A010127(A000288(n))]`
-/

namespace A194393.P8794912488325289367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010127 (A000288 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194393.P8794912488325289367

/-! ## A194393.P12520976145954841389

`∑[A127404(A290771(2*n+1))]`
-/

namespace A194393.P12520976145954841389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127404 (A290771 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194393.P12520976145954841389

/-! ## A194393.P15831879747908849047

`∑[A327395(A113804(∏{p}[n+1, #]))]`
-/

namespace A194393.P15831879747908849047
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327395 (A113804 (∏ p ∈ Nat.primeFactors (f2 n), p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194393.P15831879747908849047

/-! ## A194393.P7371064870520581187

`∑[A146326(A014417(n+2)^(A014417(n)%2))+2]`
-/

namespace A194393.P7371064870520581187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (SequenceMachineLib.roundAway ((A014417 (n + 2) : ℚ) ^ (Int.tmod (A014417 n) 2 : ℤ))).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194393.P7371064870520581187

/-! ## A194393.P10830010915674836464

`∑[A296076(Δ[A296033(n+3)])]`
-/

namespace A194393.P10830010915674836464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296033 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296076 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194393.P10830010915674836464

/-!
# A194395: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) < 0, where r=sqrt(14) and < > denotes fractional part.

The programs for A194395, there is no canonical definition to state claims against.
-/

/-! ## A194395.P8581222984095853904

`lt[A151888(n+4), A151813(n)]`
-/

namespace A194395.P8581222984095853904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151888 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194395.P8581222984095853904

/-! ## A194395.P4500526358582984722

`lt[A102560(3*n), A151813(n)]`
-/

namespace A194395.P4500526358582984722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194395.P4500526358582984722

/-! ## A194395.P1148010471367707277

`lt[-A102560(n+3), A151813(n)]`
-/

namespace A194395.P1148010471367707277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A102560 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194395.P1148010471367707277

/-! ## A194395.P17547881967840718801

`lt[Δ[A151783(n+2)], A151813(n)]`
-/

namespace A194395.P17547881967840718801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151783 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A194395.P17547881967840718801

/-! ## A194395.P3781486282073021907

`lt[Δ[A151785(n+2)], A151813(n)]`
-/

namespace A194395.P3781486282073021907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151785 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A194395.P3781486282073021907

/-!
# A194396: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) = 0, where r=sqrt(14) and < > denotes fractional part.

The programs for A194396, there is no canonical definition to state claims against.
-/

/-! ## A194396.P11657380290608466008

`2*(record[A043275(n+3)]-1)`
-/

namespace A194396.P11657380290608466008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043275 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1)

end

end A194396.P11657380290608466008

/-! ## A194396.P5809059930000950828

`A004275(record[A043275(n+3)])`
-/

namespace A194396.P5809059930000950828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043275 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A194396.P5809059930000950828

/-! ## A194396.P8772162682968123777

`A004273(record[A043275(n+3)])-1`
-/

namespace A194396.P8772162682968123777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043275 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A194396.P8772162682968123777

/-! ## A194396.P11903884167113001358

`A005843(record[A043275(n+3)])-2`
-/

namespace A194396.P11903884167113001358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043275 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 2

end

end A194396.P11903884167113001358

/-! ## A194396.P17521807904957946542

`∑[A328721(A343265(A020739(n)))]`
-/

namespace A194396.P17521807904957946542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328721 (A343265 (A020739 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194396.P17521807904957946542

/-!
# A194397: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) > 0, where r=sqrt(14) and < > denotes fractional part.

The programs for A194397, there is no canonical definition to state claims against.
-/

/-! ## A194397.P3883122596099400430

`eq[A009001(23*(n+1)), A015838(n)]`
-/

namespace A194397.P3883122596099400430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (23 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015838 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194397.P3883122596099400430

/-! ## A194397.P6075519112475517827

`∑[2*A303489(A002110(val(n+1, 2)))+2]-1`
-/

namespace A194397.P6075519112475517827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303489 (A002110 (SequenceMachineLib.valuation (n + 1) 2)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A194397.P6075519112475517827

/-! ## A194397.P8591421598410469869

`∑[∏{e}[A000129(A037291(n+1))+1, 2^#]+2]-1`
-/

namespace A194397.P8591421598410469869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (A037291 (n + 1)).toNat + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, 2 ^ Nat.factorization (f2 n).natAbs p + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A194397.P8591421598410469869

/-! ## A194397.P7845886118433031583

`eq[A009531(A017185(n)), A015838(n)]`
-/

namespace A194397.P7845886118433031583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A017185 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015838 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194397.P7845886118433031583

/-! ## A194397.P15403046093059003205

`∩[A246171(n+1), A246203(A246204(2*n+3))]`
-/

namespace A194397.P15403046093059003205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246203 (A246204 (2 * n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194397.P15403046093059003205

/-!
# A194398: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) < 0, where r=sqrt(15) and < > denotes fractional part.

The programs for A194398, there is no canonical definition to state claims against.
-/

/-! ## A194398.P18438989600690581824

`lt[A009545(n+3), A007318(A337548(n))]`
-/

namespace A194398.P18438989600690581824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A337548 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194398.P18438989600690581824

/-! ## A194398.P5737671614960222599

`lt[A316386(n+3), A283507(A196241(n+1))]`
-/

namespace A194398.P5737671614960222599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316386 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283507 (A196241 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194398.P5737671614960222599

/-! ## A194398.P4870747119766966527

`eq[1, A268041(and(n+1, xor(57, n)))]`
-/

namespace A194398.P4870747119766966527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268041 (Nat.land (n + 1) (Nat.xor 57 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194398.P4870747119766966527

/-! ## A194398.P4077658179631969689

`A047603(n+1)-A248639(A034487(n+1))`
-/

namespace A194398.P4077658179631969689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047603 (n + 1) - A248639 (A034487 (n + 1)).toNat

end

end A194398.P4077658179631969689

/-! ## A194398.P17646599770682816314

`eq[0, A054891(A220466(n+1))]`
-/

namespace A194398.P17646599770682816314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054891 (A220466 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194398.P17646599770682816314

/-!
# A194399: Numbers m such that Sum_{k=1..m} (<1/2 + k*r> - <k*r>) = 0, where r=sqrt(15) and < > denotes fractional part.

The programs for A194399, there is no canonical definition to state claims against.
-/

/-! ## A194399.P10364228618382155129

`A047451(lt[A132604(n+1), A008347(3*n+2)]+1)`
-/

namespace A194399.P10364228618382155129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047451 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A194399.P10364228618382155129

/-! ## A194399.P389574804008061561

`lt[A035187(A086666(n+5)), A091337(n+1)]`
-/

namespace A194399.P389574804008061561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (A086666 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194399.P389574804008061561

/-! ## A194399.P17327135466511246150

`2*eq[A185284(n), A216060(n)]`
-/

namespace A194399.P17327135466511246150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194399.P17327135466511246150

/-! ## A194399.P10336466945098728739

`A004277(eq[A185284(n), A216060(n)])`
-/

namespace A194399.P10336466945098728739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A194399.P10336466945098728739

/-! ## A194399.P13762224320090932037

`∑[∏{p}[A133572(n+5), #]]`
-/

namespace A194399.P13762224320090932037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133572 (n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194399.P13762224320090932037

