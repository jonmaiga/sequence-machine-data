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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A038100: Numbers k such that k < first location of string of k in decimal expansion of Pi.

The programs for A038100, there is no canonical definition to state claims against.
-/

/-! ## A038100.P15479362456181739854

`lt[n, A014777(n)]`
-/

namespace A038100.P15479362456181739854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014777 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A038100.P15479362456181739854

/-! ## A038100.P3638821287727404168

`eq[1, A013622(floor(n/A014777(n)))]`
-/

namespace A038100.P3638821287727404168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013622 ⌊(n : ℚ) / (A014777 n : ℚ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038100.P3638821287727404168

/-! ## A038100.P3826873178079579694

`eq[A001489(n%A014777(n)), A001489(n)]`
-/

namespace A038100.P3826873178079579694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (Int.tmod (n : ℤ) (A014777 n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038100.P3826873178079579694

/-! ## A038100.P15516916512515295547

`eq[A064429(n)%A014777(n), A064429(n)]`
-/

namespace A038100.P15516916512515295547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064429 n) (A014777 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038100.P15516916512515295547

/-!
# A038101: First location of palindrome a(n) in decimal expansion of Pi is palindromic.

The programs for A038101, there is no canonical definition to state claims against.
-/

/-! ## A038101.P13913137976775244397

`eq[A056965(A014777(n))², A056965(n)]`
-/

namespace A038101.P13913137976775244397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A014777 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038101.P13913137976775244397

/-! ## A038101.P14615849292031504574

`eq[A056965(n)², A056965(A176341(n))]`
-/

namespace A038101.P14615849292031504574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A176341 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038101.P14615849292031504574

/-! ## A038101.P2437100400492810524

`eq[A033665(n), A056965(A014777(n))]`
-/

namespace A038101.P2437100400492810524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A014777 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038101.P2437100400492810524

/-! ## A038101.P6587477718657963875

`eq[A033665(n), A056965(A176341(n))]`
-/

namespace A038101.P6587477718657963875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A176341 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038101.P6587477718657963875

/-! ## A038101.P7798456035218185458

`eq[gcd(7, n), A108622(n+1)]`
-/

namespace A038101.P7798456035218185458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 7 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108622 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038101.P7798456035218185458

/-!
# A038102: Numbers k such that k is a substring of its base-2 representation.

The programs for A038102, there is no canonical definition to state claims against.
-/

/-! ## A038102.P4051125633919883455

`A007088(A350572(n+1))`
-/

namespace A038102.P4051125633919883455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A350572 (n + 1)).toNat

end

end A038102.P4051125633919883455

/-! ## A038102.P13929315940521665514

`A169965(A350572(n+1)+1)/2`
-/

namespace A038102.P13929315940521665514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169965 (A350572 (n + 1) + 1).toNat : ℚ) / 2

end

end A038102.P13929315940521665514

/-! ## A038102.P10908289680098095336

`A185544(2*A350572(n+1))`
-/

namespace A038102.P10908289680098095336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A350572 (n + 1)).toNat

end

end A038102.P10908289680098095336

/-! ## A038102.P8994366605770502876

`A185544(A350572(n+1)+A350572(n+1))`
-/

namespace A038102.P8994366605770502876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A350572 (n + 1) + A350572 (n + 1)).toNat

end

end A038102.P8994366605770502876

/-! ## A038102.P12119503486788488061

`A181891(A077168(n))`
-/

namespace A038102.P12119503486788488061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181891 (A077168 n).toNat

end

end A038102.P12119503486788488061

/-!
# A038103: Numbers k such that k is a substring of its base-3 representation.

The programs for A038103, there is no canonical definition to state claims against.
-/

/-! ## A038103.P17687721946137074678

`A007089(A350573(n+1))`
-/

namespace A038103.P17687721946137074678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A350573 (n + 1)).toNat

end

end A038103.P17687721946137074678

/-! ## A038103.P3474973692122363800

`A307254(n+1)-A212619(∑{d}[n+1, #²])`
-/

namespace A038103.P3474973692122363800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307254 (n + 1) - A212619 (∑ d ∈ Nat.divisors (f1 n), d ^ 2)

end

end A038103.P3474973692122363800

/-! ## A038103.P4054740184872618880

`A307254(n+1)-A224447(A027214(n))`
-/

namespace A038103.P4054740184872618880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307254 (n + 1) - A224447 (A027214 n).toNat

end

end A038103.P4054740184872618880

/-! ## A038103.P12057690879552552960

`A307254(n+1)-A038020(A038140(n+1))`
-/

namespace A038103.P12057690879552552960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307254 (n + 1) - A038020 (A038140 (n + 1)).toNat

end

end A038103.P12057690879552552960

/-!
# A038104: Numbers n with property that n is a substring of its base 4 representation.

The programs for A038104, there is no canonical definition to state claims against.
-/

/-! ## A038104.P9176646284712446853

`∑[A213332(A203277(n+1))]-1`
-/

namespace A038104.P9176646284712446853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213332 (A203277 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A038104.P9176646284712446853

/-!
# A038105: Numbers n with property that n is a substring of its base 5 representation.

The programs for A038105, there is no canonical definition to state claims against.
-/

/-! ## A038105.P16694976508073913090

`A051022(record[A106747(A051022(n))])`
-/

namespace A038105.P16694976508073913090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 (A051022 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A038105.P16694976508073913090

/-! ## A038105.P7913022015069114108

`A051022(eq[n, A167831(A039723(n))])`
-/

namespace A038105.P7913022015069114108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167831 (A039723 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038105.P7913022015069114108

/-! ## A038105.P4263608085741307608

`A051022(eq[n, A249873(A167831(n))])`
-/

namespace A038105.P4263608085741307608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249873 (A167831 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038105.P4263608085741307608

/-! ## A038105.P3194574812876803752

`A051022(eq[A039723(n), A106747(2*n)])`
-/

namespace A038105.P3194574812876803752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039723 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A038105.P3194574812876803752

/-!
# A038106: Numbers k with the property that k is a substring of its base-6 representation.

The programs for A038106, there is no canonical definition to state claims against.
-/

/-! ## A038106.P10215474744847566626

`n*A025777(A052779(n))`
-/

namespace A038106.P10215474744847566626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A025777 (A052779 n).toNat

end

end A038106.P10215474744847566626

/-! ## A038106.P9914598058915022388

`n*A025777(A052785(n))`
-/

namespace A038106.P9914598058915022388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A025777 (A052785 n).toNat

end

end A038106.P9914598058915022388

/-! ## A038106.P865054620040047134

`lcm(n, A327719(A338144(n+1)))`
-/

namespace A038106.P865054620040047134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A327719 (A338144 (n + 1)).toNat)

end

end A038106.P865054620040047134

/-!
# A038107: Number of primes < n^2.

The programs for A038107, there is no canonical definition to state claims against.
-/

/-! ## A038107.P9617504976838659369

`A132635(n)-A130130(n)`
-/

namespace A038107.P9617504976838659369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132635 n - A130130 n

end

end A038107.P9617504976838659369

/-! ## A038107.P5812052188669341048

`∑[A014085(A028310(n)-1)]`
-/

namespace A038107.P5812052188669341048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038107.P5812052188669341048

/-! ## A038107.P10873119972118789876

`∑[A014085(n)]-A014085(n)`
-/

namespace A038107.P10873119972118789876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A014085 n

end

end A038107.P10873119972118789876

/-! ## A038107.P8526405321770794917

`A000720(n+1)+A117490(n+1)-A014085(n)`
-/

namespace A038107.P8526405321770794917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A117490 (n + 1) - A014085 n)

end

end A038107.P8526405321770794917

/-! ## A038107.P15618483686748817221

`A111208(n+1)+A194189(n+1)-A014085(n)`
-/

namespace A038107.P15618483686748817221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111208 (n + 1) + (A194189 (n + 1) - A014085 n)

end

end A038107.P15618483686748817221

/-! ## A038107.P4047085710403469927

`A220506(A004277(n))`
-/

namespace A038107.P4047085710403469927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220506 (A004277 n).toNat

end

end A038107.P4047085710403469927

/-! ## A038107.P3081570501945000997

`A220506(A004275(n+1))`
-/

namespace A038107.P3081570501945000997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220506 (A004275 (n + 1)).toNat

end

end A038107.P3081570501945000997

/-! ## A038107.P3587178829764499504

`A220506(A300576(n+2))`
-/

namespace A038107.P3587178829764499504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220506 (A300576 (n + 2)).toNat

end

end A038107.P3587178829764499504

/-! ## A038107.P12943141136023417681

`A220506(A028310(2*n))`
-/

namespace A038107.P12943141136023417681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220506 (A028310 (2 * n)).toNat

end

end A038107.P12943141136023417681

/-! ## A038107.P3870345374259581981

`A220506(A028310(n)+n)`
-/

namespace A038107.P3870345374259581981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220506 (A028310 n + (n : ℤ)).toNat

end

end A038107.P3870345374259581981

/-! ## A038107.P14053454325664354578

`A220506(2*(n+1))-A014085(n)`
-/

namespace A038107.P14053454325664354578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220506 (2 * (n + 1)) - A014085 n

end

end A038107.P14053454325664354578

/-! ## A038107.P17409462292135385328

`A220506(2*n+1)-A220492(2*n)`
-/

namespace A038107.P17409462292135385328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220506 (2 * n + 1) - A220492 (2 * n)

end

end A038107.P17409462292135385328

/-! ## A038107.P7239396435886378115

`A289207(A132635(n))`
-/

namespace A038107.P7239396435886378115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A132635 n).toNat

end

end A038107.P7239396435886378115

/-! ## A038107.P1366721724872780362

`lt[char[A161188(n+1)], 1]-n`
-/

namespace A038107.P1366721724872780362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161188 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f3 j) n : ℤ) - (n : ℤ)

end

end A038107.P1366721724872780362

/-! ## A038107.P9040723749422556132

`A000720(floor(acot(n)+n)²)`
-/

namespace A038107.P9040723749422556132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ ^ 2).toNat

end

end A038107.P9040723749422556132

/-! ## A038107.P11505740745473856102

`A000720(or(n², floor(acot(n))))`
-/

namespace A038107.P11505740745473856102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.lor (n ^ 2 : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A038107.P11505740745473856102

/-! ## A038107.P17392749692426739690

`A000720(xor(n², floor(acot(n))))`
-/

namespace A038107.P17392749692426739690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.xor (n ^ 2 : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A038107.P17392749692426739690

/-! ## A038107.P7568990679616835926

`A000720(n²^ceil(abs(sin(n))))`
-/

namespace A038107.P7568990679616835926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) ^ (⌈|Real.sin (n : ℝ)|⌉ : ℤ))).toNat

end

end A038107.P7568990679616835926

/-! ## A038107.P3283515852899577259

`A000720(A253909(n))`
-/

namespace A038107.P3283515852899577259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A253909 n).toNat

end

end A038107.P3283515852899577259

/-! ## A038107.P17660384691683889711

`A000720(A028310(n)²)`
-/

namespace A038107.P17660384691683889711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A028310 n ^ 2).toNat

end

end A038107.P17660384691683889711

/-!
# A038108: Number of prime pairs {p,q}, such that pq < n^2.

The programs for A038108, the canonical program `A038108.P12779941796718339072` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038108 has offset 2).

The definition of A038108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038108.P12779941796718339072

`A205726(n+1)+A140114(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A038108

/-- `A205726(n+1)+A140114(n+1)` -/
def P12779941796718339072.Spec : Prop :=
  ∀ n, P12779941796718339072.a n = A038108 (n + 2)

theorem P12779941796718339072.correct : P12779941796718339072.Spec := by
  intro n
  simp only [A038108, Nat.add_sub_cancel]

end A038108

/-! ## A038108.P4198214560867877438

`A000720(n+1)+∑[A140114(n+1)]`
-/

namespace A038108.P4198214560867877438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038108.P4198214560867877438

namespace A038108

/-- `A000720(n+1)+∑[A140114(n+1)]` -/
def P4198214560867877438.Spec : Prop :=
  ∀ n, P4198214560867877438.a n = A038108 (n + 2)

end A038108

/-! ## A038108.P17698076887170898793

`∑[A140114(n+1)+A010051(n+1)]`
-/

namespace A038108.P17698076887170898793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140114 (n + 1) + A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038108.P17698076887170898793

namespace A038108

/-- `∑[A140114(n+1)+A010051(n+1)]` -/
def P17698076887170898793.Spec : Prop :=
  ∀ n, P17698076887170898793.a n = A038108 (n + 2)

end A038108

/-! ## A038108.P3938239977048515011

`A205726(n+2)-A010051(n+2)`
-/

namespace A038108.P3938239977048515011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205726 (n + 2) - A010051 (n + 2)

end

end A038108.P3938239977048515011

namespace A038108

/-- `A205726(n+2)-A010051(n+2)` -/
def P3938239977048515011.Spec : Prop :=
  ∀ n, P3938239977048515011.a n = A038108 (n + 2)

end A038108

/-! ## A038108.P16074141957466406727

`A205726(n+2)-A036987(A072680(n+2))`
-/

namespace A038108.P16074141957466406727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205726 (n + 2) - A036987 (A072680 (n + 2)).toNat

end

end A038108.P16074141957466406727

namespace A038108

/-- `A205726(n+2)-A036987(A072680(n+2))` -/
def P16074141957466406727.Spec : Prop :=
  ∀ n, P16074141957466406727.a n = A038108 (n + 2)

end A038108

/-! ## A038108.P3312713189505746993

`A140114(n+1)+A072000((n+1)²)`
-/

namespace A038108.P3312713189505746993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140114 (n + 1) + A072000 ((n + 1) ^ 2)

end

end A038108.P3312713189505746993

namespace A038108

/-- `A140114(n+1)+A072000((n+1)²)` -/
def P3312713189505746993.Spec : Prop :=
  ∀ n, P3312713189505746993.a n = A038108 (n + 2)

end A038108

/-! ## A038108.P4542516739120339132

`A140114(n+1)+record[A072000(A000463(n+1))]`
-/

namespace A038108.P4542516739120339132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A000463 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140114 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038108.P4542516739120339132

namespace A038108

/-- `A140114(n+1)+record[A072000(A000463(n+1))]` -/
def P4542516739120339132.Spec : Prop :=
  ∀ n, P4542516739120339132.a n = A038108 (n + 2)

end A038108

/-! ## A038108.P3847713364882967872

`A140114(n+1)+record[A072000(A123596(n+2))]`
-/

namespace A038108.P3847713364882967872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A123596 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140114 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038108.P3847713364882967872

namespace A038108

/-- `A140114(n+1)+record[A072000(A123596(n+2))]` -/
def P3847713364882967872.Spec : Prop :=
  ∀ n, P3847713364882967872.a n = A038108 (n + 2)

end A038108

/-! ## A038108.P6600174471466884144

`A072000((n+2)²-1)`
-/

namespace A038108.P6600174471466884144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 ((n + 2) ^ 2 - 1)

end

end A038108.P6600174471466884144

namespace A038108

/-- `A072000((n+2)²-1)` -/
def P6600174471466884144.Spec : Prop :=
  ∀ n, P6600174471466884144.a n = A038108 (n + 2)

end A038108

/-! ## A038108.P2668977318228682050

`record[A072000(A106230(n+1))]`
-/

namespace A038108.P2668977318228682050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A106230 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038108.P2668977318228682050

namespace A038108

/-- `record[A072000(A106230(n+1))]` -/
def P2668977318228682050.Spec : Prop :=
  ∀ n, P2668977318228682050.a n = A038108 (n + 2)

end A038108

/-! ## A038108.P3312062066229492332

`record[A072000(A120070(n+2))]`
-/

namespace A038108.P3312062066229492332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A120070 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038108.P3312062066229492332

namespace A038108

/-- `record[A072000(A120070(n+2))]` -/
def P3312062066229492332.Spec : Prop :=
  ∀ n, P3312062066229492332.a n = A038108 (n + 2)

end A038108

/-! ## A038108.P2064300230755521065

`record[A072000(A052938(n)*A065033(n))]`
-/

namespace A038108.P2064300230755521065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A052938 n * A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038108.P2064300230755521065

namespace A038108

/-- `record[A072000(A052938(n)*A065033(n))]` -/
def P2064300230755521065.Spec : Prop :=
  ∀ n, P2064300230755521065.a n = A038108 (n + 2)

end A038108

/-!
# A038109: Divisible exactly by the square of a prime.

The programs for A038109, the canonical program `A038109.P6956928196549594048` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038109 has offset 1).

The definition of A038109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038109.P16162064952721351486

`lt[1, A329376(n+1)]+1`
-/

namespace A038109.P16162064952721351486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329376 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A038109.P16162064952721351486

namespace A038109

/-- `lt[1, A329376(n+1)]+1` -/
def P16162064952721351486.Spec : Prop :=
  ∀ n, (P16162064952721351486.a n : ℤ) = A038109 (n + 1)

end A038109

/-! ## A038109.P6956928196549594048

`lt[and(1, A295879(n+1)), 1]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A038109

/-- `lt[and(1, A295879(n+1)), 1]+1` -/
def P6956928196549594048.Spec : Prop :=
  ∀ n, (P6956928196549594048.a n : ℤ) = A038109 (n + 1)

theorem P6956928196549594048.correct : P6956928196549594048.Spec := by
  intro n
  simp only [A038109, Nat.add_sub_cancel]

end A038109

/-! ## A038109.P3350907527320158058

`eq[0, ∏{e}[n, 2-#]]`
-/

namespace A038109.P3350907527320158058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (2 - (Nat.factorization (f3 n) p : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038109.P3350907527320158058

namespace A038109

/-- `eq[0, ∏{e}[n, 2-#]]` -/
def P3350907527320158058.Spec : Prop :=
  ∀ n, (P3350907527320158058.a n : ℤ) = A038109 (n + 1)

end A038109

/-! ## A038109.P8513599041304030650

`lt[∏{e}[n, (2-#)²], 1]`
-/

namespace A038109.P8513599041304030650
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (2 - (Nat.factorization (f2 n) p : ℤ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A038109.P8513599041304030650

namespace A038109

/-- `lt[∏{e}[n, (2-#)²], 1]` -/
def P8513599041304030650.Spec : Prop :=
  ∀ n, (P8513599041304030650.a n : ℤ) = A038109 (n + 1)

end A038109

/-! ## A038109.P12337403059836965885

`eq[0, A181819(n+1)%3]+1`
-/

namespace A038109.P12337403059836965885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181819 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A038109.P12337403059836965885

namespace A038109

/-- `eq[0, A181819(n+1)%3]+1` -/
def P12337403059836965885.Spec : Prop :=
  ∀ n, (P12337403059836965885.a n : ℤ) = A038109 (n + 1)

end A038109

/-! ## A038109.P16951920203351703540

`eq[3, gcd(3, A181819(n+2))]+2`
-/

namespace A038109.P16951920203351703540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A181819 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A038109.P16951920203351703540

namespace A038109

/-- `eq[3, gcd(3, A181819(n+2))]+2` -/
def P16951920203351703540.Spec : Prop :=
  ∀ n, (P16951920203351703540.a n : ℤ) = A038109 (n + 1)

end A038109

/-! ## A038109.P12095534585074137856

`eq[1, A051904(A000189(n+1))]+1`
-/

namespace A038109.P12095534585074137856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A000189 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A038109.P12095534585074137856

namespace A038109

/-- `eq[1, A051904(A000189(n+1))]+1` -/
def P12095534585074137856.Spec : Prop :=
  ∀ n, (P12095534585074137856.a n : ℤ) = A038109 (n + 1)

end A038109

/-!
# A038110: Numerator of frequency of integers with smallest divisor prime(n).

The programs for A038110, the canonical program `A038110.P461440204907353454` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038110 has offset 1).

The definition of A038110 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038110.P461440204907353454

`A005867(n)/A058250(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038110

/-- `A005867(n)/A058250(n)` -/
def P461440204907353454.Spec : Prop :=
  ∀ n, P461440204907353454.a n = (A038110 (n + 1) : ℚ)

end A038110

/-! ## A038110.P1307896517844577816

`A076359(A028815(n))`
-/

namespace A038110.P1307896517844577816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076359 (A028815 n).toNat

end

end A038110.P1307896517844577816

namespace A038110

/-- `A076359(A028815(n))` -/
def P1307896517844577816.Spec : Prop :=
  ∀ n, P1307896517844577816.a n = A038110 (n + 1)

end A038110

/-! ## A038110.P190215677812117080

`A076359(A006093(n+1))`
-/

namespace A038110.P190215677812117080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076359 (A006093 (n + 1)).toNat

end

end A038110.P190215677812117080

namespace A038110

/-- `A076359(A006093(n+1))` -/
def P190215677812117080.Spec : Prop :=
  ∀ n, P190215677812117080.a n = A038110 (n + 1)

end A038110

/-! ## A038110.P2331317057309244767

`A076359(A008578(n+1))`
-/

namespace A038110.P2331317057309244767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076359 (A008578 (n + 1)).toNat

end

end A038110.P2331317057309244767

namespace A038110

/-- `A076359(A008578(n+1))` -/
def P2331317057309244767.Spec : Prop :=
  ∀ n, P2331317057309244767.a n = A038110 (n + 1)

end A038110

/-! ## A038110.P5731007368454157168

`A076359(A015919(n+1))`
-/

namespace A038110.P5731007368454157168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076359 (A015919 (n + 1)).toNat

end

end A038110.P5731007368454157168

namespace A038110

/-- `A076359(A015919(n+1))` -/
def P5731007368454157168.Spec : Prop :=
  ∀ n, P5731007368454157168.a n = A038110 (n + 1)

end A038110

/-! ## A038110.P15526574704362120910

`A076359(A039915(n+1))`
-/

namespace A038110.P15526574704362120910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076359 (A039915 (n + 1)).toNat

end

end A038110.P15526574704362120910

namespace A038110

/-- `A076359(A039915(n+1))` -/
def P15526574704362120910.Spec : Prop :=
  ∀ n, P15526574704362120910.a n = A038110 (n + 1)

end A038110

/-! ## A038110.P17784350809689602720

`A076359(A065514(n+1))`
-/

namespace A038110.P17784350809689602720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076359 (A065514 (n + 1)).toNat

end

end A038110.P17784350809689602720

namespace A038110

/-- `A076359(A065514(n+1))` -/
def P17784350809689602720.Spec : Prop :=
  ∀ n, P17784350809689602720.a n = A038110 (n + 1)

end A038110

/-! ## A038110.P10611565855584811020

`A076359(A075643(n+1))`
-/

namespace A038110.P10611565855584811020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076359 (A075643 (n + 1)).toNat

end

end A038110.P10611565855584811020

namespace A038110

/-- `A076359(A075643(n+1))` -/
def P10611565855584811020.Spec : Prop :=
  ∀ n, P10611565855584811020.a n = A038110 (n + 1)

end A038110

/-! ## A038110.P16962707047806650732

`A076359(A112925(n+1))`
-/

namespace A038110.P16962707047806650732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076359 (A112925 (n + 1)).toNat

end

end A038110.P16962707047806650732

namespace A038110

/-- `A076359(A112925(n+1))` -/
def P16962707047806650732.Spec : Prop :=
  ∀ n, P16962707047806650732.a n = A038110 (n + 1)

end A038110

/-! ## A038110.P17869880339624487738

`A076359(A156037(n+1))`
-/

namespace A038110.P17869880339624487738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076359 (A156037 (n + 1)).toNat

end

end A038110.P17869880339624487738

namespace A038110

/-- `A076359(A156037(n+1))` -/
def P17869880339624487738.Spec : Prop :=
  ∀ n, P17869880339624487738.a n = A038110 (n + 1)

end A038110

/-!
# A038111: Denominator of density of integers with smallest prime factor prime(n).

The programs for A038111, the canonical program `A038111.P13609288034708732001` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038111 has offset 1).

The definition of A038111 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038111.P13609288034708732001

`A000040(n+1)*A060753(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038111

/-- `A000040(n+1)*A060753(n+1)` -/
def P13609288034708732001.Spec : Prop :=
  ∀ n, P13609288034708732001.a n = A038111 (n + 1)

theorem P13609288034708732001.correct : P13609288034708732001.Spec := by
  intro n
  simp only [A038111, Nat.add_sub_cancel]

end A038111

/-! ## A038111.P3565245316151607913

`p?[A014681(n)]*A060753(n+1)`
-/

namespace A038111.P3565245316151607913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A060753 (n + 1)

end

end A038111.P3565245316151607913

namespace A038111

/-- `p?[A014681(n)]*A060753(n+1)` -/
def P3565245316151607913.Spec : Prop :=
  ∀ n, P3565245316151607913.a n = A038111 (n + 1)

end A038111

/-! ## A038111.P11785356747213330546

`p?[A142150(n)]*A060753(n+1)`
-/

namespace A038111.P11785356747213330546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A060753 (n + 1)

end

end A038111.P11785356747213330546

namespace A038111

/-- `p?[A142150(n)]*A060753(n+1)` -/
def P11785356747213330546.Spec : Prop :=
  ∀ n, P11785356747213330546.a n = A038111 (n + 1)

end A038111

/-! ## A038111.P6423935612694389596

`p?[A209259(n)]*A060753(n+1)`
-/

namespace A038111.P6423935612694389596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A060753 (n + 1)

end

end A038111.P6423935612694389596

namespace A038111

/-- `p?[A209259(n)]*A060753(n+1)` -/
def P6423935612694389596.Spec : Prop :=
  ∀ n, P6423935612694389596.a n = A038111 (n + 1)

end A038111

/-! ## A038111.P10344673757126066325

`p?[A246425(n)]*A060753(n+1)`
-/

namespace A038111.P10344673757126066325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A060753 (n + 1)

end

end A038111.P10344673757126066325

namespace A038111

/-- `p?[A246425(n)]*A060753(n+1)` -/
def P10344673757126066325.Spec : Prop :=
  ∀ n, P10344673757126066325.a n = A038111 (n + 1)

end A038111

/-! ## A038111.P13854112546766790041

`A008578(n+2)*A060753(n+1)`
-/

namespace A038111.P13854112546766790041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A060753 (n + 1)

end

end A038111.P13854112546766790041

namespace A038111

/-- `A008578(n+2)*A060753(n+1)` -/
def P13854112546766790041.Spec : Prop :=
  ∀ n, P13854112546766790041.a n = A038111 (n + 1)

end A038111

/-! ## A038111.P18378600056683460561

`p?[A064413(n+1)]*A060753(n+1)`
-/

namespace A038111.P18378600056683460561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A060753 (n + 1)

end

end A038111.P18378600056683460561

namespace A038111

/-- `p?[A064413(n+1)]*A060753(n+1)` -/
def P18378600056683460561.Spec : Prop :=
  ∀ n, P18378600056683460561.a n = A038111 (n + 1)

end A038111

/-! ## A038111.P12958780362927403136

`(A006093(n+1)+1)*A060753(n+1)`
-/

namespace A038111.P12958780362927403136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A060753 (n + 1)

end

end A038111.P12958780362927403136

namespace A038111

/-- `(A006093(n+1)+1)*A060753(n+1)` -/
def P12958780362927403136.Spec : Prop :=
  ∀ n, P12958780362927403136.a n = A038111 (n + 1)

theorem P12958780362927403136.correct : P12958780362927403136.Spec := by
  intro n
  simp only [A038111, Nat.add_sub_cancel, A038111.P12958780362927403136.a, A038111.P13609288034708732001.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A060753, A060753.P10668017178475688467.a, A002110, A002110.P13704446489392701398.a, A005867, A005867.P647413364839099534.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038111

/-! ## A038111.P12783577708405472580

`A006530(A001749(n+1))*A060753(n+1)`
-/

namespace A038111.P12783577708405472580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001749 (n + 1)).toNat * A060753 (n + 1)

end

end A038111.P12783577708405472580

namespace A038111

/-- `A006530(A001749(n+1))*A060753(n+1)` -/
def P12783577708405472580.Spec : Prop :=
  ∀ n, P12783577708405472580.a n = A038111 (n + 1)

end A038111

/-! ## A038111.P7655088968085195358

`A000040(n+1)*A076358(A000040(n+1)-1)`
-/

namespace A038111.P7655088968085195358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A076358 (A000040 (n + 1) - 1).toNat

end

end A038111.P7655088968085195358

namespace A038111

/-- `A000040(n+1)*A076358(A000040(n+1)-1)` -/
def P7655088968085195358.Spec : Prop :=
  ∀ n, P7655088968085195358.a n = A038111 (n + 1)

end A038111

/-!
# A038112: a(n) = T(2n,n), where T(n,k) is in A037027.

The programs for A038112, there is no canonical definition to state claims against.
-/

/-! ## A038112.P10499008080187229724

`(n+1)*A001002(n)`
-/

namespace A038112.P10499008080187229724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001002 n

end

end A038112.P10499008080187229724

/-! ## A038112.P15561784455212657038

`A001002(n)*A002024(A000124(n))`
-/

namespace A038112.P15561784455212657038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001002 n * A002024 (A000124 n).toNat

end

end A038112.P15561784455212657038

/-! ## A038112.P13181532783435682898

`A001002(n)*A003602(A005408(n))`
-/

namespace A038112.P13181532783435682898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001002 n * A003602 (A005408 n).toNat

end

end A038112.P13181532783435682898

/-! ## A038112.P863796994415684301

`A001002(n)*A003056(A027379(n))`
-/

namespace A038112.P863796994415684301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001002 n * A003056 (A027379 n).toNat

end

end A038112.P863796994415684301

/-! ## A038112.P18278134818351274900

`A055836(n)-A213684(n+1)`
-/

namespace A038112.P18278134818351274900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055836 n - A213684 (n + 1)

end

end A038112.P18278134818351274900

/-! ## A038112.P7596707467301282439

`A037027(∑[4*n])`
-/

namespace A038112.P7596707467301282439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038112.P7596707467301282439

/-! ## A038112.P17891029648132387353

`A038137(∑[4*n])`
-/

namespace A038112.P17891029648132387353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038112.P17891029648132387353

/-! ## A038112.P7903802751700153527

`record[gcd(A037012(n), A037027(n))]`
-/

namespace A038112.P7903802751700153527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A037027 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038112.P7903802751700153527

/-! ## A038112.P15134175083718727148

`A155161(2*(n+1)²)`
-/

namespace A038112.P15134175083718727148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (2 * (n + 1) ^ 2)

end

end A038112.P15134175083718727148

/-!
# A038113: Lexicographically earliest strictly increasing base 4 autovarious sequence: a(n) = number of distinct a(k) mod 4^n (written in base 4).

The programs for A038113, there is no canonical definition to state claims against.
-/

/-! ## A038113.P16472451548280473170

`∩[A028840(n+1), A038114(n)]`
-/

namespace A038113.P16472451548280473170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038114 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038113.P16472451548280473170

/-! ## A038113.P17080836359418419616

`∩[A028840(n+1), A038115(n)]`
-/

namespace A038113.P17080836359418419616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038115 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038113.P17080836359418419616

/-! ## A038113.P15171816741132750356

`filter[A038114(n), A060584(#)]`
-/

namespace A038113.P15171816741132750356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A060584 (f1 j).toNat = 1) n)

end

end A038113.P15171816741132750356

/-! ## A038113.P10857872867328636384

`filter[A038115(n), A060584(#)]`
-/

namespace A038113.P10857872867328636384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A060584 (f1 j).toNat = 1) n)

end

end A038113.P10857872867328636384

/-! ## A038113.P4546872449985908652

`filter[A038114(n), A329682(#)]`
-/

namespace A038113.P4546872449985908652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329682 (f1 j).toNat = 1) n)

end

end A038113.P4546872449985908652

/-!
# A038114: Lexicographically earliest strictly increasing base 5 autovarious sequence: a(n) = number of distinct a(k) mod 5^n (written in base 5).

The programs for A038114, there is no canonical definition to state claims against.
-/

/-! ## A038114.P5448627958470061666

`filter[A038115(n), A085002(#)]`
-/

namespace A038114.P5448627958470061666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085002 (f1 j).toNat = 1) n)

end

end A038114.P5448627958470061666

/-! ## A038114.P16951126424572644556

`∩[A001961(n+1), A038115(n)]`
-/

namespace A038114.P16951126424572644556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038115 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038114.P16951126424572644556

/-! ## A038114.P7814960300068761231

`∩[A004841(n+1), A038115(n)]`
-/

namespace A038114.P7814960300068761231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038115 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038114.P7814960300068761231

/-! ## A038114.P17656024910297550249

`filter[A038115(n), A161996(#)]`
-/

namespace A038114.P17656024910297550249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A161996 (f1 j).toNat = 1) n)

end

end A038114.P17656024910297550249

/-! ## A038114.P5645605270312831410

`∩[A023783(n+1), A038115(n)]`
-/

namespace A038114.P5645605270312831410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038115 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038114.P5645605270312831410

/-!
# A038115: Lexicographically earliest strictly increasing base 6 autovarious sequence: a(n) = number of distinct a(k) mod 6^n (written in base 6).

The programs for A038115, there is no canonical definition to state claims against.
-/

/-! ## A038115.P17130668122039054689

`A038116(A038128(2*n)%A038120(n))`
-/

namespace A038115.P17130668122039054689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038116 (Int.tmod (A038128 (2 * n)) (A038120 n)).toNat

end

end A038115.P17130668122039054689

/-! ## A038115.P10113499528339935455

`filter[A037089(n), A130630(#)]`
-/

namespace A038115.P10113499528339935455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130630 (f1 j).toNat = 1) n)

end

end A038115.P10113499528339935455

/-! ## A038115.P1411324411192322068

`filter[A038116(n), A130630(#)]`
-/

namespace A038115.P1411324411192322068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130630 (f1 j).toNat = 1) n)

end

end A038115.P1411324411192322068

/-! ## A038115.P3567147911756083830

`filter[A038117(n), A130630(#)]`
-/

namespace A038115.P3567147911756083830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130630 (f1 j).toNat = 1) n)

end

end A038115.P3567147911756083830

/-! ## A038115.P11895939049468371679

`filter[A038118(n), A130630(#)]`
-/

namespace A038115.P11895939049468371679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130630 (f1 j).toNat = 1) n)

end

end A038115.P11895939049468371679

/-!
# A038116: Lexicographically earliest strictly increasing base 7 autovarious sequence: a(n) = number of distinct a(k) mod 7^n (written in base 7).

The programs for A038116, there is no canonical definition to state claims against.
-/

/-! ## A038116.P5520867424609461036

`∩[A038117(n), A258833(n)]`
-/

namespace A038116.P5520867424609461036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038117 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258833 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038116.P5520867424609461036

/-! ## A038116.P14394928736882441687

`A038118(A007094(n)%A038120(n))`
-/

namespace A038116.P14394928736882441687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038118 (Int.tmod (A007094 n) (A038120 n)).toNat

end

end A038116.P14394928736882441687

/-! ## A038116.P12461423323475353162

`A038117(A029804(n+1))`
-/

namespace A038116.P12461423323475353162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038117 (A029804 (n + 1)).toNat

end

end A038116.P12461423323475353162

/-! ## A038116.P15558483843634880857

`filter[A038117(n), A102609(#)]`
-/

namespace A038116.P15558483843634880857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A038116.P15558483843634880857

/-! ## A038116.P7864934351858096701

`filter[A038118(n), A102609(#)]`
-/

namespace A038116.P7864934351858096701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A038116.P7864934351858096701

/-!
# A038117: Lexicographically earliest strictly increasing base 8 autovarious sequence: a(n) = number of distinct a(k) mod 8^n (written in base 8).

The programs for A038117, there is no canonical definition to state claims against.
-/

/-! ## A038117.P10548655083348567913

`A038118(A043094(n))`
-/

namespace A038117.P10548655083348567913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038118 (A043094 n).toNat

end

end A038117.P10548655083348567913

/-! ## A038117.P8302747763279765180

`A038118(A023803(n+1))`
-/

namespace A038117.P8302747763279765180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038118 (A023803 (n + 1)).toNat

end

end A038117.P8302747763279765180

/-! ## A038117.P9056736909923656460

`∩[A037089(n), A037472(n)]`
-/

namespace A038117.P9056736909923656460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037089 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038117.P9056736909923656460

/-! ## A038117.P14524280422279106493

`∩[A037472(n), A038118(n)]`
-/

namespace A038117.P14524280422279106493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038118 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038117.P14524280422279106493

/-! ## A038117.P17531943186513940339

`∩[A039082(n+1), A037089(n)]`
-/

namespace A038117.P17531943186513940339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038117.P17531943186513940339

/-!
# A038118: Lexicographically earliest strictly increasing base 9 autovarious sequence: a(n) = number of distinct a(k) mod 9^n (written in base 9).

The programs for A038118, there is no canonical definition to state claims against.
-/

/-! ## A038118.P785856947416618163

`A037089(A023804(n+1))`
-/

namespace A038118.P785856947416618163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037089 (A023804 (n + 1)).toNat

end

end A038118.P785856947416618163

/-! ## A038118.P13811834636871341617

`A037089(A043095(n+1))`
-/

namespace A038118.P13811834636871341617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037089 (A043095 (n + 1)).toNat

end

end A038118.P13811834636871341617

/-! ## A038118.P16989428220608302879

`A037089(A342851(n+1))`
-/

namespace A038118.P16989428220608302879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037089 (A342851 (n + 1)).toNat

end

end A038118.P16989428220608302879

/-! ## A038118.P12168283580894943451

`A037089(comp[A037997(n+1)])`
-/

namespace A038118.P12168283580894943451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037997 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037089 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A038118.P12168283580894943451

/-! ## A038118.P18386685445860093221

`A037089(comp[A037085(n+1)+1])`
-/

namespace A038118.P18386685445860093221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037085 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037089 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A038118.P18386685445860093221

/-!
# A038119: Number of n-celled solid polyominoes (or free polycubes, allowing mirror-image identification).

The programs for A038119, there is no canonical definition to state claims against.
-/

/-! ## A038119.P621503947527935796

`A371397(n+1)+A007743(n+1)`
-/

namespace A038119.P621503947527935796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371397 (n + 1) + A007743 (n + 1)

end

end A038119.P621503947527935796

/-! ## A038119.P8783939922292640568

`A000162(n+1)-A371397(n+1)`
-/

namespace A038119.P8783939922292640568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000162 (n + 1) - A371397 (n + 1)

end

end A038119.P8783939922292640568

/-! ## A038119.P4865994565252272395

`(A007743(n+1)+A000162(n+1))/2`
-/

namespace A038119.P4865994565252272395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007743 (n + 1) + A000162 (n + 1) : ℚ) / 2

end

end A038119.P4865994565252272395

/-! ## A038119.P13461071448911869173

`A006759(n+1)+Δ[A173271(n)]-A371397(n+1)`
-/

namespace A038119.P13461071448911869173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006759 (n + 1) + (f1 (n + 1) - f1 n) - A371397 (n + 1)

end

end A038119.P13461071448911869173

/-! ## A038119.P14106883945132349090

`A006759(n+1)+A000105(n+1)-A371397(n+1)`
-/

namespace A038119.P14106883945132349090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006759 (n + 1) + A000105 (n + 1) - A371397 (n + 1)

end

end A038119.P14106883945132349090

/-!
# A038120: Number of distinct n-digit suffixes of base 6 squares not containing digit 0.

The programs for A038120, there is no canonical definition to state claims against.
-/

/-! ## A038120.P6335729898071398899

`∑[A138225(2^n)+A014963(n+2)-1]`
-/

namespace A038120.P6335729898071398899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138225 (2 ^ n) + (A014963 (n + 2) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038120.P6335729898071398899

/-! ## A038120.P18074417132406654134

`A349058(n)+A096288(A056572(n))`
-/

namespace A038120.P18074417132406654134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349058 n + A096288 (A056572 n).toNat

end

end A038120.P18074417132406654134

/-!
# A038121: E.g.f.: (1 + 15*x + (45/2)*x^2 + (5/2)*x^3)/(1 - 2*x)^(13/2).

The programs for A038121, the canonical program `A038121.P17072372122805013730` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038121 has offset 0).

The definition of A038121 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038121.P17072372122805013730

`(2*n+6)!/(720*n!*2^n)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038121

/-- `(2*n+6)!/(720*n!*2^n)` -/
def P17072372122805013730.Spec : Prop :=
  ∀ n, P17072372122805013730.a n = (A038121 n : ℚ)

end A038121

/-! ## A038121.P11971786753510927101

`A100861((n+2)*(n+6))`
-/

namespace A038121.P11971786753510927101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100861 ((n + 2) * (n + 6))

end

end A038121.P11971786753510927101

namespace A038121

/-- `A100861((n+2)*(n+6))` -/
def P11971786753510927101.Spec : Prop :=
  ∀ n, P11971786753510927101.a n = A038121 n

end A038121

/-! ## A038121.P6282315998883895288

`∑[∑[n+1]]*A051579(n)`
-/

namespace A038121.P6282315998883895288
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A051579 n

end

end A038121.P6282315998883895288

namespace A038121

/-- `∑[∑[n+1]]*A051579(n)` -/
def P6282315998883895288.Spec : Prop :=
  ∀ n, P6282315998883895288.a n = A038121 n

end A038121

/-! ## A038121.P8215724994770688406

`record[A144299(A059993(n))]`
-/

namespace A038121.P8215724994770688406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144299 (A059993 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038121.P8215724994770688406

namespace A038121

/-- `record[A144299(A059993(n))]` -/
def P8215724994770688406.Spec : Prop :=
  ∀ n, P8215724994770688406.a n = A038121 n

end A038121

/-! ## A038121.P5815006444810583923

`A144299(A059993(n+2))`
-/

namespace A038121.P5815006444810583923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144299 (A059993 (n + 2)).toNat

end

end A038121.P5815006444810583923

namespace A038121

/-- `A144299(A059993(n+2))` -/
def P5815006444810583923.Spec : Prop :=
  ∀ n, P5815006444810583923.a n = A038121 n

end A038121

/-! ## A038121.P10574572432953128411

`A176230(A167614(n+2))`
-/

namespace A038121.P10574572432953128411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176230 (A167614 (n + 2)).toNat

end

end A038121.P10574572432953128411

namespace A038121

/-- `A176230(A167614(n+2))` -/
def P10574572432953128411.Spec : Prop :=
  ∀ n, P10574572432953128411.a n = A038121 n

end A038121

/-! ## A038121.P5747682289496192293

`A144299(A014105(n+3)+n)`
-/

namespace A038121.P5747682289496192293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144299 (A014105 (n + 3) + (n : ℤ)).toNat

end

end A038121.P5747682289496192293

namespace A038121

/-- `A144299(A014105(n+3)+n)` -/
def P5747682289496192293.Spec : Prop :=
  ∀ n, P5747682289496192293.a n = A038121 n

end A038121

/-! ## A038121.P9086903872813002555

`A049403(A014105(n+3)-n)`
-/

namespace A038121.P9086903872813002555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049403 (A014105 (n + 3) - (n : ℤ)).toNat

end

end A038121.P9086903872813002555

namespace A038121

/-- `A049403(A014105(n+3)-n)` -/
def P9086903872813002555.Spec : Prop :=
  ∀ n, P9086903872813002555.a n = A038121 n

end A038121

/-! ## A038121.P16916876073361139400

`A051579(n)/A000165(n)*A051580(n)`
-/

namespace A038121.P16916876073361139400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051579 n : ℚ) / (A000165 n : ℚ) * (A051580 n : ℚ)

end

end A038121.P16916876073361139400

namespace A038121

/-- `A051579(n)/A000165(n)*A051580(n)` -/
def P16916876073361139400.Spec : Prop :=
  ∀ n, P16916876073361139400.a n = (A038121 n : ℚ)

end A038121

/-!
# A038123: Beatty sequence for Feigenbaum's constant.

The programs for A038123, there is no canonical definition to state claims against.
-/

/-! ## A038123.P15845878922546407387

`∑[n²%3+4]`
-/

namespace A038123.P15845878922546407387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3 + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038123.P15845878922546407387

/-! ## A038123.P11643235324028122721

`∑[dr(n^6+4)]`
-/

namespace A038123.P11643235324028122721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n ^ 6 + 4 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038123.P11643235324028122721

/-! ## A038123.P17923235045829258137

`∑[5-char[3*n]]`
-/

namespace A038123.P17923235045829258137
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038123.P17923235045829258137

/-! ## A038123.P920635013668214262

`∑[11-gcd(3, n)]/2`
-/

namespace A038123.P920635013668214262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 - (Nat.gcd 3 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A038123.P920635013668214262

/-! ## A038123.P7972842365196703263

`a(n-3)+14` with `a(0)=4, a(1)=9, a(2)=14`
-/

namespace A038123.P7972842365196703263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 9, 14] fun n a =>
  a (n - 3) + 14

end

end A038123.P7972842365196703263

/-! ## A038123.P9771358176372475135

`floor(3*(n+1)*tan(1))`
-/

namespace A038123.P9771358176372475135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((n + 1 : ℝ) * Real.tan (1 : ℝ))⌋

end

end A038123.P9771358176372475135

/-! ## A038123.P12003064186238237375

`floor(3*(n+1)/cot(1))`
-/

namespace A038123.P12003064186238237375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((n + 1 : ℝ) / Real.cot (1 : ℝ))⌋

end

end A038123.P12003064186238237375

/-! ## A038123.P9952131078705141367

`ogf((4+5x+5x^2)/(1-x-x^3+x^4))`
-/

namespace A038123.P9952131078705141367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 5, 5] [1, -1, 0, -1, 1] n

end

end A038123.P9952131078705141367

/-! ## A038123.P17383285894862229661

`5-(char[3*n]-a(n-1))` with `a(0)=4`
-/

namespace A038123.P17383285894862229661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  5 - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1))

end

end A038123.P17383285894862229661

/-! ## A038123.P626173812678513804

`A047349(2*n+3)`
-/

namespace A038123.P626173812678513804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047349 (2 * n + 3)

end

end A038123.P626173812678513804

/-!
# A038124: Beatty sequence for Brun's constant.

The programs for A038124, there is no canonical definition to state claims against.
-/

/-! ## A038124.P824033019571063254

`floor(97*(n+1)/51)`
-/

namespace A038124.P824033019571063254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(97 * (n + 1) : ℚ) / 51⌋

end

end A038124.P824033019571063254

/-! ## A038124.P6000987516848528365

`ceil((2*n+1)*atan(7/5))`
-/

namespace A038124.P6000987516848528365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) * Real.arctan ((7 : ℚ) / 5 : ℝ)⌉

end

end A038124.P6000987516848528365

/-! ## A038124.P8072247562849183033

`ceil((2*n+1)*acot(5/7))`
-/

namespace A038124.P8072247562849183033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) * SequenceMachineLib.acot ((5 : ℚ) / 7 : ℝ)⌉

end

end A038124.P8072247562849183033

/-! ## A038124.P5738611339922877182

`ceil((n+1)/sin(atan(ϕ-1)))-1`
-/

namespace A038124.P5738611339922877182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.sin (Real.arctan (Real.goldenRatio - 1))⌉ - 1

end

end A038124.P5738611339922877182

/-! ## A038124.P8214504663728413074

`ceil((n+1)*log2(log(42))-gcd(n, n+1))`
-/

namespace A038124.P8214504663728413074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.logb 2 (Real.log (42 : ℝ)) - (Nat.gcd n (n + 1) : ℝ)⌉

end

end A038124.P8214504663728413074

/-! ## A038124.P13632334646984444182

`A172273(n+1)`
-/

namespace A038124.P13632334646984444182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172273 (n + 1)

end

end A038124.P13632334646984444182

/-! ## A038124.P5868972616304024992

`∑[abs(Δ[A172273(n)])]`
-/

namespace A038124.P5868972616304024992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172273 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038124.P5868972616304024992

/-! ## A038124.P18360567045263147450

`record[A172273(abs(1-n))]`
-/

namespace A038124.P18360567045263147450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172273 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038124.P18360567045263147450

/-! ## A038124.P10475761800249066201

`∑[A000005(Δ[A172273(n)])]`
-/

namespace A038124.P10475761800249066201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172273 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038124.P10475761800249066201

/-! ## A038124.P11500850808665805755

`∑[A020639(Δ[A172273(n)])]`
-/

namespace A038124.P11500850808665805755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172273 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038124.P11500850808665805755

/-!
# A038125: a(n) = Sum_{k=0..n} (k-n)^k.

The programs for A038125, there is no canonical definition to state claims against.
-/

/-! ## A038125.P17209561736007569600

`1-A349852(log2(A011782(n)))`
-/

namespace A038125.P17209561736007569600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A349852 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A038125.P17209561736007569600

/-! ## A038125.P11628099240824158378

`1-A349852(A028310(n)-1)`
-/

namespace A038125.P11628099240824158378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A349852 (A028310 n - 1).toNat

end

end A038125.P11628099240824158378

/-! ## A038125.P6907744086342957756

`1-A349852(A004273(n)-n)`
-/

namespace A038125.P6907744086342957756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A349852 (A004273 n - (n : ℤ)).toNat

end

end A038125.P6907744086342957756

/-! ## A038125.P17610564493213396338

`1-A349852((n-1)%A000041(n))`
-/

namespace A038125.P17610564493213396338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A349852 (Int.tmod ((n : ℤ) - 1) (A000041 n)).toNat

end

end A038125.P17610564493213396338

/-! ## A038125.P1244123509246076213

`1-A349852(A004526(A004273(n)))`
-/

namespace A038125.P1244123509246076213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A349852 (A004526 (A004273 n).toNat).toNat

end

end A038125.P1244123509246076213

/-!
# A038126: a(n) = floor( sqrt(2*Pi)*n ) (a Beatty sequence).

The programs for A038126, the canonical program `A038126.P5925659011616701297` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038126 has offset 0).

The definition of A038126 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(2*π)*n)` (program `A038126.P5925659011616701297`, by `A038126.P5925659011616701297.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A038126.P5925659011616701297

`floor(sqrt(2*π)*n)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038126

/-- `floor(sqrt(2*π)*n)` -/
def P5925659011616701297.Spec : Prop :=
  ∀ n, P5925659011616701297.a n = A038126 n

theorem P5925659011616701297.correct : P5925659011616701297.Spec := by
  intro n
  simp only [A038126]

end A038126

/-! ## A038126.P10027330721698323138

`ceil(log2(A206119(2*n+1)))`
-/

namespace A038126.P10027330721698323138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A206119 (2 * n + 1) : ℝ)⌉

end

end A038126.P10027330721698323138

namespace A038126

/-- `ceil(log2(A206119(2*n+1)))` -/
def P10027330721698323138.Spec : Prop :=
  ∀ n, P10027330721698323138.a n = A038126 n

end A038126

/-! ## A038126.P13625700731435697991

`A104135(A253909(n))%(n+1)²`
-/

namespace A038126.P13625700731435697991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104135 (A253909 n).toNat) ((n + 1) ^ 2 : ℤ)

end

end A038126.P13625700731435697991

namespace A038126

/-- `A104135(A253909(n))%(n+1)²` -/
def P13625700731435697991.Spec : Prop :=
  ∀ n, P13625700731435697991.a n = A038126 n

end A038126

/-! ## A038126.P6861285971941924987

`A104135(A253909(n))-A000038(n)`
-/

namespace A038126.P6861285971941924987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104135 (A253909 n).toNat - A000038 n

end

end A038126.P6861285971941924987

namespace A038126

/-- `A104135(A253909(n))-A000038(n)` -/
def P6861285971941924987.Spec : Prop :=
  ∀ n, P6861285971941924987.a n = A038126 n

end A038126

/-! ## A038126.P16609516791164610648

`ceil(n/A000041(n))*A104135(A253909(n))`
-/

namespace A038126.P16609516791164610648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A000041 n : ℚ)⌉ * A104135 (A253909 n).toNat

end

end A038126.P16609516791164610648

namespace A038126

/-- `ceil(n/A000041(n))*A104135(A253909(n))` -/
def P16609516791164610648.Spec : Prop :=
  ∀ n, P16609516791164610648.a n = A038126 n

end A038126

/-! ## A038126.P12150597311556732367

`A000040(n+1)%2*A104135(A253909(n))`
-/

namespace A038126.P12150597311556732367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A104135 (A253909 n).toNat

end

end A038126.P12150597311556732367

namespace A038126

/-- `A000040(n+1)%2*A104135(A253909(n))` -/
def P12150597311556732367.Spec : Prop :=
  ∀ n, P12150597311556732367.a n = A038126 n

end A038126

/-! ## A038126.P13692771220622620574

`2*n/A004277(n)*A104135(A253909(n))`
-/

namespace A038126.P13692771220622620574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℚ) / (A004277 n : ℚ)) * (A104135 (A253909 n).toNat : ℚ)

end

end A038126.P13692771220622620574

namespace A038126

/-- `2*n/A004277(n)*A104135(A253909(n))` -/
def P13692771220622620574.Spec : Prop :=
  ∀ n, P13692771220622620574.a n = (A038126 n : ℚ)

end A038126

/-! ## A038126.P15918648019789657111

`A001222(A008578(n+1))*A104135(A253909(n))`
-/

namespace A038126.P15918648019789657111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 1)).toNat * A104135 (A253909 n).toNat

end

end A038126.P15918648019789657111

namespace A038126

/-- `A001222(A008578(n+1))*A104135(A253909(n))` -/
def P15918648019789657111.Spec : Prop :=
  ∀ n, P15918648019789657111.a n = A038126 n

end A038126

/-! ## A038126.P12998972039830195700

`A046079(A000040(n+1))*A104135(A253909(n))`
-/

namespace A038126.P12998972039830195700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (A000040 (n + 1)).toNat * A104135 (A253909 n).toNat

end

end A038126.P12998972039830195700

namespace A038126

/-- `A046079(A000040(n+1))*A104135(A253909(n))` -/
def P12998972039830195700.Spec : Prop :=
  ∀ n, P12998972039830195700.a n = A038126 n

end A038126

/-! ## A038126.P16895246759197876434

`A002265(A112395(A198194(n+1))+A008592(n))`
-/

namespace A038126.P16895246759197876434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A112395 (A198194 (n + 1)).toNat + A008592 n).toNat

end

end A038126.P16895246759197876434

namespace A038126

/-- `A002265(A112395(A198194(n+1))+A008592(n))` -/
def P16895246759197876434.Spec : Prop :=
  ∀ n, P16895246759197876434.a n = A038126 n

end A038126

/-!
# A038127: A Beatty sequence: a(n) = floor(n*2^sqrt(2)).

The programs for A038127, the canonical program `A038127.P10985957264864675778` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038127 has offset 0).

The definition of A038127 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*2^sqrt(2))` (program `A038127.P10985957264864675778`, by `A038127.P10985957264864675778.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A038127.P10985957264864675778

`floor(n*2^sqrt(2))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038127

/-- `floor(n*2^sqrt(2))` -/
def P10985957264864675778.Spec : Prop :=
  ∀ n, P10985957264864675778.a n = A038127 n

theorem P10985957264864675778.correct : P10985957264864675778.Spec := by
  intro n
  simp only [A038127]

end A038127

/-! ## A038127.P16748112178866712860

`ceil(n*2^sqrt(2))+ceil(acot(n))-2`
-/

namespace A038127.P16748112178866712860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * (2 : ℝ) ^ (Real.sqrt (2 : ℝ))⌉ + (⌈SequenceMachineLib.acot (n : ℝ)⌉ - 2)

end

end A038127.P16748112178866712860

namespace A038127

/-- `ceil(n*2^sqrt(2))+ceil(acot(n))-2` -/
def P16748112178866712860.Spec : Prop :=
  ∀ n, P16748112178866712860.a n = A038127 n

end A038127

/-! ## A038127.P2680503495681603419

`ceil(n*2^sqrt(2))-(2-ceil(acot(n)))`
-/

namespace A038127.P2680503495681603419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * (2 : ℝ) ^ (Real.sqrt (2 : ℝ))⌉ - (2 - ⌈SequenceMachineLib.acot (n : ℝ)⌉)

end

end A038127.P2680503495681603419

namespace A038127

/-- `ceil(n*2^sqrt(2))-(2-ceil(acot(n)))` -/
def P2680503495681603419.Spec : Prop :=
  ∀ n, P2680503495681603419.a n = A038127 n

end A038127

/-! ## A038127.P6036730182553862969

`ceil(n*2^sqrt(2))-char[A092486(n)]`
-/

namespace A038127.P6036730182553862969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * (2 : ℝ) ^ (Real.sqrt (2 : ℝ))⌉ - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A038127.P6036730182553862969

namespace A038127

/-- `ceil(n*2^sqrt(2))-char[A092486(n)]` -/
def P6036730182553862969.Spec : Prop :=
  ∀ n, P6036730182553862969.a n = A038127 n

end A038127

/-! ## A038127.P7860755991849316503

`comp[A064724(n+1)]`
-/

namespace A038127.P7860755991849316503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A038127.P7860755991849316503

namespace A038127

/-- `comp[A064724(n+1)]` -/
def P7860755991849316503.Spec : Prop :=
  ∀ n, (P7860755991849316503.a n : ℤ) = A038127 n

end A038127

/-! ## A038127.P952290331153470617

`ceil(n*2^sqrt(2))-A001221(A046644(n+1))`
-/

namespace A038127.P952290331153470617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * (2 : ℝ) ^ (Real.sqrt (2 : ℝ))⌉ - A001221 (A046644 (n + 1)).toNat

end

end A038127.P952290331153470617

namespace A038127

/-- `ceil(n*2^sqrt(2))-A001221(A046644(n+1))` -/
def P952290331153470617.Spec : Prop :=
  ∀ n, P952290331153470617.a n = A038127 n

end A038127

/-! ## A038127.P9252053721274159001

`A107750(2*(n+1))-A337686(A114269(2*n+3))`
-/

namespace A038127.P9252053721274159001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (2 * (n + 1)) - A337686 (A114269 (2 * n + 3)).toNat

end

end A038127.P9252053721274159001

namespace A038127

/-- `A107750(2*(n+1))-A337686(A114269(2*n+3))` -/
def P9252053721274159001.Spec : Prop :=
  ∀ n, P9252053721274159001.a n = A038127 n

end A038127

/-! ## A038127.P2539026332367066721

`eq[A047754(n+1), A165211(n)]`
-/

namespace A038127.P2539026332367066721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165211 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038127.P2539026332367066721

namespace A038127

/-- `eq[A047754(n+1), A165211(n)]` -/
def P2539026332367066721.Spec : Prop :=
  ∀ n, (P2539026332367066721.a n : ℤ) = A038127 n

end A038127

/-! ## A038127.P14312883405961500872

`A004772(2*n+1)+A097331(2*n)-1`
-/

namespace A038127.P14312883405961500872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004772 (2 * n + 1) + (A097331 (2 * n) - 1)

end

end A038127.P14312883405961500872

namespace A038127

/-- `A004772(2*n+1)+A097331(2*n)-1` -/
def P14312883405961500872.Spec : Prop :=
  ∀ n, P14312883405961500872.a n = A038127 n

end A038127

/-! ## A038127.P3735680953023755587

`val(A081294(n), 8)+2*n`
-/

namespace A038127.P3735680953023755587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A081294 n).toNat 8 + 2 * n

end

end A038127.P3735680953023755587

namespace A038127

/-- `val(A081294(n), 8)+2*n` -/
def P3735680953023755587.Spec : Prop :=
  ∀ n, (P3735680953023755587.a n : ℤ) = A038127 n

end A038127

/-! ## A038127.P9213597664460849624

`record[C(comp[4*n], A287197(n+1))]`
-/

namespace A038127.P9213597664460849624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) (A287197 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038127.P9213597664460849624

namespace A038127

/-- `record[C(comp[4*n], A287197(n+1))]` -/
def P9213597664460849624.Spec : Prop :=
  ∀ n, (P9213597664460849624.a n : ℤ) = A038127 n

end A038127

/-! ## A038127.P9964291453910102255

`A191727(∑[n+1])+n-1`
-/

namespace A038127.P9964291453910102255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191727 (∑ j ∈ Finset.range (n + 1), f1 j) + ((n : ℤ) - 1)

end

end A038127.P9964291453910102255

namespace A038127

/-- `A191727(∑[n+1])+n-1` -/
def P9964291453910102255.Spec : Prop :=
  ∀ n, P9964291453910102255.a n = A038127 n

end A038127

/-!
# A038128: Beatty sequence for Euler's constant (A001620).

The programs for A038128, the canonical program `A038128.P9008543754766549743` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038128 has offset 0).

The definition of A038128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038128.P9008543754766549743

`floor(n*γ)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038128

/-- `floor(n*γ)` -/
def P9008543754766549743.Spec : Prop :=
  ∀ n, P9008543754766549743.a n = A038128 n

theorem P9008543754766549743.correct : P9008543754766549743.Spec := by
  intro n
  simp only [A038128]

end A038128

/-! ## A038128.P4662838072572721596

`ceil(n*(γ+1))%(n+1)`
-/

namespace A038128.P4662838072572721596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n : ℝ) * (Real.eulerMascheroniConstant + 1)⌉ (n + 1 : ℤ)

end

end A038128.P4662838072572721596

namespace A038128

/-- `ceil(n*(γ+1))%(n+1)` -/
def P4662838072572721596.Spec : Prop :=
  ∀ n, P4662838072572721596.a n = A038128 n

end A038128

/-! ## A038128.P2021835824828570760

`∑[char[A081223(n+1)]]`
-/

namespace A038128.P2021835824828570760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081223 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038128.P2021835824828570760

namespace A038128

/-- `∑[char[A081223(n+1)]]` -/
def P2021835824828570760.Spec : Prop :=
  ∀ n, (P2021835824828570760.a n : ℤ) = A038128 n

end A038128

/-! ## A038128.P3854465311283513014

`comp[A059556(n+1)]-n`
-/

namespace A038128.P3854465311283513014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059556 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A038128.P3854465311283513014

namespace A038128

/-- `comp[A059556(n+1)]-n` -/
def P3854465311283513014.Spec : Prop :=
  ∀ n, P3854465311283513014.a n = A038128 n

end A038128

/-! ## A038128.P8684258989547344950

`ceil(γ*n)-n/A028310(n)`
-/

namespace A038128.P8684258989547344950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈Real.eulerMascheroniConstant * (n : ℝ)⌉ : ℚ) - (n : ℚ) / (A028310 n : ℚ)

end

end A038128.P8684258989547344950

namespace A038128

/-- `ceil(γ*n)-n/A028310(n)` -/
def P8684258989547344950.Spec : Prop :=
  ∀ n, P8684258989547344950.a n = (A038128 n : ℚ)

end A038128

/-! ## A038128.P11216357906948226295

`ceil(γ*n-ceil(n/A164770(n+1)))`
-/

namespace A038128.P11216357906948226295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.eulerMascheroniConstant * (n : ℝ) - (⌈(n : ℚ) / (A164770 (n + 1) : ℚ)⌉ : ℝ)⌉

end

end A038128.P11216357906948226295

namespace A038128

/-- `ceil(γ*n-ceil(n/A164770(n+1)))` -/
def P11216357906948226295.Spec : Prop :=
  ∀ n, P11216357906948226295.a n = A038128 n

end A038128

/-! ## A038128.P15884006357300436760

`A085141(A082643(n))`
-/

namespace A038128.P15884006357300436760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (A082643 n).toNat

end

end A038128.P15884006357300436760

namespace A038128

/-- `A085141(A082643(n))` -/
def P15884006357300436760.Spec : Prop :=
  ∀ n, P15884006357300436760.a n = A038128 n

end A038128

/-! ## A038128.P8027473227910647172

`A268173(A147623(n))`
-/

namespace A038128.P8027473227910647172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268173 (A147623 n).toNat

end

end A038128.P8027473227910647172

namespace A038128

/-- `A268173(A147623(n))` -/
def P8027473227910647172.Spec : Prop :=
  ∀ n, P8027473227910647172.a n = A038128 n

end A038128

/-!
# A038129: Beatty sequence for cube root of 2.

The programs for A038129, the canonical program `A038129.P8954428659597837511` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038129 has offset 0).

The definition of A038129 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038129.P8954428659597837511

`floor(n*2^(1/3))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038129

/-- `floor(n*2^(1/3))` -/
def P8954428659597837511.Spec : Prop :=
  ∀ n, P8954428659597837511.a n = A038129 n

theorem P8954428659597837511.correct : P8954428659597837511.Spec := by
  intro n
  simp only [A038129]

end A038129

/-! ## A038129.P4272725281591664580

`∑[A081117(n)]-A081117(n)`
-/

namespace A038129.P4272725281591664580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A081117 n

end

end A038129.P4272725281591664580

namespace A038129

/-- `∑[A081117(n)]-A081117(n)` -/
def P4272725281591664580.Spec : Prop :=
  ∀ n, P4272725281591664580.a n = A038129 n

end A038129

/-! ## A038129.P14286810158614570461

`record[A182774(n+1)-A015906(n)]`
-/

namespace A038129.P14286810158614570461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182774 (n + 1) - A015906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038129.P14286810158614570461

namespace A038129

/-- `record[A182774(n+1)-A015906(n)]` -/
def P14286810158614570461.Spec : Prop :=
  ∀ n, P14286810158614570461.a n = A038129 n

end A038129

/-! ## A038129.P8005121945728527488

`A182774(A004277(n))-A004277(n)`
-/

namespace A038129.P8005121945728527488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182774 (A004277 n).toNat - A004277 n

end

end A038129.P8005121945728527488

namespace A038129

/-- `A182774(A004277(n))-A004277(n)` -/
def P8005121945728527488.Spec : Prop :=
  ∀ n, P8005121945728527488.a n = A038129 n

end A038129

/-!
# A038130: Beatty sequence for 2*Pi.

The programs for A038130, the canonical program `A038130.P2984912771872779364` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038130 has offset 0).

The definition of A038130 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038130.P2984912771872779364

`floor(2*π*n)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038130

/-- `floor(2*π*n)` -/
def P2984912771872779364.Spec : Prop :=
  ∀ n, P2984912771872779364.a n = A038130 n

theorem P2984912771872779364.correct : P2984912771872779364.Spec := by
  intro n
  simp only [A038130]

end A038130

/-! ## A038130.P7899254834424598960

`A004082(n+1)-1`
-/

namespace A038130.P7899254834424598960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004082 (n + 1) - 1

end

end A038130.P7899254834424598960

namespace A038130

/-- `A004082(n+1)-1` -/
def P7899254834424598960.Spec : Prop :=
  ∀ n, P7899254834424598960.a n = A038130 n

theorem P7899254834424598960.correct : P7899254834424598960.Spec := by
  intro n
  simp only [A038130, Nat.add_sub_cancel, A038130.P7899254834424598960.a, A038130.P2984912771872779364.a, A004082, A004082.P11339627534885608868.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038130

/-! ## A038130.P5406658544096044233

`comp[ceil(sin(n+1)+n)]`
-/

namespace A038130.P5406658544096044233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n + 1 : ℝ) + (n : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A038130.P5406658544096044233

namespace A038130

/-- `comp[ceil(sin(n+1)+n)]` -/
def P5406658544096044233.Spec : Prop :=
  ∀ n, (P5406658544096044233.a n : ℤ) = A038130 n

end A038130

/-! ## A038130.P3284924610681590107

`record[floor(n*acot(n%4))]`
-/

namespace A038130.P3284924610681590107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * SequenceMachineLib.acot ((n % 4 : ℕ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038130.P3284924610681590107

namespace A038130

/-- `record[floor(n*acot(n%4))]` -/
def P3284924610681590107.Spec : Prop :=
  ∀ n, P3284924610681590107.a n = A038130 n

end A038130

/-! ## A038130.P5292823017189219942

`record[floor(n*acot(and(3, n)))]`
-/

namespace A038130.P5292823017189219942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * SequenceMachineLib.acot (Nat.land 3 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038130.P5292823017189219942

namespace A038130

/-- `record[floor(n*acot(and(3, n)))]` -/
def P5292823017189219942.Spec : Prop :=
  ∀ n, P5292823017189219942.a n = A038130 n

end A038130

/-! ## A038130.P604176467900111202

`ceil(4*n*atan(4*n))`
-/

namespace A038130.P604176467900111202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 * n : ℝ) * Real.arctan (4 * n : ℝ)⌉

end

end A038130.P604176467900111202

namespace A038130

/-- `ceil(4*n*atan(4*n))` -/
def P604176467900111202.Spec : Prop :=
  ∀ n, P604176467900111202.a n = A038130 n

end A038130

/-! ## A038130.P13073868038878090039

`comp[floor(sin(n+1)+n+1)]`
-/

namespace A038130.P13073868038878090039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (n + 1 : ℝ) + (n + 1 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A038130.P13073868038878090039

namespace A038130

/-- `comp[floor(sin(n+1)+n+1)]` -/
def P13073868038878090039.Spec : Prop :=
  ∀ n, (P13073868038878090039.a n : ℤ) = A038130 n

end A038130

/-! ## A038130.P5655384760153895722

`A022853(n)+A022844(n)`
-/

namespace A038130.P5655384760153895722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 n + A022844 n

end

end A038130.P5655384760153895722

namespace A038130

/-- `A022853(n)+A022844(n)` -/
def P5655384760153895722.Spec : Prop :=
  ∀ n, P5655384760153895722.a n = A038130 n

end A038130

/-! ## A038130.P15927845022511254109

`∑[A276861(n+1)]-A276861(n+1)`
-/

namespace A038130.P15927845022511254109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A276861 (n + 1)

end

end A038130.P15927845022511254109

namespace A038130

/-- `∑[A276861(n+1)]-A276861(n+1)` -/
def P15927845022511254109.Spec : Prop :=
  ∀ n, P15927845022511254109.a n = A038130 n

end A038130

/-! ## A038130.P3519756275451034271

`lt[ceil(sin(n)), sin(n+1)]`
-/

namespace A038130.P3519756275451034271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ)⌉

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A038130.P3519756275451034271

namespace A038130

/-- `lt[ceil(sin(n)), sin(n+1)]` -/
def P3519756275451034271.Spec : Prop :=
  ∀ n, (P3519756275451034271.a n : ℤ) = A038130 n

end A038130

/-! ## A038130.P14681155914547924075

`A022844(2*n)`
-/

namespace A038130.P14681155914547924075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (2 * n)

end

end A038130.P14681155914547924075

namespace A038130

/-- `A022844(2*n)` -/
def P14681155914547924075.Spec : Prop :=
  ∀ n, P14681155914547924075.a n = A038130 n

end A038130

/-! ## A038130.P15542392638043204659

`A004084(Δ[n²])-1`
-/

namespace A038130.P15542392638043204659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A038130.P15542392638043204659

namespace A038130

/-- `A004084(Δ[n²])-1` -/
def P15542392638043204659.Spec : Prop :=
  ∀ n, P15542392638043204659.a n = A038130 n

end A038130

/-! ## A038130.P8330836115568788734

`A063459(2*n)+2*n`
-/

namespace A038130.P8330836115568788734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063459 (2 * n) + (2 * n : ℤ)

end

end A038130.P8330836115568788734

namespace A038130

/-- `A063459(2*n)+2*n` -/
def P8330836115568788734.Spec : Prop :=
  ∀ n, P8330836115568788734.a n = A038130 n

theorem P8330836115568788734.correct : P8330836115568788734.Spec := by
  intro n
  simp only [A038130, Nat.add_sub_cancel, A038130.P8330836115568788734.a, A038130.P2984912771872779364.a, A063459, A063459.P17423234819915296512.a, A022844, A022844.P11976428228251050705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038130

/-! ## A038130.P12195957833717679358

`A121381(2*n)+A057428(n)`
-/

namespace A038130.P12195957833717679358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121381 (2 * n) + A057428 n

end

end A038130.P12195957833717679358

namespace A038130

/-- `A121381(2*n)+A057428(n)` -/
def P12195957833717679358.Spec : Prop :=
  ∀ n, P12195957833717679358.a n = A038130 n

end A038130

/-! ## A038130.P15992412975646529243

`A121381(2*n)-A057427(n)`
-/

namespace A038130.P15992412975646529243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121381 (2 * n) - A057427 n

end

end A038130.P15992412975646529243

namespace A038130

/-- `A121381(2*n)-A057427(n)` -/
def P15992412975646529243.Spec : Prop :=
  ∀ n, P15992412975646529243.a n = A038130 n

end A038130

/-! ## A038130.P3957458601245646044

`∩[A022844(n), A246395(n)]`
-/

namespace A038130.P3957458601245646044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246395 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038130.P3957458601245646044

namespace A038130

/-- `∩[A022844(n), A246395(n)]` -/
def P3957458601245646044.Spec : Prop :=
  ∀ n, (P3957458601245646044.a n : ℤ) = A038130 n

end A038130

/-! ## A038130.P13414283542428376113

`∩[A026309(n+1), A022844(n)]`
-/

namespace A038130.P13414283542428376113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038130.P13414283542428376113

namespace A038130

/-- `∩[A026309(n+1), A022844(n)]` -/
def P13414283542428376113.Spec : Prop :=
  ∀ n, (P13414283542428376113.a n : ℤ) = A038130 n

end A038130

/-! ## A038130.P775974164487436616

`∩[A026312(n+1), A022844(n)]`
-/

namespace A038130.P775974164487436616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038130.P775974164487436616

namespace A038130

/-- `∩[A026312(n+1), A022844(n)]` -/
def P775974164487436616.Spec : Prop :=
  ∀ n, (P775974164487436616.a n : ℤ) = A038130 n

end A038130

/-! ## A038130.P5497813820959874265

`∩[A131503(n+1), A022844(n)]`
-/

namespace A038130.P5497813820959874265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038130.P5497813820959874265

namespace A038130

/-- `∩[A131503(n+1), A022844(n)]` -/
def P5497813820959874265.Spec : Prop :=
  ∀ n, (P5497813820959874265.a n : ℤ) = A038130 n

end A038130

/-! ## A038130.P13964316858704447915

`∩[A246441(n+1), A022844(n)]`
-/

namespace A038130.P13964316858704447915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038130.P13964316858704447915

namespace A038130

/-- `∩[A246441(n+1), A022844(n)]` -/
def P13964316858704447915.Spec : Prop :=
  ∀ n, (P13964316858704447915.a n : ℤ) = A038130 n

end A038130

/-!
# A038133: From a subtractive Goldbach conjecture: odd primes that are not cluster primes.

The programs for A038133, there is no canonical definition to state claims against.
-/

/-! ## A038133.P11064628504461092598

`A224534(A056773(n+2))`
-/

namespace A038133.P11064628504461092598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224534 (A056773 (n + 2)).toNat

end

end A038133.P11064628504461092598

/-!
# A038134: From a subtractive Goldbach conjecture: cluster primes.

The programs for A038134, there is no canonical definition to state claims against.
-/

/-! ## A038134.P11131106634442328883

`A000040(eq[0, A072325(n+2)]+2)`
-/

namespace A038134.P11131106634442328883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072325 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A038134.P11131106634442328883

/-! ## A038134.P6462156570075906912

`A000035(A051345(n+1))*A079427(A124590(n+1))`
-/

namespace A038134.P6462156570075906912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A051345 (n + 1)).toNat * A079427 (A124590 (n + 1)).toNat

end

end A038134.P6462156570075906912

/-! ## A038134.P6987653747361046890

`A079427(A124590(n+1))+A000035(A059886(2*n+3))`
-/

namespace A038134.P6987653747361046890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079427 (A124590 (n + 1)).toNat + A000035 (A059886 (2 * n + 3)).toNat

end

end A038134.P6987653747361046890

/-! ## A038134.P6844401719857986201

`or(A079427(A124590(n+1)), A141727(3*n+1))`
-/

namespace A038134.P6844401719857986201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079427 (A124590 (n + 1)).toNat) (A141727 (3 * n + 1))

end

end A038134.P6844401719857986201

/-! ## A038134.P15259917670741867773

`A082876(A389713(n+1))`
-/

namespace A038134.P15259917670741867773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082876 (A389713 (n + 1)).toNat

end

end A038134.P15259917670741867773

/-!
# A038137: Reflection of A037027: T(n,m) = U(n,n-m), m=0..n, where U is as in A037027.

The programs for A038137, the canonical program `A038137.P13182111809148608605` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038137 has offset 0).

The definition of A038137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038137.P13182111809148608605

`A037027(A061579(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038137

/-- `A037027(A061579(n))` -/
def P13182111809148608605.Spec : Prop :=
  ∀ n, P13182111809148608605.a n = A038137 n

theorem P13182111809148608605.correct : P13182111809148608605.Spec := by
  intro n
  simp only [A038137]

end A038137

/-! ## A038137.P1479924496722145132

`A037027(A038722(n+1)-1)`
-/

namespace A038137.P1479924496722145132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A038722 (n + 1) - 1).toNat

end

end A038137.P1479924496722145132

namespace A038137

/-- `A037027(A038722(n+1)-1)` -/
def P1479924496722145132.Spec : Prop :=
  ∀ n, P1479924496722145132.a n = A038137 n

end A038137

/-! ## A038137.P11053298178447385661

`A037027(A002024(n+1)²-(n+1))`
-/

namespace A038137.P11053298178447385661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A038137.P11053298178447385661

namespace A038137

/-- `A037027(A002024(n+1)²-(n+1))` -/
def P11053298178447385661.Spec : Prop :=
  ∀ n, P11053298178447385661.a n = A038137 n

end A038137

/-! ## A038137.P8984366563846642361

`A210559(n+1)+A210595(n+1)-A210565(n+1)`
-/

namespace A038137.P8984366563846642361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210559 (n + 1) + (A210595 (n + 1) - A210565 (n + 1))

end

end A038137.P8984366563846642361

namespace A038137

/-- `A210559(n+1)+A210595(n+1)-A210565(n+1)` -/
def P8984366563846642361.Spec : Prop :=
  ∀ n, P8984366563846642361.a n = A038137 n

end A038137

/-! ## A038137.P5505550027067999313

`A210595(n+1)+A210595(n+2)-A210565(n+2)`
-/

namespace A038137.P5505550027067999313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210595 (n + 1) + (A210595 (n + 2) - A210565 (n + 2))

end

end A038137.P5505550027067999313

namespace A038137

/-- `A210595(n+1)+A210595(n+2)-A210565(n+2)` -/
def P5505550027067999313.Spec : Prop :=
  ∀ n, P5505550027067999313.a n = A038137 n

end A038137

/-! ## A038137.P1536420474566884916

`A155161(2*A004736(n+1)+n)`
-/

namespace A038137.P1536420474566884916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A038137.P1536420474566884916

namespace A038137

/-- `A155161(2*A004736(n+1)+n)` -/
def P1536420474566884916.Spec : Prop :=
  ∀ n, P1536420474566884916.a n = A038137 n

end A038137

/-! ## A038137.P4743136136252995403

`A155161(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A038137.P4743136136252995403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A038137.P4743136136252995403

namespace A038137

/-- `A155161(A004736(n+1)+A004736(n+1)+n)` -/
def P4743136136252995403.Spec : Prop :=
  ∀ n, P4743136136252995403.a n = A038137 n

end A038137

/-!
# A038138: Order of n (mod 7).

The programs for A038138, there is no canonical definition to state claims against.
-/

/-! ## A038138.P8149297647035029454

`(n*A272132(n))%7`
-/

namespace A038138.P8149297647035029454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A272132 n) 7

end

end A038138.P8149297647035029454

/-!
# A038139: Order of n (mod 9).

The programs for A038139, the canonical program `A038139.P92478161767723614` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038139 has offset 1).

The definition of A038139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038139.P92478161767723614

`(A130883(n)*A147650(n+1))%9`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038139

/-- `(A130883(n)*A147650(n+1))%9` -/
def P92478161767723614.Spec : Prop :=
  ∀ n, P92478161767723614.a n = A038139 (n + 1)

theorem P92478161767723614.correct : P92478161767723614.Spec := by
  intro n
  simp only [A038139, Nat.add_sub_cancel]

end A038139

/-!
# A038140: Number of planar polyhexes with n cells and a single hole of size at least 2.

The programs for A038140, there is no canonical definition to state claims against.
-/

/-! ## A038140.P14321857214691234560

`A325829(A323930(n+1)-A018190(n+1))`
-/

namespace A038140.P14321857214691234560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325829 (A323930 (n + 1) - A018190 (n + 1)).toNat

end

end A038140.P14321857214691234560

/-! ## A038140.P10320377127811064824

`A325829(A323930(n+1)%A018190(n+1))`
-/

namespace A038140.P10320377127811064824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325829 (Int.tmod (A323930 (n + 1)) (A018190 (n + 1))).toNat

end

end A038140.P10320377127811064824

/-! ## A038140.P3378067729865923783

`A027870(abs(∏{p}[n+1, #]-A146613(n+1)))`
-/

namespace A038140.P3378067729865923783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027870 |((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) - A146613 (n + 1)|.toNat

end

end A038140.P3378067729865923783

/-! ## A038140.P7024449659406554539

`A323930(n+1)-A000027(A070768(n+1)+A070766(n+1))`
-/

namespace A038140.P7024449659406554539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323930 (n + 1) - A000027 (A070768 (n + 1) + A070766 (n + 1)).toNat

end

end A038140.P7024449659406554539

/-! ## A038140.P5407307255654706753

`A323930(n+1)-A000027(A000228(n+1)-A038144(n+1))`
-/

namespace A038140.P5407307255654706753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323930 (n + 1) - A000027 (A000228 (n + 1) - A038144 (n + 1)).toNat

end

end A038140.P5407307255654706753

/-!
# A038141: Number of planar polyhexes with n cells with at least two holes, all holes having size at least two.

The programs for A038141, there is no canonical definition to state claims against.
-/

/-! ## A038141.P391996996127328719

`∑{d}[A036427(n), A257294(#)]`
-/

namespace A038141.P391996996127328719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A257294 d

end

end A038141.P391996996127328719

/-! ## A038141.P10537409401303330701

`∑[A085856(Δ[A185035(n)])]`
-/

namespace A038141.P10537409401303330701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085856 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038141.P10537409401303330701

/-! ## A038141.P12595910792853825282

`A025437(∏[Δ[A048323(n)]])`
-/

namespace A038141.P12595910792853825282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048323 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A038141.P12595910792853825282

/-! ## A038141.P2126820108677910272

`A059253(C(A026928(n+4), n+4))`
-/

namespace A038141.P2126820108677910272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (Nat.choose (A026928 (n + 4)).toNat (n + 4))

end

end A038141.P2126820108677910272

/-! ## A038141.P10179881591466204781

`∑[A229941(2*n+1)]%A229891(n)`
-/

namespace A038141.P10179881591466204781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229941 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A229891 n)

end

end A038141.P10179881591466204781

/-!
# A038142: Number of planar cata-polyhexes with n cells.

The programs for A038142, there is no canonical definition to state claims against.
-/

/-! ## A038142.P17175482453402292239

`A003104(n+1)+A323851(n+1)`
-/

namespace A038142.P17175482453402292239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003104 (n + 1) + A323851 (n + 1)

end

end A038142.P17175482453402292239

/-! ## A038142.P1735557419788924381

`A002216(n+1)-A038143(n+1)`
-/

namespace A038142.P1735557419788924381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002216 (n + 1) - A038143 (n + 1)

end

end A038142.P1735557419788924381

/-! ## A038142.P5507976122618702253

`A000228(n+1)-A137193(n+1)`
-/

namespace A038142.P5507976122618702253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000228 (n + 1) - A137193 (n + 1)

end

end A038142.P5507976122618702253

/-! ## A038142.P9778320737518834916

`A000228(n+1)-(A038143(n+1)+A005963(n+1))`
-/

namespace A038142.P9778320737518834916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000228 (n + 1) - (A038143 (n + 1) + A005963 (n + 1))

end

end A038142.P9778320737518834916

/-! ## A038142.P12793373067988574246

`A038144(n+1)+A018190(n+1)-(A038143(n+1)+A005963(n+1))`
-/

namespace A038142.P12793373067988574246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038144 (n + 1) + A018190 (n + 1) - (A038143 (n + 1) + A005963 (n + 1))

end

end A038142.P12793373067988574246

/-!
# A038143: Hexagonal cata-condensed helicenes with n cells (non-planar cata-fused benzenoid hydrocarbons).

The programs for A038143, there is no canonical definition to state claims against.
-/

/-! ## A038143.P10388416483417962954

`A002216(n+1)-A038142(n+1)`
-/

namespace A038143.P10388416483417962954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002216 (n + 1) - A038142 (n + 1)

end

end A038143.P10388416483417962954

/-! ## A038143.P3929813900009872099

`A137193(n+1)-A005963(n+1)`
-/

namespace A038143.P3929813900009872099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137193 (n + 1) - A005963 (n + 1)

end

end A038143.P3929813900009872099

/-! ## A038143.P4372008351073775000

`A000228(n+1)-(A038142(n+1)+A005963(n+1))`
-/

namespace A038143.P4372008351073775000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000228 (n + 1) - (A038142 (n + 1) + A005963 (n + 1))

end

end A038143.P4372008351073775000

/-! ## A038143.P13251124267066926136

`A038145(n+1)-A038146(n+1)`
-/

namespace A038143.P13251124267066926136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038145 (n + 1) - A038146 (n + 1)

end

end A038143.P13251124267066926136

/-!
# A038144: Number of planar n-hexes, or polyhexes (in the sense of A000228, so rotations and reflections count as the same shape) with at least one hole.

The programs for A038144, there is no canonical definition to state claims against.
-/

/-! ## A038144.P13621477524173279683

`A000228(n+1)-A018190(n+1)`
-/

namespace A038144.P13621477524173279683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000228 (n + 1) - A018190 (n + 1)

end

end A038144.P13621477524173279683

/-! ## A038144.P16241073846415787926

`A000228(n+1)%A018190(-xor(n, -1))`
-/

namespace A038144.P16241073846415787926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000228 (n + 1)) (A018190 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A038144.P16241073846415787926

/-! ## A038144.P12901391780143827457

`A000228(A000027(n+1))%A018190(n+1)`
-/

namespace A038144.P12901391780143827457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000228 (A000027 (n + 1)).toNat) (A018190 (n + 1))

end

end A038144.P12901391780143827457

/-! ## A038144.P4208752341727211881

`A000228(n+1)%A018190(A028310(n+1))`
-/

namespace A038144.P4208752341727211881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000228 (n + 1)) (A018190 (A028310 (n + 1)).toNat)

end

end A038144.P4208752341727211881

/-! ## A038144.P15973866081879632152

`A030226(n+1)+A030225(n+1)-A018190(n+1)`
-/

namespace A038144.P15973866081879632152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030226 (n + 1) + A030225 (n + 1) - A018190 (n + 1)

end

end A038144.P15973866081879632152

/-!
# A038145: Number of n-celled helicenes without holes.

The programs for A038145, there is no canonical definition to state claims against.
-/

/-! ## A038145.P4867938355918240379

`A038146(n+1)+A038143(n+1)`
-/

namespace A038145.P4867938355918240379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038146 (n + 1) + A038143 (n + 1)

end

end A038145.P4867938355918240379

/-! ## A038145.P16497665670455056634

`A038146(n+1)+A002216(n+1)-A038142(n+1)`
-/

namespace A038145.P16497665670455056634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038146 (n + 1) + (A002216 (n + 1) - A038142 (n + 1))

end

end A038145.P16497665670455056634

/-! ## A038145.P16176083748414334087

`A038146(n+1)+A137193(n+1)-A005963(n+1)`
-/

namespace A038145.P16176083748414334087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038146 (n + 1) + (A137193 (n + 1) - A005963 (n + 1))

end

end A038145.P16176083748414334087

/-! ## A038145.P18193546225982108874

`A038146(n+1)+A002216(char[1]+1+n)%A038142(n+1)`
-/

namespace A038145.P18193546225982108874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038146 (n + 1) + Int.tmod (A002216 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)) (A038142 (n + 1))

end

end A038145.P18193546225982108874

/-! ## A038145.P18053504237118712156

`A038146(n+1)+A000228(n+1)-(A038142(n+1)+A005963(n+1))`
-/

namespace A038145.P18053504237118712156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038146 (n + 1) + (A000228 (n + 1) - (A038142 (n + 1) + A005963 (n + 1)))

end

end A038145.P18053504237118712156

/-!
# A038146: Number of n-celled helicenes with peri-fragments.

The programs for A038146, there is no canonical definition to state claims against.
-/

/-! ## A038146.P10060023827761510054

`A038145(n+1)-A038143(n+1)`
-/

namespace A038146.P10060023827761510054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038145 (n + 1) - A038143 (n + 1)

end

end A038146.P10060023827761510054

/-! ## A038146.P15948518454249151031

`A038145(n+1)+A038143(n+1)*A057428(n)`
-/

namespace A038146.P15948518454249151031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038145 (n + 1) + A038143 (n + 1) * A057428 n

end

end A038146.P15948518454249151031

/-! ## A038146.P3127951598818145121

`A005963(n+1)+A038145(n+1)-A137193(n+1)`
-/

namespace A038146.P3127951598818145121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005963 (n + 1) + (A038145 (n + 1) - A137193 (n + 1))

end

end A038146.P3127951598818145121

/-! ## A038146.P4500225687256478996

`A038145(n+1)-(A002216(n+1)-A038142(n+1))`
-/

namespace A038146.P4500225687256478996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038145 (n + 1) - (A002216 (n + 1) - A038142 (n + 1))

end

end A038146.P4500225687256478996

/-! ## A038146.P7552303357074798395

`A038145(n+1)-(A000228(n+1)-A038142(n+1)-A005963(n+1))`
-/

namespace A038146.P7552303357074798395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038145 (n + 1) - (A000228 (n + 1) - A038142 (n + 1) - A005963 (n + 1))

end

end A038146.P7552303357074798395

/-!
# A038147: Number of polyhexes with n cells.

The programs for A038147, there is no canonical definition to state claims against.
-/

/-! ## A038147.P3817739306569873330

`A038145(A001104(n+1))+A000228(n+1)`
-/

namespace A038147.P3817739306569873330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038145 (A001104 (n + 1)).toNat + A000228 (n + 1)

end

end A038147.P3817739306569873330

/-! ## A038147.P16601695901087449511

`A004151(A038145(n+1)+A000228(n+1))`
-/

namespace A038147.P16601695901087449511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A038145 (n + 1) + A000228 (n + 1)).toNat

end

end A038147.P16601695901087449511

/-! ## A038147.P11618134086025813758

`A004719(A038145(n+1)+A000228(n+1))`
-/

namespace A038147.P11618134086025813758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A038145 (n + 1) + A000228 (n + 1)).toNat

end

end A038147.P11618134086025813758

/-! ## A038147.P1803686710091116632

`A038145(A007602(n+1))+A000228(n+1)`
-/

namespace A038147.P1803686710091116632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038145 (A007602 (n + 1)).toNat + A000228 (n + 1)

end

end A038147.P1803686710091116632

/-! ## A038147.P4942322079835835438

`A028310(A038145(n+1)+A000228(n+1))`
-/

namespace A038147.P4942322079835835438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A038145 (n + 1) + A000228 (n + 1)).toNat

end

end A038147.P4942322079835835438

/-!
# A038148: Number of 3-infinitary divisors of n: if n = Product p(i)^r(i) and d = Product p(i)^s(i), each s(i) has a digit a <= b in its ternary expansion everywhere that the corresponding r(i) has a digit b, then d is a 3-infinitary-divisor of n.

The programs for A038148, the canonical program `A038148.P1500552599001130371` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038148 has offset 1).

The definition of A038148 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038148.P4181662354496362081

`A006047(A067029(n+1))*a(A028234(n+1)-1)` with `a(0)=1`
-/

namespace A038148.P4181662354496362081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006047 (A067029 (n + 1)).toNat * a (A028234 (n + 1) - 1).toNat

end

end A038148.P4181662354496362081

namespace A038148

/-- `A006047(A067029(n+1))*a(A028234(n+1)-1)` -/
def P4181662354496362081.Spec : Prop :=
  ∀ n, P4181662354496362081.a n = A038148 (n + 1)

end A038148

/-! ## A038148.P1500552599001130371

`∏{e}[n+1, A006047(#)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038148

/-- `∏{e}[n+1, A006047(#)]` -/
def P1500552599001130371.Spec : Prop :=
  ∀ n, P1500552599001130371.a n = A038148 (n + 1)

theorem P1500552599001130371.correct : P1500552599001130371.Spec := by
  intro n
  simp only [A038148, Nat.add_sub_cancel]

end A038148

/-! ## A038148.P12477306951234686649

`∏{p}[n+1, A006047(val(n+1, #))]`
-/

namespace A038148.P12477306951234686649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A006047 (SequenceMachineLib.valuation (n + 1) p)

end

end A038148.P12477306951234686649

namespace A038148

/-- `∏{p}[n+1, A006047(val(n+1, #))]` -/
def P12477306951234686649.Spec : Prop :=
  ∀ n, P12477306951234686649.a n = A038148 (n + 1)

end A038148

/-! ## A038148.P696031200768062557

`∏{e}[n+1, A000005(A101278(#))]`
-/

namespace A038148.P696031200768062557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000005 (A101278 (Nat.factorization (f1 n) p)).toNat

end

end A038148.P696031200768062557

namespace A038148

/-- `∏{e}[n+1, A000005(A101278(#))]` -/
def P696031200768062557.Spec : Prop :=
  ∀ n, P696031200768062557.a n = A038148 (n + 1)

end A038148

/-! ## A038148.P14628901447101824205

`A376887(A278254(n+1))`
-/

namespace A038148.P14628901447101824205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376887 (A278254 (n + 1)).toNat

end

end A038148.P14628901447101824205

namespace A038148

/-- `A376887(A278254(n+1))` -/
def P14628901447101824205.Spec : Prop :=
  ∀ n, P14628901447101824205.a n = A038148 (n + 1)

end A038148

/-! ## A038148.P779994578654833251

`A376887(A103390(n+2))`
-/

namespace A038148.P779994578654833251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376887 (A103390 (n + 2)).toNat

end

end A038148.P779994578654833251

namespace A038148

/-- `A376887(A103390(n+2))` -/
def P779994578654833251.Spec : Prop :=
  ∀ n, P779994578654833251.a n = A038148 (n + 1)

end A038148

/-! ## A038148.P15572704519925836134

`A376887((n+1)²)`
-/

namespace A038148.P15572704519925836134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376887 ((n + 1) ^ 2)

end

end A038148.P15572704519925836134

namespace A038148

/-- `A376887((n+1)²)` -/
def P15572704519925836134.Spec : Prop :=
  ∀ n, P15572704519925836134.a n = A038148 (n + 1)

end A038148

/-! ## A038148.P14331211392845128361

`A377021(A377021(A376887((n+1)*(n+1))))`
-/

namespace A038148.P14331211392845128361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377021 (A377021 (A376887 ((n + 1) * (n + 1))).toNat).toNat

end

end A038148.P14331211392845128361

namespace A038148

/-- `A377021(A377021(A376887((n+1)*(n+1))))` -/
def P14331211392845128361.Spec : Prop :=
  ∀ n, P14331211392845128361.a n = A038148 (n + 1)

end A038148

/-! ## A038148.P14040480040938571855

`∏{e}[(n+1)^3, A345992(#)+1]`
-/

namespace A038148.P14040480040938571855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A345992 (Nat.factorization (f1 n) p) + 1)

end

end A038148.P14040480040938571855

namespace A038148

/-- `∏{e}[(n+1)^3, A345992(#)+1]` -/
def P14040480040938571855.Spec : Prop :=
  ∀ n, P14040480040938571855.a n = A038148 (n + 1)

end A038148

/-! ## A038148.P12314174542189715771

`∏{e}[n+1, A000005(A000005(2^A000032(#)))]`
-/

namespace A038148.P12314174542189715771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000005 (A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A000032 (Nat.factorization (f1 n) p) : ℤ))).toNat).toNat

end

end A038148.P12314174542189715771

namespace A038148

/-- `∏{e}[n+1, A000005(A000005(2^A000032(#)))]` -/
def P12314174542189715771.Spec : Prop :=
  ∀ n, P12314174542189715771.a n = A038148 (n + 1)

end A038148

/-!
# A038149: a(n) = max T(n,k), with T as in A037027.

The programs for A038149, there is no canonical definition to state claims against.
-/

/-! ## A038149.P9998663776055572135

`A252354(n)+A146167(A106863(n+1))`
-/

namespace A038149.P9998663776055572135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252354 n + A146167 (A106863 (n + 1)).toNat

end

end A038149.P9998663776055572135

/-! ## A038149.P1272370130685469975

`A135260(A000671(n+1))`
-/

namespace A038149.P1272370130685469975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135260 (A000671 (n + 1)).toNat

end

end A038149.P1272370130685469975

/-! ## A038149.P9117326329714887061

`A166018(A298533(n+1))`
-/

namespace A038149.P9117326329714887061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166018 (A298533 (n + 1)).toNat

end

end A038149.P9117326329714887061

/-! ## A038149.P16432285616928586187

`A325362(A202850(n+1))`
-/

namespace A038149.P16432285616928586187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325362 (A202850 (n + 1)).toNat

end

end A038149.P16432285616928586187

/-!
# A038150: Array of numbers used in exotic ternary numeration system, read by antidiagonals.

The programs for A038150, the canonical program `A038150.P5051264707924922731` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038150 has offset 0).

The definition of A038150 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038150.P5051264707924922731

`A000045(2*col(n))*(row(n)-col(n)+1)+A000045(2*col(n)+1)*A026351(row(n)-col(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038150

/-- `A000045(2*col(n))*(row(n)-col(n)+1)+A000045(2*col(n)+1)*A026351(row(n)-col(n))` -/
def P5051264707924922731.Spec : Prop :=
  ∀ n, P5051264707924922731.a n = A038150 n

theorem P5051264707924922731.correct : P5051264707924922731.Spec := by
  intro n
  simp only [A038150]

end A038150

/-! ## A038150.P13298403319739078726

`A132827(∑[2*n]%comp[∑[n]])`
-/

namespace A038150.P13298403319739078726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132827 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A038150.P13298403319739078726

namespace A038150

/-- `A132827(∑[2*n]%comp[∑[n]])` -/
def P13298403319739078726.Spec : Prop :=
  ∀ n, P13298403319739078726.a n = A038150 n

end A038150

/-! ## A038150.P3342594966396209565

`A132827(∑[char[∑[n]]]²-(n+1))`
-/

namespace A038150.P3342594966396209565
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132827 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A038150.P3342594966396209565

namespace A038150

/-- `A132827(∑[char[∑[n]]]²-(n+1))` -/
def P3342594966396209565.Spec : Prop :=
  ∀ n, P3342594966396209565.a n = A038150 n

end A038150

/-! ## A038150.P17961868858012831983

`abs(A132827(A061579(n))-1)+1`
-/

namespace A038150.P17961868858012831983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132827 (A061579 n).toNat - 1| + 1

end

end A038150.P17961868858012831983

namespace A038150

/-- `abs(A132827(A061579(n))-1)+1` -/
def P17961868858012831983.Spec : Prop :=
  ∀ n, P17961868858012831983.a n = A038150 n

end A038150

/-! ## A038150.P13013423992753874373

`A132827(A061579(n))^A178334(n)`
-/

namespace A038150.P13013423992753874373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132827 (A061579 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A038150.P13013423992753874373

namespace A038150

/-- `A132827(A061579(n))^A178334(n)` -/
def P13013423992753874373.Spec : Prop :=
  ∀ n, P13013423992753874373.a n = (A038150 n : ℚ)

end A038150

/-!
# A038151: Bilateral directed animals in first and 8th octants.

The programs for A038151, there is no canonical definition to state claims against.
-/

/-! ## A038151.P5702725049697054001

`A191317(A004273(n))`
-/

namespace A038151.P5702725049697054001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191317 (A004273 n).toNat

end

end A038151.P5702725049697054001

/-! ## A038151.P2541960750357246877

`A191317(record[A006257(n)])`
-/

namespace A038151.P2541960750357246877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191317 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A038151.P2541960750357246877

/-! ## A038151.P7201935227482869343

`A191317(record[A026741(n)])`
-/

namespace A038151.P7201935227482869343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191317 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A038151.P7201935227482869343

/-! ## A038151.P14906321989142568563

`A191317(A028310(2*n)-1)`
-/

namespace A038151.P14906321989142568563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191317 (A028310 (2 * n) - 1).toNat

end

end A038151.P14906321989142568563

/-! ## A038151.P8434424346888908638

`A191317(A028310(n)-1+n)`
-/

namespace A038151.P8434424346888908638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191317 (A028310 n - 1 + (n : ℤ)).toNat

end

end A038151.P8434424346888908638

/-! ## A038151.P16450793061861348538

`A191317(n-(1-A028310(n)))`
-/

namespace A038151.P16450793061861348538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191317 ((n : ℤ) - (1 - A028310 n)).toNat

end

end A038151.P16450793061861348538

/-! ## A038151.P12381392455978604861

`A191317(n-1+A000007(n)+n)`
-/

namespace A038151.P12381392455978604861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191317 ((n : ℤ) - 1 + (A000007 n + (n : ℤ))).toNat

end

end A038151.P12381392455978604861

/-!
# A038152: Beatty sequence for e^Pi.

The programs for A038152, the canonical program `A038152.P15381943449069368155` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038152 has offset 1).

The definition of A038152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038152.P15381943449069368155

`floor((n+1)*exp(π))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038152

/-- `floor((n+1)*exp(π))` -/
def P15381943449069368155.Spec : Prop :=
  ∀ n, P15381943449069368155.a n = A038152 (n + 1)

theorem P15381943449069368155.correct : P15381943449069368155.Spec := by
  intro n
  simp only [A038152, Nat.add_sub_cancel]

end A038152

/-! ## A038152.P6670153217345195045

`ceil((n+1)*exp(π))-abs(A033999(n))`
-/

namespace A038152.P6670153217345195045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.exp Real.pi⌉ - |A033999 n|

end

end A038152.P6670153217345195045

namespace A038152

/-- `ceil((n+1)*exp(π))-abs(A033999(n))` -/
def P6670153217345195045.Spec : Prop :=
  ∀ n, P6670153217345195045.a n = A038152 (n + 1)

end A038152

/-! ## A038152.P1495217044215658708

`ceil((n+1)*exp(π))-A008836(n+1)²`
-/

namespace A038152.P1495217044215658708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.exp Real.pi⌉ - A008836 (n + 1) ^ 2

end

end A038152.P1495217044215658708

namespace A038152

/-- `ceil((n+1)*exp(π))-A008836(n+1)²` -/
def P1495217044215658708.Spec : Prop :=
  ∀ n, P1495217044215658708.a n = A038152 (n + 1)

end A038152

/-! ## A038152.P2754247104563466150

`ceil((n+1)*exp(π))+∑[n]-A000124(n)`
-/

namespace A038152.P2754247104563466150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.exp Real.pi⌉ + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000124 n)

end

end A038152.P2754247104563466150

namespace A038152

/-- `ceil((n+1)*exp(π))+∑[n]-A000124(n)` -/
def P2754247104563466150.Spec : Prop :=
  ∀ n, P2754247104563466150.a n = A038152 (n + 1)

end A038152

/-! ## A038152.P15006789523794015807

`ceil((n+1)*exp(π))-A000041(gcd(n, n+1))`
-/

namespace A038152.P15006789523794015807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.exp Real.pi⌉ - A000041 (Nat.gcd n (n + 1))

end

end A038152.P15006789523794015807

namespace A038152

/-- `ceil((n+1)*exp(π))-A000041(gcd(n, n+1))` -/
def P15006789523794015807.Spec : Prop :=
  ∀ n, P15006789523794015807.a n = A038152 (n + 1)

end A038152

/-! ## A038152.P9875373713161550756

`ceil((n+1)*exp(π))-A001221(A240108(n+1))`
-/

namespace A038152.P9875373713161550756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.exp Real.pi⌉ - A001221 (A240108 (n + 1)).toNat

end

end A038152.P9875373713161550756

namespace A038152

/-- `ceil((n+1)*exp(π))-A001221(A240108(n+1))` -/
def P9875373713161550756.Spec : Prop :=
  ∀ n, P9875373713161550756.a n = A038152 (n + 1)

end A038152

/-! ## A038152.P16883356593362802518

`A023443(ceil((n+1)*exp(π)))`
-/

namespace A038152.P16883356593362802518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ⌈(n + 1 : ℝ) * Real.exp Real.pi⌉.toNat

end

end A038152.P16883356593362802518

namespace A038152

/-- `A023443(ceil((n+1)*exp(π)))` -/
def P16883356593362802518.Spec : Prop :=
  ∀ n, P16883356593362802518.a n = A038152 (n + 1)

end A038152

/-! ## A038152.P10191963070270065585

`A064179(A053001(n+2))+ceil((n+1)*exp(π))`
-/

namespace A038152.P10191963070270065585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (A053001 (n + 2)).toNat + ⌈(n + 1 : ℝ) * Real.exp Real.pi⌉

end

end A038152.P10191963070270065585

namespace A038152

/-- `A064179(A053001(n+2))+ceil((n+1)*exp(π))` -/
def P10191963070270065585.Spec : Prop :=
  ∀ n, P10191963070270065585.a n = A038152 (n + 1)

end A038152

/-! ## A038152.P15297598223090445796

`ceil((n+1)*exp(π))-A058281(A133263(n))`
-/

namespace A038152.P15297598223090445796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.exp Real.pi⌉ - A058281 (A133263 n).toNat

end

end A038152.P15297598223090445796

namespace A038152

/-- `ceil((n+1)*exp(π))-A058281(A133263(n))` -/
def P15297598223090445796.Spec : Prop :=
  ∀ n, P15297598223090445796.a n = A038152 (n + 1)

end A038152

/-! ## A038152.P579872194821910632

`ceil((n+1)*exp(π))-A003557(A084758(n+1))`
-/

namespace A038152.P579872194821910632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.exp Real.pi⌉ - A003557 (A084758 (n + 1)).toNat

end

end A038152.P579872194821910632

namespace A038152

/-- `ceil((n+1)*exp(π))-A003557(A084758(n+1))` -/
def P579872194821910632.Spec : Prop :=
  ∀ n, P579872194821910632.a n = A038152 (n + 1)

end A038152

/-!
# A038153: Beatty sequence for Pi^e.

The programs for A038153, the canonical program `A038153.P12096564173668940376` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038153 has offset 1).

The definition of A038153 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038153.P12096564173668940376

`floor((n+1)*π^e)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038153

/-- `floor((n+1)*π^e)` -/
def P12096564173668940376.Spec : Prop :=
  ∀ n, P12096564173668940376.a n = A038153 (n + 1)

theorem P12096564173668940376.correct : P12096564173668940376.Spec := by
  intro n
  simp only [A038153, Nat.add_sub_cancel]

end A038153

/-!
# A038154: a(n) = n! * Sum_{k=0..n-2} 1/k!.

The programs for A038154, the canonical program `A038154.P17025590308550529256` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038154 has offset 0).

The definition of A038154 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038154.P17025590308550529256

`n*a(n-1)+n*(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038154

/-- `n*a(n-1)+n*(n-1)` -/
def P17025590308550529256.Spec : Prop :=
  ∀ n, P17025590308550529256.a n = A038154 n

theorem P17025590308550529256.correct : P17025590308550529256.Spec := by
  intro n
  simp only [A038154]

end A038154

/-! ## A038154.P39526928269505539

`2*A038155(n)`
-/

namespace A038154.P39526928269505539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038155 n

end

end A038154.P39526928269505539

namespace A038154

/-- `2*A038155(n)` -/
def P39526928269505539.Spec : Prop :=
  ∀ n, P39526928269505539.a n = A038154 n

end A038154

/-! ## A038154.P12113235387943677141

`A007526(n)-n`
-/

namespace A038154.P12113235387943677141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007526 n - (n : ℤ)

end

end A038154.P12113235387943677141

namespace A038154

/-- `A007526(n)-n` -/
def P12113235387943677141.Spec : Prop :=
  ∀ n, P12113235387943677141.a n = A038154 n

end A038154

/-! ## A038154.P12973278490934669534

`n!*∑[n/n!]-n`
-/

namespace A038154.P12973278490934669534
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℚ)

end

end A038154.P12973278490934669534

namespace A038154

/-- `n!*∑[n/n!]-n` -/
def P12973278490934669534.Spec : Prop :=
  ∀ n, P12973278490934669534.a n = (A038154 n : ℚ)

end A038154

/-! ## A038154.P1603397535400745651

`n*(a(n-1)-1+n)` with `a(0)=0`
-/

namespace A038154.P1603397535400745651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (a (n - 1) - 1 + (n : ℤ))

end

end A038154.P1603397535400745651

namespace A038154

/-- `n*(a(n-1)-1+n)` -/
def P1603397535400745651.Spec : Prop :=
  ∀ n, P1603397535400745651.a n = A038154 n

theorem P1603397535400745651.correct : P1603397535400745651.Spec := by
  intro n
  simp only [A038154, Nat.add_sub_cancel, A038154.P1603397535400745651.a, A038154.P17025590308550529256.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A038154

/-! ## A038154.P8460919996756011440

`n*(n-(1-a(n-1)))` with `a(0)=0`
-/

namespace A038154.P8460919996756011440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * ((n : ℤ) - (1 - a (n - 1)))

end

end A038154.P8460919996756011440

namespace A038154

/-- `n*(n-(1-a(n-1)))` -/
def P8460919996756011440.Spec : Prop :=
  ∀ n, P8460919996756011440.a n = A038154 n

theorem P8460919996756011440.correct : P8460919996756011440.Spec := by
  intro n
  simp only [A038154, Nat.add_sub_cancel, A038154.P8460919996756011440.a, A038154.P17025590308550529256.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A038154

/-! ## A038154.P12426947338863957458

`lcm(n, 1-(a(n-1)+n))` with `a(0)=0`
-/

namespace A038154.P12426947338863957458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.lcm (n : ℤ) (1 - (a (n - 1) + n : ℤ))

end

end A038154.P12426947338863957458

namespace A038154

/-- `lcm(n, 1-(a(n-1)+n))` -/
def P12426947338863957458.Spec : Prop :=
  ∀ n, (P12426947338863957458.a n : ℤ) = A038154 n

end A038154

/-! ## A038154.P10165810019823845715

`(a(n-1)-1+n)/n^(-1)` with `a(0)=0`
-/

namespace A038154.P10165810019823845715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) - 1 + (n : ℚ)) / (n : ℚ) ^ (-1 : ℤ)

end

end A038154.P10165810019823845715

namespace A038154

/-- `(a(n-1)-1+n)/n^(-1)` -/
def P10165810019823845715.Spec : Prop :=
  ∀ n, P10165810019823845715.a n = (A038154 n : ℚ)

end A038154

/-! ## A038154.P9533623677320918189

`(n-(1-a(n-1)))/n^(-1)` with `a(0)=0`
-/

namespace A038154.P9533623677320918189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  ((n : ℚ) - (1 - a (n - 1))) / (n : ℚ) ^ (-1 : ℤ)

end

end A038154.P9533623677320918189

namespace A038154

/-- `(n-(1-a(n-1)))/n^(-1)` -/
def P9533623677320918189.Spec : Prop :=
  ∀ n, P9533623677320918189.a n = (A038154 n : ℚ)

end A038154

/-! ## A038154.P16422033104182741970

`A243014(n)-1`
-/

namespace A038154.P16422033104182741970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243014 n - 1

end

end A038154.P16422033104182741970

namespace A038154

/-- `A243014(n)-1` -/
def P16422033104182741970.Spec : Prop :=
  ∀ n, P16422033104182741970.a n = A038154 n

end A038154

/-!
# A038155: a(n) = (n!/2) * Sum_{k=0..n-2} 1/k!.

The programs for A038155, the canonical program `A038155.P3945699651781914259` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038155 has offset 0).

The definition of A038155 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038155.P3945699651781914259

`A038154(n)/2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038155

/-- `A038154(n)/2` -/
def P3945699651781914259.Spec : Prop :=
  ∀ n, P3945699651781914259.a n = (A038155 n : ℚ)

end A038155

/-! ## A038155.P2966286533212191669

`C(n, 2)+n*a(n-1)` with `a(0)=0`
-/

namespace A038155.P2966286533212191669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose n 2 + n * a (n - 1)

end

end A038155.P2966286533212191669

namespace A038155

/-- `C(n, 2)+n*a(n-1)` -/
def P2966286533212191669.Spec : Prop :=
  ∀ n, (P2966286533212191669.a n : ℤ) = A038155 n

end A038155

/-! ## A038155.P6651211543536034859

`∑[n]+n*(a(n-1)-1)` with `a(0)=0`
-/

namespace A038155.P6651211543536034859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ) * (a (n - 1) - 1)

end

end A038155.P6651211543536034859

namespace A038155

/-- `∑[n]+n*(a(n-1)-1)` -/
def P6651211543536034859.Spec : Prop :=
  ∀ n, P6651211543536034859.a n = A038155 n

end A038155

/-! ## A038155.P10035547406916460972

`∑[n]-n*(1-a(n-1))` with `a(0)=0`
-/

namespace A038155.P10035547406916460972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) * (1 - a (n - 1))

end

end A038155.P10035547406916460972

namespace A038155

/-- `∑[n]-n*(1-a(n-1))` -/
def P10035547406916460972.Spec : Prop :=
  ∀ n, P10035547406916460972.a n = A038155 n

end A038155

/-! ## A038155.P7983624248382243534

`floor(abs(e*n!-(n+1))/2)`
-/

namespace A038155.P7983624248382243534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|Real.exp 1 * (Nat.factorial n : ℝ) - (n + 1 : ℝ)| / 2⌋

end

end A038155.P7983624248382243534

namespace A038155

/-- `floor(abs(e*n!-(n+1))/2)` -/
def P7983624248382243534.Spec : Prop :=
  ∀ n, P7983624248382243534.a n = A038155 n

end A038155

/-! ## A038155.P319540878383559153

`(n!*∑[n/n!]-n)/2`
-/

namespace A038155.P319540878383559153
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℚ)) / 2

end

end A038155.P319540878383559153

namespace A038155

/-- `(n!*∑[n/n!]-n)/2` -/
def P319540878383559153.Spec : Prop :=
  ∀ n, P319540878383559153.a n = (A038155 n : ℚ)

end A038155

/-! ## A038155.P16868290910751064748

`n*(a(n-1)+(n-1)/2)` with `a(0)=0`
-/

namespace A038155.P16868290910751064748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) * (a (n - 1) + ((n : ℤ) - 1 : ℚ) / 2)

end

end A038155.P16868290910751064748

namespace A038155

/-- `n*(a(n-1)+(n-1)/2)` -/
def P16868290910751064748.Spec : Prop :=
  ∀ n, P16868290910751064748.a n = (A038155 n : ℚ)

end A038155

/-! ## A038155.P6567940631679181971

`floor(n*(a(n-1)-(1-n)/2))` with `a(0)=0`
-/

namespace A038155.P6567940631679181971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℚ) * ((a (n - 1) : ℚ) - (1 - (n : ℤ) : ℚ) / 2)⌋

end

end A038155.P6567940631679181971

namespace A038155

/-- `floor(n*(a(n-1)-(1-n)/2))` -/
def P6567940631679181971.Spec : Prop :=
  ∀ n, P6567940631679181971.a n = A038155 n

end A038155

/-! ## A038155.P4378691568880559992

`(2*a(n-1)-(1-n))*n/2` with `a(0)=0`
-/

namespace A038155.P4378691568880559992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (2 * a (n - 1) - (1 - (n : ℤ) : ℚ)) * ((n : ℚ) / 2)

end

end A038155.P4378691568880559992

namespace A038155

/-- `(2*a(n-1)-(1-n))*n/2` -/
def P4378691568880559992.Spec : Prop :=
  ∀ n, P4378691568880559992.a n = (A038155 n : ℚ)

end A038155

/-! ## A038155.P14644256497013032565

`(n-1+a(n-1)+a(n-2))*(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A038155.P14644256497013032565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ((n : ℤ) - 1 + (a (n - 1) + a (n - 2))) * ((n : ℤ) - 1)

end

end A038155.P14644256497013032565

namespace A038155

/-- `(n-1+a(n-1)+a(n-2))*(n-1)` -/
def P14644256497013032565.Spec : Prop :=
  ∀ n, P14644256497013032565.a n = A038155 n

end A038155

/-!
# A038156: a(n) = n! * Sum_{k=1..n-1} 1/k!.

The programs for A038156, the canonical program `A038156.P11875490933176681779` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038156 has offset 0).

The definition of A038156 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038156.P5682049496676253479

`floor((e-1)*n!)-1`
-/

namespace A038156.P5682049496676253479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.exp 1 - 1) * (Nat.factorial n : ℝ)⌋ - 1

end

end A038156.P5682049496676253479

namespace A038156

/-- `floor((e-1)*n!)-1` -/
def P5682049496676253479.Spec : Prop :=
  ∀ n, P5682049496676253479.a n = A038156 n

end A038156

/-! ## A038156.P11875490933176681779

`n*(a(n-1)+1)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038156

/-- `n*(a(n-1)+1)` -/
def P11875490933176681779.Spec : Prop :=
  ∀ n, (P11875490933176681779.a n : ℤ) = A038156 n

theorem P11875490933176681779.correct : P11875490933176681779.Spec := by
  intro n
  simp only [A038156]

end A038156

/-! ## A038156.P2967337781717707509

`-(n*xor(-1, a(n-1)))` with `a(0)=0, a(1)=0`
-/

namespace A038156.P2967337781717707509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  -((n : ℤ) * Int.xor (-1) (a (n - 1)))

end

end A038156.P2967337781717707509

namespace A038156

/-- `-(n*xor(-1, a(n-1)))` -/
def P2967337781717707509.Spec : Prop :=
  ∀ n, P2967337781717707509.a n = A038156 n

end A038156

/-! ## A038156.P3743651676419865515

`(a(n-1)+1)/n^(-1)` with `a(0)=0, a(1)=0`
-/

namespace A038156.P3743651676419865515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  (a (n - 1) + 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A038156.P3743651676419865515

namespace A038156

/-- `(a(n-1)+1)/n^(-1)` -/
def P3743651676419865515.Spec : Prop :=
  ∀ n, P3743651676419865515.a n = (A038156 n : ℚ)

end A038156

/-! ## A038156.P8009899522722189088

`n*(ϕ²-(ϕ-a(n-1)))` with `a(0)=0, a(1)=0`
-/

namespace A038156.P8009899522722189088
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 0] fun n a =>
  (n : ℝ) * (Real.goldenRatio ^ 2 - (Real.goldenRatio - a (n - 1)))

end

end A038156.P8009899522722189088

namespace A038156

/-- `n*(ϕ²-(ϕ-a(n-1)))` -/
def P8009899522722189088.Spec : Prop :=
  ∀ n, P8009899522722189088.a n = (A038156 n : ℝ)

end A038156

/-! ## A038156.P2767059578751897378

`2*n-n*(1-a(n-1))` with `a(0)=0, a(1)=0`
-/

namespace A038156.P2767059578751897378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (2 * n : ℤ) - (n : ℤ) * (1 - a (n - 1))

end

end A038156.P2767059578751897378

namespace A038156

/-- `2*n-n*(1-a(n-1))` -/
def P2767059578751897378.Spec : Prop :=
  ∀ n, P2767059578751897378.a n = A038156 n

end A038156

/-! ## A038156.P5482761080548781934

`n*a((2*n)%(n+1))+n` with `a(0)=0, a(1)=0`
-/

namespace A038156.P5482761080548781934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  n * a (2 * n % (n + 1)) + n

end

end A038156.P5482761080548781934

namespace A038156

/-- `n*a((2*n)%(n+1))+n` -/
def P5482761080548781934.Spec : Prop :=
  ∀ n, (P5482761080548781934.a n : ℤ) = A038156 n

end A038156

/-! ## A038156.P9538011478536632373

`lcm(n, A166554(n))`
-/

namespace A038156.P9538011478536632373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A166554 n)

end

end A038156.P9538011478536632373

namespace A038156

/-- `lcm(n, A166554(n))` -/
def P9538011478536632373.Spec : Prop :=
  ∀ n, (P9538011478536632373.a n : ℤ) = A038156 n

end A038156

/-! ## A038156.P15052674222128763584

`A296964(n-char[1])`
-/

namespace A038156.P15052674222128763584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296964 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A038156.P15052674222128763584

namespace A038156

/-- `A296964(n-char[1])` -/
def P15052674222128763584.Spec : Prop :=
  ∀ n, P15052674222128763584.a n = A038156 n

end A038156

/-! ## A038156.P15020817448719875875

`A002627(A028310(n))-1`
-/

namespace A038156.P15020817448719875875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002627 (A028310 n).toNat - 1

end

end A038156.P15020817448719875875

namespace A038156

/-- `A002627(A028310(n))-1` -/
def P15020817448719875875.Spec : Prop :=
  ∀ n, P15020817448719875875.a n = A038156 n

end A038156

/-!
# A038157: a(n) = n! * Sum_{k=1..n-2} 1/k!.

The programs for A038157, there is no canonical definition to state claims against.
-/

/-! ## A038157.P12210940662331332369

`n*(a(n-1)-1+n)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A038157.P12210940662331332369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  (n : ℤ) * (a (n - 1) - 1 + (n : ℤ))

end

end A038157.P12210940662331332369

/-! ## A038157.P10196450637648302427

`n*(n-(1-a(n-1)))` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A038157.P10196450637648302427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  (n : ℤ) * ((n : ℤ) - (1 - a (n - 1)))

end

end A038157.P10196450637648302427

/-! ## A038157.P2209218159943727577

`lcm(n-1, abs(floor((e-1)*n!)-1-n))`
-/

namespace A038157.P2209218159943727577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) |⌊(Real.exp 1 - 1) * (Nat.factorial n : ℝ)⌋ - 1 - (n : ℤ)|

end

end A038157.P2209218159943727577

/-! ## A038157.P8440918078175336505

`2*A038158(n)`
-/

namespace A038157.P8440918078175336505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038158 n

end

end A038157.P8440918078175336505

/-! ## A038157.P2309984628676216349

`A296964(n)-n`
-/

namespace A038157.P2309984628676216349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296964 n - (n : ℤ)

end

end A038157.P2309984628676216349

/-! ## A038157.P8021203794332926960

`char[1]+A038156(n)-n`
-/

namespace A038157.P8021203794332926960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A038156 n - (n : ℤ))

end

end A038157.P8021203794332926960

/-! ## A038157.P5839393131176130660

`n*(A199969(n)+a(n-1))` with `a(0)=0`
-/

namespace A038157.P5839393131176130660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (A199969 n + a (n - 1))

end

end A038157.P5839393131176130660

/-! ## A038157.P17605989878776702887

`A082459(A300576(n+1)+1)`
-/

namespace A038157.P17605989878776702887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082459 (A300576 (n + 1) + 1).toNat

end

end A038157.P17605989878776702887

/-! ## A038157.P1108406815634455091

`n*A082459(A004278(n+1))`
-/

namespace A038157.P1108406815634455091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A082459 (A004278 (n + 1)).toNat

end

end A038157.P1108406815634455091

/-! ## A038157.P10287609957247437716

`char[A166554(n)]-(A166554(n)+n)`
-/

namespace A038157.P10287609957247437716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166554 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (A166554 n + (n : ℤ))

end

end A038157.P10287609957247437716

/-!
# A038158: a(n) = (n!/2)*Sum(1/k!, k=1..n-2).

The programs for A038158, there is no canonical definition to state claims against.
-/

/-! ## A038158.P13933838177679225478

`A038157(n)/2`
-/

namespace A038158.P13933838177679225478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038157 n : ℚ) / 2

end

end A038158.P13933838177679225478

/-! ## A038158.P3343277842554976164

`C(n, 2)+n*a(n-1)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A038158.P3343277842554976164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  Nat.choose n 2 + n * a (n - 1)

end

end A038158.P3343277842554976164

/-! ## A038158.P14284400182803516197

`∑[n]+n*(a(n-1)-1)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A038158.P14284400182803516197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ) * (a (n - 1) - 1)

end

end A038158.P14284400182803516197

/-! ## A038158.P1410245792028356883

`∑[n]-n*(1-a(n-1))` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A038158.P1410245792028356883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) * (1 - a (n - 1))

end

end A038158.P1410245792028356883

/-! ## A038158.P9481192363998882299

`n*(a(n-1)+(n-1)/2)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A038158.P9481192363998882299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  (n : ℚ) * (a (n - 1) + ((n : ℤ) - 1 : ℚ) / 2)

end

end A038158.P9481192363998882299

/-! ## A038158.P9441409184375983623

`(A296964(n)-n)/2`
-/

namespace A038158.P9441409184375983623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296964 n - (n : ℤ) : ℚ) / 2

end

end A038158.P9441409184375983623

/-! ## A038158.P3568148521495775339

`A082459(A300576(n+1)+1)/2`
-/

namespace A038158.P3568148521495775339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082459 (A300576 (n + 1) + 1).toNat : ℚ) / 2

end

end A038158.P3568148521495775339

/-! ## A038158.P6155065369949067960

`n/2*A082459(A004278(n+1))`
-/

namespace A038158.P6155065369949067960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A082459 (A004278 (n + 1)).toNat : ℚ)

end

end A038158.P6155065369949067960

/-!
# A038159: a(n) = n*a(n-1) + 1, a(0) = 2.

The programs for A038159, the canonical program `A038159.P7395219079931825342` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038159 has offset 0).

The definition of A038159 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-1)+1` (program `A038159.P7395219079931825342`, by `A038159.P7395219079931825342.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A038159.P7395219079931825342

`n*a(n-1)+1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038159

/-- `n*a(n-1)+1` -/
def P7395219079931825342.Spec : Prop :=
  ∀ n, (P7395219079931825342.a n : ℤ) = A038159 n

theorem P7395219079931825342.correct : P7395219079931825342.Spec := by
  intro n
  simp only [A038159]

end A038159

/-! ## A038159.P1466165130385266495

`A000522(n)+n!`
-/

namespace A038159.P1466165130385266495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n + (Nat.factorial n : ℤ)

end

end A038159.P1466165130385266495

namespace A038159

/-- `A000522(n)+n!` -/
def P1466165130385266495.Spec : Prop :=
  ∀ n, P1466165130385266495.a n = A038159 n

end A038159

/-! ## A038159.P5087243057408995283

`A033540(n+1)+1`
-/

namespace A038159.P5087243057408995283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033540 (n + 1) + 1

end

end A038159.P5087243057408995283

namespace A038159

/-- `A033540(n+1)+1` -/
def P5087243057408995283.Spec : Prop :=
  ∀ n, P5087243057408995283.a n = A038159 n

end A038159

/-! ## A038159.P10306080459596168144

`1-floor(-(n*a(n-1)))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A038159.P10306080459596168144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  1 - (-((n : ℤ) * a (n - 1)))

end

end A038159.P10306080459596168144

namespace A038159

/-- `1-floor(-(n*a(n-1)))` -/
def P10306080459596168144.Spec : Prop :=
  ∀ n, P10306080459596168144.a n = A038159 n

end A038159

/-! ## A038159.P4136804458865388334

`1-ceil(-(n*a(n-1)))` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A038159.P4136804458865388334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  1 - (-((n : ℤ) * a (n - 1)))

end

end A038159.P4136804458865388334

namespace A038159

/-- `1-ceil(-(n*a(n-1)))` -/
def P4136804458865388334.Spec : Prop :=
  ∀ n, P4136804458865388334.a n = A038159 n

end A038159

/-! ## A038159.P887325872930005800

`abs(xor(n*a(n-1), -1))` with `a(0)=2`
-/

namespace A038159.P887325872930005800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  |Int.xor ((n : ℤ) * a (n - 1)) (-1)|

end

end A038159.P887325872930005800

namespace A038159

/-- `abs(xor(n*a(n-1), -1))` -/
def P887325872930005800.Spec : Prop :=
  ∀ n, P887325872930005800.a n = A038159 n

end A038159

/-! ## A038159.P10724559676292187546

`1-round(-(n*a(n-1)))` with `a(0)=2`

`round` is left out, it is the identity on integers.
-/

namespace A038159.P10724559676292187546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  1 - (-((n : ℤ) * a (n - 1)))

end

end A038159.P10724559676292187546

namespace A038159

/-- `1-round(-(n*a(n-1)))` -/
def P10724559676292187546.Spec : Prop :=
  ∀ n, P10724559676292187546.a n = A038159 n

end A038159

/-! ## A038159.P2443139544960960736

`-xor(n*a(n-1), -1)` with `a(0)=2`
-/

namespace A038159.P2443139544960960736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  -Int.xor ((n : ℤ) * a (n - 1)) (-1)

end

end A038159.P2443139544960960736

namespace A038159

/-- `-xor(n*a(n-1), -1)` -/
def P2443139544960960736.Spec : Prop :=
  ∀ n, P2443139544960960736.a n = A038159 n

end A038159

/-! ## A038159.P7967968708550027495

`a(n-1)/n^(-1)+1` with `a(0)=2`
-/

namespace A038159.P7967968708550027495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) + 1

end

end A038159.P7967968708550027495

namespace A038159

/-- `a(n-1)/n^(-1)+1` -/
def P7967968708550027495.Spec : Prop :=
  ∀ n, P7967968708550027495.a n = (A038159 n : ℚ)

end A038159

/-! ## A038159.P8695781571717924907

`2-floor(ϕ-n*a(n-1))` with `a(0)=2`
-/

namespace A038159.P8695781571717924907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 - ⌊Real.goldenRatio - ((n : ℤ) * a (n - 1) : ℝ)⌋

end

end A038159.P8695781571717924907

namespace A038159

/-- `2-floor(ϕ-n*a(n-1))` -/
def P8695781571717924907.Spec : Prop :=
  ∀ n, P8695781571717924907.a n = A038159 n

end A038159

/-!
# A038160: Intersection of A003136 and A038590.

The programs for A038160, there is no canonical definition to state claims against.
-/

/-! ## A038160.P4925932821344972480

`filter[A038590(n), A353816(#)]`
-/

namespace A038160.P4925932821344972480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A038160.P4925932821344972480

/-! ## A038160.P3936289024845918071

`∩[A260682(n+1), A038590(n)]`
-/

namespace A038160.P3936289024845918071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038160.P3936289024845918071

/-! ## A038160.P8919558215002810424

`∩[A202822(n+1), A038590(n)]`
-/

namespace A038160.P8919558215002810424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038160.P8919558215002810424

/-! ## A038160.P8341241582415432889

`∩[A266836(n+1), A038590(n)]`
-/

namespace A038160.P8341241582415432889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038160.P8341241582415432889

/-! ## A038160.P7387324305813005869

`∩[A243175(n+1), A038590(n)]`
-/

namespace A038160.P7387324305813005869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038160.P7387324305813005869

/-! ## A038160.P2587973325438552514

`∩[A202822(n+1), A038591(n)]`
-/

namespace A038160.P2587973325438552514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038160.P2587973325438552514

/-! ## A038160.P17545305091081495799

`∩[A260682(n+1), A038591(n)]`
-/

namespace A038160.P17545305091081495799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038160.P17545305091081495799

/-! ## A038160.P9321381600515611417

`∩[A003136(n+1), A038590(n)]`
-/

namespace A038160.P9321381600515611417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038160.P9321381600515611417

/-! ## A038160.P12892886888117159916

`∩[A035246(n+1), A038590(n)]`
-/

namespace A038160.P12892886888117159916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038160.P12892886888117159916

/-!
# A038161: (A038590-1)/6.

The programs for A038161, there is no canonical definition to state claims against.
-/

/-! ## A038161.P2746146333751956683

`floor(A038590(n)/6)`
-/

namespace A038161.P2746146333751956683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038590 n : ℚ) / 6⌋

end

end A038161.P2746146333751956683

/-! ## A038161.P11037381095065925685

`∑[floor(A035019(n)/6)]`
-/

namespace A038161.P11037381095065925685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035019 n : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038161.P11037381095065925685

/-! ## A038161.P13650538807500178248

`∑[A008615(A035019(n))]`
-/

namespace A038161.P13650538807500178248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A035019 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038161.P13650538807500178248

/-! ## A038161.P4669014014717684529

`comp[A038162(n+1)]`
-/

namespace A038161.P4669014014717684529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A038161.P4669014014717684529

/-! ## A038161.P3308662057630663166

`lt[0, char[A014202(n)]]`
-/

namespace A038161.P3308662057630663166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014202 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A038161.P3308662057630663166

/-! ## A038161.P960608568244280611

`A014202(A003136(n+1))`
-/

namespace A038161.P960608568244280611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014202 (A003136 (n + 1)).toNat

end

end A038161.P960608568244280611

/-! ## A038161.P13067566647097664755

`A008612(A038590(n))`
-/

namespace A038161.P13067566647097664755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A038590 n).toNat

end

end A038161.P13067566647097664755

/-! ## A038161.P449580314388219027

`A103221(∑[A035019(n)])`
-/

namespace A038161.P449580314388219027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A038161.P449580314388219027

/-! ## A038161.P9699946796562974008

`record[A002324(2*(n+1))-a(n-1)]` with `a(0)=0`
-/

namespace A038161.P9699946796562974008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A002324 (2 * (n + 1)) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038161.P9699946796562974008

/-!
# A038162: Numbers missing from A038161.

The programs for A038162, there is no canonical definition to state claims against.
-/

/-! ## A038162.P14806088744452778232

`comp[A038161(n)]`
-/

namespace A038162.P14806088744452778232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038161 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A038162.P14806088744452778232

/-! ## A038162.P2181465197512172160

`eq[0, char[A038161(A004396(n))]]`
-/

namespace A038162.P2181465197512172160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038161 (A004396 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038162.P2181465197512172160

/-! ## A038162.P16914182800297617749

`eq[0, char[A038161(A057353(n))]]`
-/

namespace A038162.P16914182800297617749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038161 (A057353 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038162.P16914182800297617749

/-! ## A038162.P7438691684904200924

`eq[char[A038161(n)], A000038(n)]`
-/

namespace A038162.P7438691684904200924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038161 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A038162.P7438691684904200924

/-! ## A038162.P16630485707925852219

`comp[A014202(n)]`
-/

namespace A038162.P16630485707925852219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014202 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A038162.P16630485707925852219

/-! ## A038162.P13994697227701720800

`eq[char[A014202(n)], A014197(2*n+1)]`
-/

namespace A038162.P13994697227701720800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014202 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A038162.P13994697227701720800

/-!
# A038163: G.f.: 1/((1-x)*(1-x^2))^3.

The programs for A038163, the canonical program `A038163.P17816714790695461700` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038163 has offset 0).

The definition of A038163 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038163.P17816714790695461700

`∑[∑[C(floor(n/2)+3, 3)]]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038163

/-- `∑[∑[C(floor(n/2)+3, 3)]]` -/
def P17816714790695461700.Spec : Prop :=
  ∀ n, (P17816714790695461700.a n : ℤ) = A038163 n

theorem P17816714790695461700.correct : P17816714790695461700.Spec := by
  intro n
  simp only [A038163]

end A038163

/-! ## A038163.P17367551228876746039

`∑[∑[∑[(4/n+1)*a(n-2)]]]` with `a(0)=1, a(1)=0`
-/

namespace A038163.P17367551228876746039
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n f3 =>
  (4 / (n : ℚ) + 1) * f3 (n - 2)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038163.P17367551228876746039

namespace A038163

/-- `∑[∑[∑[(4/n+1)*a(n-2)]]]` -/
def P17367551228876746039.Spec : Prop :=
  ∀ n, P17367551228876746039.a n = (A038163 n : ℚ)

end A038163

/-! ## A038163.P4614347663122520965

`∑[∑[∑[∑[∑[∑[(-1)^n*∑[n+1]]]]]]]`
-/

namespace A038163.P4614347663122520965
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ((∑ j ∈ Finset.range (n + 1), f7 j : ℕ) : ℤ)

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038163.P4614347663122520965

namespace A038163

/-- `∑[∑[∑[∑[∑[∑[(-1)^n*∑[n+1]]]]]]]` -/
def P4614347663122520965.Spec : Prop :=
  ∀ n, P4614347663122520965.a n = A038163 n

end A038163

/-! ## A038163.P6190015966136662929

`A028346(n)-a(n-1)` with `a(0)=1`
-/

namespace A038163.P6190015966136662929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028346 n - a (n - 1)

end

end A038163.P6190015966136662929

namespace A038163

/-- `A028346(n)-a(n-1)` -/
def P6190015966136662929.Spec : Prop :=
  ∀ n, P6190015966136662929.a n = A038163 n

end A038163

/-! ## A038163.P3046784423825816608

`A002624(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A038163.P3046784423825816608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A002624 n + a (n - 2)

end

end A038163.P3046784423825816608

namespace A038163

/-- `A002624(n)+a(n-2)` -/
def P3046784423825816608.Spec : Prop :=
  ∀ n, P3046784423825816608.a n = A038163 n

end A038163

/-! ## A038163.P15978143564639470785

`∪[A034263(n), A059599(n)]`
-/

namespace A038163.P15978143564639470785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059599 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038163.P15978143564639470785

namespace A038163

/-- `∪[A034263(n), A059599(n)]` -/
def P15978143564639470785.Spec : Prop :=
  ∀ n, (P15978143564639470785.a n : ℤ) = A038163 n

end A038163

/-! ## A038163.P6268627076052138449

`2*A054343(n)-A054771(n)`
-/

namespace A038163.P6268627076052138449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054343 n - A054771 n

end

end A038163.P6268627076052138449

namespace A038163

/-- `2*A054343(n)-A054771(n)` -/
def P6268627076052138449.Spec : Prop :=
  ∀ n, P6268627076052138449.a n = A038163 n

end A038163

/-! ## A038163.P15324840321273336600

`2*A060099(n)-A299335(n)`
-/

namespace A038163.P15324840321273336600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060099 n - A299335 n

end

end A038163.P15324840321273336600

namespace A038163

/-- `2*A060099(n)-A299335(n)` -/
def P15324840321273336600.Spec : Prop :=
  ∀ n, P15324840321273336600.a n = A038163 n

end A038163

/-! ## A038163.P10007188851692584632

`∑[2*A189976(n+8)]-A189976(n+8)`
-/

namespace A038163.P10007188851692584632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A189976 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A189976 (n + 8)

end

end A038163.P10007188851692584632

namespace A038163

/-- `∑[2*A189976(n+8)]-A189976(n+8)` -/
def P10007188851692584632.Spec : Prop :=
  ∀ n, P10007188851692584632.a n = A038163 n

end A038163

/-! ## A038163.P200523024324387705

`A096338(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A038163.P200523024324387705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A096338 (n + 1) + a (n - 1)

end

end A038163.P200523024324387705

namespace A038163

/-- `A096338(n+1)+a(n-1)` -/
def P200523024324387705.Spec : Prop :=
  ∀ n, P200523024324387705.a n = A038163 n

end A038163

/-! ## A038163.P4095122838219012212

`A096338(n+1)+∑[A096338(n)]`
-/

namespace A038163.P4095122838219012212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096338 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096338 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038163.P4095122838219012212

namespace A038163

/-- `A096338(n+1)+∑[A096338(n)]` -/
def P4095122838219012212.Spec : Prop :=
  ∀ n, P4095122838219012212.a n = A038163 n

end A038163

/-! ## A038163.P4468261382019037175

`A028346(n+1)+A060099(n)-A060099(n+1)`
-/

namespace A038163.P4468261382019037175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028346 (n + 1) + (A060099 n - A060099 (n + 1))

end

end A038163.P4468261382019037175

namespace A038163

/-- `A028346(n+1)+A060099(n)-A060099(n+1)` -/
def P4468261382019037175.Spec : Prop :=
  ∀ n, P4468261382019037175.a n = A038163 n

end A038163

/-! ## A038163.P6794965895554404172

`A059594(A167614(n+1)-1)`
-/

namespace A038163.P6794965895554404172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059594 (A167614 (n + 1) - 1).toNat

end

end A038163.P6794965895554404172

namespace A038163

/-- `A059594(A167614(n+1)-1)` -/
def P6794965895554404172.Spec : Prop :=
  ∀ n, P6794965895554404172.a n = A038163 n

end A038163

/-! ## A038163.P16418909876209315579

`A059594(A000217(n+2)+2)`
-/

namespace A038163.P16418909876209315579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059594 (A000217 (n + 2) + 2).toNat

end

end A038163.P16418909876209315579

namespace A038163

/-- `A059594(A000217(n+2)+2)` -/
def P16418909876209315579.Spec : Prop :=
  ∀ n, P16418909876209315579.a n = A038163 n

end A038163

/-! ## A038163.P11095758507562149811

`A210391(∑[n+3]+n+3)`
-/

namespace A038163.P11095758507562149811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A038163.P11095758507562149811

namespace A038163

/-- `A210391(∑[n+3]+n+3)` -/
def P11095758507562149811.Spec : Prop :=
  ∀ n, P11095758507562149811.a n = A038163 n

end A038163

/-! ## A038163.P6147727115838616572

`A060086(A167614(n+2))`
-/

namespace A038163.P6147727115838616572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (A167614 (n + 2)).toNat

end

end A038163.P6147727115838616572

namespace A038163

/-- `A060086(A167614(n+2))` -/
def P6147727115838616572.Spec : Prop :=
  ∀ n, P6147727115838616572.a n = A038163 n

end A038163

/-! ## A038163.P11752014621427512145

`A060086(eq[3, A002262(n)])`
-/

namespace A038163.P11752014621427512145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038163.P11752014621427512145

namespace A038163

/-- `A060086(eq[3, A002262(n)])` -/
def P11752014621427512145.Spec : Prop :=
  ∀ n, P11752014621427512145.a n = A038163 n

end A038163

/-! ## A038163.P708380479652979351

`A060086(eq[2, A002260(n+1)-2])`
-/

namespace A038163.P708380479652979351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038163.P708380479652979351

namespace A038163

/-- `A060086(eq[2, A002260(n+1)-2])` -/
def P708380479652979351.Spec : Prop :=
  ∀ n, P708380479652979351.a n = A038163 n

end A038163

/-! ## A038163.P15936387496870932762

`A060086(eq[2, A134868(n+1)-2])`
-/

namespace A038163.P15936387496870932762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038163.P15936387496870932762

namespace A038163

/-- `A060086(eq[2, A134868(n+1)-2])` -/
def P15936387496870932762.Spec : Prop :=
  ∀ n, P15936387496870932762.a n = A038163 n

end A038163

/-! ## A038163.P11245601028404794356

`A060086(eq[2, A002260(n+1)/2])`
-/

namespace A038163.P11245601028404794356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A038163.P11245601028404794356

namespace A038163

/-- `A060086(eq[2, A002260(n+1)/2])` -/
def P11245601028404794356.Spec : Prop :=
  ∀ n, P11245601028404794356.a n = A038163 n

end A038163

/-!
# A038164: Expansion of 1/((1-x)*(1-x^2))^4.

The programs for A038164, the canonical program `A038164.P1586895725578601011` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038164 has offset 0).

The definition of A038164 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+2x^2+12x^3-17x^4-8x^5+28x^6-8x^7-17x^8+12x^9+2x^10-4x^11+x^12))` (program `A038164.P1586895725578601011`, by `A038164.P1586895725578601011.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A038164.P1586895725578601011

`ogf(1/(1-4x+2x^2+12x^3-17x^4-8x^5+28x^6-8x^7-17x^8+12x^9+2x^10-4x^11+x^12))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038164

/-- `ogf(1/(1-4x+2x^2+12x^3-17x^4-8x^5+28x^6-8x^7-17x^8+12x^9+2x^10-4x^11+x^12))` -/
def P1586895725578601011.Spec : Prop :=
  ∀ n, P1586895725578601011.a n = A038164 n

theorem P1586895725578601011.correct : P1586895725578601011.Spec := by
  intro n
  simp only [A038164]

end A038164

/-! ## A038164.P4970702508649483646

`∑[A299336(n)]`
-/

namespace A038164.P4970702508649483646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038164.P4970702508649483646

namespace A038164

/-- `∑[A299336(n)]` -/
def P4970702508649483646.Spec : Prop :=
  ∀ n, P4970702508649483646.a n = A038164 n

end A038164

/-! ## A038164.P486088881164088878

`∑[∑[A177747(n)]]`
-/

namespace A038164.P486088881164088878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177747 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038164.P486088881164088878

namespace A038164

/-- `∑[∑[A177747(n)]]` -/
def P486088881164088878.Spec : Prop :=
  ∀ n, P486088881164088878.a n = A038164 n

end A038164

/-! ## A038164.P9377470605349489527

`∑[∑[∑[A189976(n+8)]]]`
-/

namespace A038164.P9377470605349489527
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189976 (n + 8)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038164.P9377470605349489527

namespace A038164

/-- `∑[∑[∑[A189976(n+8)]]]` -/
def P9377470605349489527.Spec : Prop :=
  ∀ n, P9377470605349489527.a n = A038164 n

end A038164

/-! ## A038164.P3251656204236417671

`A060099(n)+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A038164.P3251656204236417671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A060099 n + a (n - 2)

end

end A038164.P3251656204236417671

namespace A038164

/-- `A060099(n)+a(n-2)` -/
def P3251656204236417671.Spec : Prop :=
  ∀ n, P3251656204236417671.a n = A038164 n

end A038164

/-! ## A038164.P4658832276559011331

`A031164(n)-a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A038164.P4658832276559011331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A031164 n - a (n - 2)

end

end A038164.P4658832276559011331

namespace A038164

/-- `A031164(n)-a(n-2)` -/
def P4658832276559011331.Spec : Prop :=
  ∀ n, P4658832276559011331.a n = A038164 n

end A038164

/-! ## A038164.P7517501730791094524

`∑[∑[A038163(n)-a(n-1)]]` with `a(0)=1`
-/

namespace A038164.P7517501730791094524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A038163 n - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038164.P7517501730791094524

namespace A038164

/-- `∑[∑[A038163(n)-a(n-1)]]` -/
def P7517501730791094524.Spec : Prop :=
  ∀ n, P7517501730791094524.a n = A038164 n

end A038164

/-! ## A038164.P2972265063516591928

`∑[2*A299337(n)]-A299337(n)`
-/

namespace A038164.P2972265063516591928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A299337 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A299337 n

end

end A038164.P2972265063516591928

namespace A038164

/-- `∑[2*A299337(n)]-A299337(n)` -/
def P2972265063516591928.Spec : Prop :=
  ∀ n, P2972265063516591928.a n = A038164 n

end A038164

/-! ## A038164.P1844963774838178007

`∑[∑[∑[A109221(∑[n+3])]]]`
-/

namespace A038164.P1844963774838178007
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109221 (∑ j ∈ Finset.range (n + 1), f4 j)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038164.P1844963774838178007

namespace A038164

/-- `∑[∑[∑[A109221(∑[n+3])]]]` -/
def P1844963774838178007.Spec : Prop :=
  ∀ n, P1844963774838178007.a n = A038164 n

end A038164

/-! ## A038164.P4858285222300144324

`A059594(A167614(n+2))`
-/

namespace A038164.P4858285222300144324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059594 (A167614 (n + 2)).toNat

end

end A038164.P4858285222300144324

namespace A038164

/-- `A059594(A167614(n+2))` -/
def P4858285222300144324.Spec : Prop :=
  ∀ n, P4858285222300144324.a n = A038164 n

end A038164

/-! ## A038164.P16798961534772324433

`∑[A188316(A166136(n+2)-3)]`
-/

namespace A038164.P16798961534772324433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188316 (A166136 (n + 2) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038164.P16798961534772324433

namespace A038164

/-- `∑[A188316(A166136(n+2)-3)]` -/
def P16798961534772324433.Spec : Prop :=
  ∀ n, P16798961534772324433.a n = A038164 n

end A038164

/-! ## A038164.P15318808276563558729

`A060086(eq[4, A002262(n)])`
-/

namespace A038164.P15318808276563558729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038164.P15318808276563558729

namespace A038164

/-- `A060086(eq[4, A002262(n)])` -/
def P15318808276563558729.Spec : Prop :=
  ∀ n, P15318808276563558729.a n = A038164 n

end A038164

/-!
# A038165: G.f.: 1/((1-x)*(1-x^2))^5.

The programs for A038165, the canonical program `A038165.P687661827417088230` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038165 has offset 0).

The definition of A038165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038165.P687661827417088230

`∑[∑[∑[∑[C(floor(n/2)+5, 5)]]]]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038165

/-- `∑[∑[∑[∑[C(floor(n/2)+5, 5)]]]]` -/
def P687661827417088230.Spec : Prop :=
  ∀ n, (P687661827417088230.a n : ℤ) = A038165 n

theorem P687661827417088230.correct : P687661827417088230.Spec := by
  intro n
  simp only [A038165]

end A038165

/-! ## A038165.P12553098800391498956

`∑[∑[∑[A299337(n)]]]`
-/

namespace A038165.P12553098800391498956
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299337 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038165.P12553098800391498956

namespace A038165

/-- `∑[∑[∑[A299337(n)]]]` -/
def P12553098800391498956.Spec : Prop :=
  ∀ n, P12553098800391498956.a n = A038165 n

end A038165

/-! ## A038165.P17196829903518774749

`A060100(n)+a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A038165.P17196829903518774749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  A060100 n + a (n - 2)

end

end A038165.P17196829903518774749

namespace A038165

/-- `A060100(n)+a(n-2)` -/
def P17196829903518774749.Spec : Prop :=
  ∀ n, P17196829903518774749.a n = A038165 n

end A038165

/-! ## A038165.P5399581512298441505

`∑[∑[A299336(n)+a(n-1)]]-a(n-1)` with `a(0)=1`
-/

namespace A038165.P5399581512298441505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A299336 n + f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A038165.P5399581512298441505

namespace A038165

/-- `∑[∑[A299336(n)+a(n-1)]]-a(n-1)` -/
def P5399581512298441505.Spec : Prop :=
  ∀ n, P5399581512298441505.a n = A038165 n

end A038165

/-! ## A038165.P7105646669891541116

`∪[A059601(n), A059602(n)]`
-/

namespace A038165.P7105646669891541116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059602 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038165.P7105646669891541116

namespace A038165

/-- `∪[A059601(n), A059602(n)]` -/
def P7105646669891541116.Spec : Prop :=
  ∀ n, (P7105646669891541116.a n : ℤ) = A038165 n

end A038165

/-! ## A038165.P2685793627560705114

`Δ[A060101(n+1)]-A060100(n+2)`
-/

namespace A038165.P2685793627560705114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A060100 (n + 2)

end

end A038165.P2685793627560705114

namespace A038165

/-- `Δ[A060101(n+1)]-A060100(n+2)` -/
def P2685793627560705114.Spec : Prop :=
  ∀ n, P2685793627560705114.a n = A038165 n

end A038165

/-! ## A038165.P2231284772716844335

`A210391(A052905(n+1))+A210391(A052905(n+2))`
-/

namespace A038165.P2231284772716844335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A052905 (n + 1)).toNat + A210391 (A052905 (n + 2)).toNat

end

end A038165.P2231284772716844335

namespace A038165

/-- `A210391(A052905(n+1))+A210391(A052905(n+2))` -/
def P2231284772716844335.Spec : Prop :=
  ∀ n, P2231284772716844335.a n = A038165 n

end A038165

/-!
# A038166: G.f.: 1/((1-x)*(1-x^2))^6.

The programs for A038166, the canonical program `A038166.P3385764803193265967` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038166 has offset 0).

The definition of A038166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038166.P17418487057645938357

`∑[∑[A054498(n)]]`
-/

namespace A038166.P17418487057645938357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054498 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038166.P17418487057645938357

namespace A038166

/-- `∑[∑[A054498(n)]]` -/
def P17418487057645938357.Spec : Prop :=
  ∀ n, P17418487057645938357.a n = A038166 n

end A038166

/-! ## A038166.P4312533824185654977

`∑[∑[∑[∑[A178440(n)]]]]`
-/

namespace A038166.P4312533824185654977
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178440 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038166.P4312533824185654977

namespace A038166

/-- `∑[∑[∑[∑[A178440(n)]]]]` -/
def P4312533824185654977.Spec : Prop :=
  ∀ n, P4312533824185654977.a n = A038166 n

end A038166

/-! ## A038166.P13196047699323917263

`A060101(n)+a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A038166.P13196047699323917263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  A060101 n + a (n - 2)

end

end A038166.P13196047699323917263

namespace A038166

/-- `A060101(n)+a(n-2)` -/
def P13196047699323917263.Spec : Prop :=
  ∀ n, P13196047699323917263.a n = A038166 n

end A038166

/-! ## A038166.P3385764803193265967

`∑[∑[A038165(n)-a(n-1)]]` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038166

/-- `∑[∑[A038165(n)-a(n-1)]]` -/
def P3385764803193265967.Spec : Prop :=
  ∀ n, P3385764803193265967.a n = A038166 n

theorem P3385764803193265967.correct : P3385764803193265967.Spec := by
  intro n
  simp only [A038166]

end A038166

/-! ## A038166.P15075644991361719013

`∪[2*A059624(n), A059603(n)]`
-/

namespace A038166.P15075644991361719013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059624 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059603 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038166.P15075644991361719013

namespace A038166

/-- `∪[2*A059624(n), A059603(n)]` -/
def P15075644991361719013.Spec : Prop :=
  ∀ n, (P15075644991361719013.a n : ℤ) = A038166 n

end A038166

/-! ## A038166.P6708518875415784203

`∑[∑[A210391(A052905(n+2))]]`
-/

namespace A038166.P6708518875415784203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A052905 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038166.P6708518875415784203

namespace A038166

/-- `∑[∑[A210391(A052905(n+2))]]` -/
def P6708518875415784203.Spec : Prop :=
  ∀ n, P6708518875415784203.a n = A038166 n

end A038166

/-!
# A038167: G.f.: x*(1+3*x+x^2)/((1-x^2)^2*(1-x^5)).

The programs for A038167, the canonical program `A038167.P550872894812317595` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038167 has offset 0).

The definition of A038167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038167.P2708942328761431149

`A008805(n)-char[5*n]`
-/

namespace A038167.P2708942328761431149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A038167.P2708942328761431149

namespace A038167

/-- `A008805(n)-char[5*n]` -/
def P2708942328761431149.Spec : Prop :=
  ∀ n, P2708942328761431149.a n = A038167 n

end A038167

/-! ## A038167.P14780420676589779114

`∑[A027656(n)-A010891(n)]`
-/

namespace A038167.P14780420676589779114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n - A010891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038167.P14780420676589779114

namespace A038167

/-- `∑[A027656(n)-A010891(n)]` -/
def P14780420676589779114.Spec : Prop :=
  ∀ n, P14780420676589779114.a n = A038167 n

end A038167

/-! ## A038167.P550872894812317595

`∑[A027656(n)]-A079998(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038167

/-- `∑[A027656(n)]-A079998(n)` -/
def P550872894812317595.Spec : Prop :=
  ∀ n, P550872894812317595.a n = A038167 n

theorem P550872894812317595.correct : P550872894812317595.Spec := by
  intro n
  simp only [A038167]

end A038167

/-! ## A038167.P3429116171540945582

`A011558(n)+A008805(n)-1`
-/

namespace A038167.P3429116171540945582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 n + A008805 n - 1

end

end A038167.P3429116171540945582

namespace A038167

/-- `A011558(n)+A008805(n)-1` -/
def P3429116171540945582.Spec : Prop :=
  ∀ n, P3429116171540945582.a n = A038167 n

end A038167

/-! ## A038167.P7691226160402321017

`∑[A027656(n)]-char[A008587(n)]`
-/

namespace A038167.P7691226160402321017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A038167.P7691226160402321017

namespace A038167

/-- `∑[A027656(n)]-char[A008587(n)]` -/
def P7691226160402321017.Spec : Prop :=
  ∀ n, P7691226160402321017.a n = A038167 n

end A038167

/-! ## A038167.P13545118154282783306

`A000124(A008619(n))-gcd(5, n)%3`
-/

namespace A038167.P13545118154282783306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A008619 n).toNat - ((Nat.gcd 5 n % 3 : ℕ) : ℤ)

end

end A038167.P13545118154282783306

namespace A038167

/-- `A000124(A008619(n))-gcd(5, n)%3` -/
def P13545118154282783306.Spec : Prop :=
  ∀ n, P13545118154282783306.a n = A038167 n

end A038167

/-! ## A038167.P18434939750678673460

`Δ[A006918(n)]-A079998(n)`
-/

namespace A038167.P18434939750678673460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A079998 n

end

end A038167.P18434939750678673460

namespace A038167

/-- `Δ[A006918(n)]-A079998(n)` -/
def P18434939750678673460.Spec : Prop :=
  ∀ n, P18434939750678673460.a n = A038167 n

end A038167

/-!
# A038168: Number of "connected animals" formed from n tricapped truncated tetrahedra in the diamond lattice, allowing translation and rotations of the lattice.

The programs for A038168, there is no canonical definition to state claims against.
-/

/-! ## A038168.P16091420444668944382

`A060426(A019573(n))`
-/

namespace A038168.P16091420444668944382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060426 (A019573 n).toNat

end

end A038168.P16091420444668944382

/-! ## A038168.P10441244416119867274

`A060426(A301020(n))`
-/

namespace A038168.P10441244416119867274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060426 (A301020 n).toNat

end

end A038168.P10441244416119867274

/-! ## A038168.P4256774550421282230

`A126714(A356005(n!))`
-/

namespace A038168.P4256774550421282230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126714 (A356005 (Nat.factorial n)).toNat

end

end A038168.P4256774550421282230

/-!
# A038169: Number of "connected animals" formed from n triakis truncated tetrahedra connected along hexagonal faces in the triakis truncated tetrahedral honeycomb, allowing translations, rotations, and reflections of the honeycomb.

The programs for A038169, there is no canonical definition to state claims against.
-/

/-! ## A038169.P8482924880748319922

`A384486(∑[n+1])`
-/

namespace A038169.P8482924880748319922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384486 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038169.P8482924880748319922

/-! ## A038169.P4352878087068526856

`A036541(A103938(n+1)+7)`
-/

namespace A038169.P4352878087068526856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036541 (A103938 (n + 1) + 7).toNat

end

end A038169.P4352878087068526856

/-! ## A038169.P17788862708281965100

`A241312(A092483(n+2))+A092490(n+1)`
-/

namespace A038169.P17788862708281965100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241312 (A092483 (n + 2)).toNat + A092490 (n + 1)

end

end A038169.P17788862708281965100

/-! ## A038169.P7318876914610006339

`A086159(A057355(n))+A059995(A000732(n))`
-/

namespace A038169.P7318876914610006339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086159 (A057355 n).toNat + A059995 (A000732 n).toNat

end

end A038169.P7318876914610006339

/-!
# A038170: Number of "connected animals" formed from n 6-gon connected truncated octahedra (or corner-connected cubes) in the b.c.c. lattice, allowing translation and rotations of the lattice.

The programs for A038170, there is no canonical definition to state claims against.
-/

/-! ## A038170.P13759111159363779387

`A384756(∑[n+1])`
-/

namespace A038170.P13759111159363779387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384756 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038170.P13759111159363779387

/-! ## A038170.P8289303711920079198

`A269172(A007840(n))`
-/

namespace A038170.P8289303711920079198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269172 (A007840 n).toNat

end

end A038170.P8289303711920079198

/-!
# A038171: Number of "connected animals" formed from n 6-gon connected truncated octahedra (or corner connected cubes) in the b.c.c. lattice, allowing translation and rotations of the lattice and reflections.

The programs for A038171, there is no canonical definition to state claims against.
-/

/-! ## A038171.P10562160786817018728

`A384755(∑[n+1])`
-/

namespace A038171.P10562160786817018728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384755 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038171.P10562160786817018728

/-! ## A038171.P1350813073847329355

`A008621((a(n-1)+n-1)*n²)` with `a(0)=1`
-/

namespace A038171.P1350813073847329355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008621 ((a (n - 1) + (n : ℤ) - 1) * (n ^ 2 : ℤ)).toNat

end

end A038171.P1350813073847329355

/-!
# A038172: Number of "connected animals" formed from n rhombic dodecahedra (or edge-connected cubes) in the face-centered cubic lattice, allowing translation and rotations of the lattice.

The programs for A038172, there is no canonical definition to state claims against.
-/

/-! ## A038172.P12251279961757672039

`A004526(A351772(n)+A214899(n))`
-/

namespace A038172.P12251279961757672039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A351772 n + A214899 n).toNat

end

end A038172.P12251279961757672039

/-! ## A038172.P8812543050541891736

`A237593(n+1)+A057362(A136658(n))`
-/

namespace A038172.P8812543050541891736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (n + 1) + A057362 (A136658 n).toNat

end

end A038172.P8812543050541891736

/-!
# A038173: Number of "connected animals" formed from n rhombic dodecahedra (or edge-connected cubes) in the face-centered cubic lattice, allowing translation and rotations of the lattice and reflections.

The programs for A038173, there is no canonical definition to state claims against.
-/

/-! ## A038173.P13097694962369234319

`A312216(A121063(round(sqrt(n²+1))))`
-/

namespace A038173.P13097694962369234319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312216 (A121063 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat

end

end A038173.P13097694962369234319

/-! ## A038173.P17019747514394299408

`A312216(lcm(round(2*n/3), A121063(n)))`
-/

namespace A038173.P17019747514394299408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312216 (Int.lcm (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))) (A121063 n))

end

end A038173.P17019747514394299408

/-!
# A038174: Number of "polyspheres", or "connected animals" formed from n rhombic dodecahedra (or edge-connected cubes) in the f.c.c. lattice, allowing translation and rotations of the lattice, reflections and 180 deg. rotations about a 3-fold symmetry axis of the lattice.

The programs for A038174, there is no canonical definition to state claims against.
-/

/-! ## A038174.P2352542952706976958

`A291784(A343664(n)²)`
-/

namespace A038174.P2352542952706976958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291784 (A343664 n ^ 2).toNat

end

end A038174.P2352542952706976958

/-! ## A038174.P3950767497652073471

`A291784(A327702(n+1)²)`
-/

namespace A038174.P3950767497652073471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291784 (A327702 (n + 1) ^ 2).toNat

end

end A038174.P3950767497652073471

/-!
# A038175: Unbranched mono-5-catapolyheptagons.

The programs for A038175, there is no canonical definition to state claims against.
-/

/-! ## A038175.P7047023304224940053

`2*A038176(n+2)`
-/

namespace A038175.P7047023304224940053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038176 (n + 2)

end

end A038175.P7047023304224940053

/-! ## A038175.P13443643364596261669

`A038176(n+2)+A038176(lt[∏{p}[n, (n-1)/#], n])`
-/

namespace A038175.P13443643364596261669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((n : ℤ) - 1 : ℚ) / (p : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038176 (n + 2) + A038176 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n)

end

end A038175.P13443643364596261669

/-! ## A038175.P16651619935343931547

`A038176(A070776(n+1))+A038176(n+2)`
-/

namespace A038175.P16651619935343931547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038176 (A070776 (n + 1)).toNat + A038176 (n + 2)

end

end A038175.P16651619935343931547

/-! ## A038175.P17552170644574197909

`A038176(A178787(n+1))+A038176(n+2)`
-/

namespace A038175.P17552170644574197909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038176 (A178787 (n + 1)).toNat + A038176 (n + 2)

end

end A038175.P17552170644574197909

/-! ## A038175.P9155656688282527266

`A038176(A257333(n+1))+A038176(n+2)`
-/

namespace A038175.P9155656688282527266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038176 (A257333 (n + 1)).toNat + A038176 (n + 2)

end

end A038175.P9155656688282527266

/-!
# A038176: A038175/2.

The programs for A038176, there is no canonical definition to state claims against.
-/

/-! ## A038176.P288675643287486566

`A038175(n+2)/2`
-/

namespace A038176.P288675643287486566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038175 (n + 2) : ℚ) / 2

end

end A038176.P288675643287486566

/-! ## A038176.P9047794808083970754

`A014682(A038175(n+2))`
-/

namespace A038176.P9047794808083970754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A038175 (n + 2)).toNat

end

end A038176.P9047794808083970754

/-! ## A038176.P6223148346740197468

`A273943(A038175(n+2)*A053632(n))`
-/

namespace A038176.P6223148346740197468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A038175 (n + 2) * A053632 n).toNat

end

end A038176.P6223148346740197468

/-! ## A038176.P6982589351212581591

`A071625(n+1)*A273943(A038175(n+2))`
-/

namespace A038176.P6982589351212581591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (n + 1) * A273943 (A038175 (n + 2)).toNat

end

end A038176.P6982589351212581591

/-! ## A038176.P8411804386644290144

`A124766(2*n)*A273943(A038175(n+2))`
-/

namespace A038176.P8411804386644290144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (2 * n) * A273943 (A038175 (n + 2)).toNat

end

end A038176.P8411804386644290144

/-!
# A038177: Number of unbranched mono-5-catapolyheptagons.

The programs for A038177, there is no canonical definition to state claims against.
-/

/-! ## A038177.P15997215605156241922

`A323850(C(n+3, 2))`
-/

namespace A038177.P15997215605156241922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323850 (Nat.choose (n + 3) 2)

end

end A038177.P15997215605156241922

/-! ## A038177.P10641523995955202627

`A323850(∑[n+2]+1)`
-/

namespace A038177.P10641523995955202627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323850 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A038177.P10641523995955202627

/-! ## A038177.P1952562791598116373

`record[gcd(A171224(n), A323850(n+2))]`
-/

namespace A038177.P1952562791598116373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A171224 n) (A323850 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038177.P1952562791598116373

/-! ## A038177.P2876792174587119811

`A323850(A109811(n+3))%A231965(n+2)`
-/

namespace A038177.P2876792174587119811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323850 (A109811 (n + 3)).toNat) (A231965 (n + 2))

end

end A038177.P2876792174587119811

/-!
# A038178: Numbers k such that k = (sum of digits of k)^(number of digits of k).

The programs for A038178, there is no canonical definition to state claims against.
-/

/-! ## A038178.P289607201218809006

`A246605(char[12]+n)`
-/

namespace A038178.P289607201218809006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246605 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A038178.P289607201218809006

/-! ## A038178.P6426636789254645205

`A023106(char[13]+n)`
-/

namespace A038178.P6426636789254645205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023106 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A038178.P6426636789254645205

/-! ## A038178.P6446245491780885484

`A023106(n)-char[13]`
-/

namespace A038178.P6446245491780885484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023106 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A038178.P6446245491780885484

/-! ## A038178.P2628788016899358969

`A106618(A023106(n))`
-/

namespace A038178.P2628788016899358969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (A023106 n).toNat

end

end A038178.P2628788016899358969

/-! ## A038178.P3214321218443123190

`A135480(A025483(n))`
-/

namespace A038178.P3214321218443123190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135480 (A025483 n).toNat

end

end A038178.P3214321218443123190

/-!
# A038179: Result of second stage of sieve of Eratosthenes (after eliminating multiples of 2 and 3).

The programs for A038179, the canonical program `A038179.P6110244502415694594` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038179 has offset 1).

The definition of A038179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038179.P6110244502415694594

`a(n-2)+6` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038179

/-- `a(n-2)+6` -/
def P6110244502415694594.Spec : Prop :=
  ∀ n, (P6110244502415694594.a n : ℤ) = A038179 (n + 1)

theorem P6110244502415694594.correct : P6110244502415694594.Spec := by
  intro n
  simp only [A038179, Nat.add_sub_cancel]

end A038179

/-! ## A038179.P7947097359430519575

`∑[6-a(n-1)]` with `a(0)=2, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A038179.P7947097359430519575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 2, 2] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038179.P7947097359430519575

namespace A038179

/-- `∑[6-a(n-1)]` -/
def P7947097359430519575.Spec : Prop :=
  ∀ n, P7947097359430519575.a n = A038179 (n + 1)

end A038179

/-! ## A038179.P4449026856547672869

`record[n-a(a(n-3))]` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A038179.P4449026856547672869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n f1 =>
  (n : ℤ) - f1 (f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038179.P4449026856547672869

namespace A038179

/-- `record[n-a(a(n-3))]` -/
def P4449026856547672869.Spec : Prop :=
  ∀ n, P4449026856547672869.a n = A038179 (n + 1)

end A038179

/-! ## A038179.P9031323153061896656

`ogf((2+x+x^3+2x^4)/(1-x-x^2+x^3))`
-/

namespace A038179.P9031323153061896656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 0, 1, 2] [1, -1, -1, 1] n

end

end A038179.P9031323153061896656

namespace A038179

/-- `ogf((2+x+x^3+2x^4)/(1-x-x^2+x^3))` -/
def P9031323153061896656.Spec : Prop :=
  ∀ n, P9031323153061896656.a n = A038179 (n + 1)

end A038179

/-! ## A038179.P13168400267745519242

`3*n-gcd(2, a(n-1)-n)` with `a(0)=2, a(1)=3`
-/

namespace A038179.P13168400267745519242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  (3 * n : ℤ) - (Int.gcd 2 (a (n - 1) - (n : ℤ)) : ℤ)

end

end A038179.P13168400267745519242

namespace A038179

/-- `3*n-gcd(2, a(n-1)-n)` -/
def P13168400267745519242.Spec : Prop :=
  ∀ n, P13168400267745519242.a n = A038179 (n + 1)

end A038179

/-! ## A038179.P9036238887951186197

`eq[n-1, floor((n-1)/a(n-3))]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A038179.P9036238887951186197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n f2 =>
  ⌊((n : ℤ) - 1 : ℚ) / (f2 (n - 3) : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A038179.P9036238887951186197

namespace A038179

/-- `eq[n-1, floor((n-1)/a(n-3))]` -/
def P9036238887951186197.Spec : Prop :=
  ∀ n, (P9036238887951186197.a n : ℤ) = A038179 (n + 1)

end A038179

/-! ## A038179.P1658886901052202715

`∑[A106469(abs(1-n))]`
-/

namespace A038179.P1658886901052202715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106469 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038179.P1658886901052202715

namespace A038179

/-- `∑[A106469(abs(1-n))]` -/
def P1658886901052202715.Spec : Prop :=
  ∀ n, P1658886901052202715.a n = A038179 (n + 1)

end A038179

/-! ## A038179.P11044935349769921897

`eq[2, A196437(n+1)]+1`
-/

namespace A038179.P11044935349769921897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196437 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A038179.P11044935349769921897

namespace A038179

/-- `eq[2, A196437(n+1)]+1` -/
def P11044935349769921897.Spec : Prop :=
  ∀ n, (P11044935349769921897.a n : ℤ) = A038179 (n + 1)

end A038179

/-! ## A038179.P17715743957250656935

`eq[2, A196441(n+1)]+1`
-/

namespace A038179.P17715743957250656935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196441 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A038179.P17715743957250656935

namespace A038179

/-- `eq[2, A196441(n+1)]+1` -/
def P17715743957250656935.Spec : Prop :=
  ∀ n, (P17715743957250656935.a n : ℤ) = A038179 (n + 1)

end A038179

/-! ## A038179.P3459896368748356880

`A267458(n)+A004277(n)`
-/

namespace A038179.P3459896368748356880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 n + A004277 n

end

end A038179.P3459896368748356880

namespace A038179

/-- `A267458(n)+A004277(n)` -/
def P3459896368748356880.Spec : Prop :=
  ∀ n, P3459896368748356880.a n = A038179 (n + 1)

end A038179

/-! ## A038179.P15980138037367455767

`A113679(n)+A047241(n+1)`
-/

namespace A038179.P15980138037367455767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113679 n + A047241 (n + 1)

end

end A038179.P15980138037367455767

namespace A038179

/-- `A113679(n)+A047241(n+1)` -/
def P15980138037367455767.Spec : Prop :=
  ∀ n, P15980138037367455767.a n = A038179 (n + 1)

end A038179

/-! ## A038179.P11619584573776748124

`A267458(n)+A004275(n+1)`
-/

namespace A038179.P11619584573776748124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 n + A004275 (n + 1)

end

end A038179.P11619584573776748124

namespace A038179

/-- `A267458(n)+A004275(n+1)` -/
def P11619584573776748124.Spec : Prop :=
  ∀ n, P11619584573776748124.a n = A038179 (n + 1)

end A038179

/-! ## A038179.P471323171748595291

`A266591(n)+A033627(n+1)`
-/

namespace A038179.P471323171748595291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 n + A033627 (n + 1)

end

end A038179.P471323171748595291

namespace A038179

/-- `A266591(n)+A033627(n+1)` -/
def P471323171748595291.Spec : Prop :=
  ∀ n, P471323171748595291.a n = A038179 (n + 1)

end A038179

/-! ## A038179.P9341612938252289409

`A300576(n+1)+A109613(n)`
-/

namespace A038179.P9341612938252289409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300576 (n + 1) + A109613 n

end

end A038179.P9341612938252289409

namespace A038179

/-- `A300576(n+1)+A109613(n)` -/
def P9341612938252289409.Spec : Prop :=
  ∀ n, P9341612938252289409.a n = A038179 (n + 1)

end A038179

/-! ## A038179.P101714156012693437

`A047270(n+1)-A151798(n)`
-/

namespace A038179.P101714156012693437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (n + 1) - A151798 n

end

end A038179.P101714156012693437

namespace A038179

/-- `A047270(n+1)-A151798(n)` -/
def P101714156012693437.Spec : Prop :=
  ∀ n, P101714156012693437.a n = A038179 (n + 1)

end A038179

/-! ## A038179.P10546720192312279246

`∪[A000040(n+1), A038509(n+1)]`
-/

namespace A038179.P10546720192312279246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038179.P10546720192312279246

namespace A038179

/-- `∪[A000040(n+1), A038509(n+1)]` -/
def P10546720192312279246.Spec : Prop :=
  ∀ n, (P10546720192312279246.a n : ℤ) = A038179 (n + 1)

end A038179

/-! ## A038179.P2694573827909638839

`∪[A038509(n+1), A054403(n+1)]`
-/

namespace A038179.P2694573827909638839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038179.P2694573827909638839

namespace A038179

/-- `∪[A038509(n+1), A054403(n+1)]` -/
def P2694573827909638839.Spec : Prop :=
  ∀ n, (P2694573827909638839.a n : ℤ) = A038179 (n + 1)

end A038179

/-! ## A038179.P5807440030282606380

`∪[A038509(n+1), A055398(n+1)]`
-/

namespace A038179.P5807440030282606380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038179.P5807440030282606380

namespace A038179

/-- `∪[A038509(n+1), A055398(n+1)]` -/
def P5807440030282606380.Spec : Prop :=
  ∀ n, (P5807440030282606380.a n : ℤ) = A038179 (n + 1)

end A038179

/-! ## A038179.P10085917404425806587

`∪[A054403(n+1), A054550(n+1)]`
-/

namespace A038179.P10085917404425806587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038179.P10085917404425806587

namespace A038179

/-- `∪[A054403(n+1), A054550(n+1)]` -/
def P10085917404425806587.Spec : Prop :=
  ∀ n, (P10085917404425806587.a n : ℤ) = A038179 (n + 1)

end A038179

/-! ## A038179.P16100393886389826453

`∪[A054403(n+1), A063149(n+1)]`
-/

namespace A038179.P16100393886389826453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038179.P16100393886389826453

namespace A038179

/-- `∪[A054403(n+1), A063149(n+1)]` -/
def P16100393886389826453.Spec : Prop :=
  ∀ n, (P16100393886389826453.a n : ℤ) = A038179 (n + 1)

end A038179

/-!
# A038180: Number of "connected animals" formed from n square- or hexagon-connected truncated octahedra in the b.c.c. lattice, allowing translation and rotations of the lattice.

The programs for A038180, there is no canonical definition to state claims against.
-/

/-! ## A038180.P4185105154177392423

`∑[A312245(round(n^n/3))]`
-/

namespace A038180.P4185105154177392423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312245 (SequenceMachineLib.roundAway ((n ^ n : ℚ) / 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038180.P4185105154177392423

/-!
# A038181: Number of "connected animals" formed from n 4-gon or 6-gon connected truncated octahedra in the b.c.c. lattice, allowing translation and rotations of the lattice and reflections.

The programs for A038181, there is no canonical definition to state claims against.
-/

/-! ## A038181.P13966367085223487938

`A130722(n)+A004275(A308755(n+1))`
-/

namespace A038181.P13966367085223487938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130722 n + A004275 (A308755 (n + 1)).toNat

end

end A038181.P13966367085223487938

/-! ## A038181.P7908046229632715205

`A053438(A342435(n+1)-A269380(n+1))`
-/

namespace A038181.P7908046229632715205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 (A342435 (n + 1) - A269380 (n + 1)).toNat

end

end A038181.P7908046229632715205

/-!
# A038183: One-dimensional cellular automaton 'sigma-minus' (Rule 90): 000,001,010,011,100,101,110,111 -> 0,1,0,1,1,0,1,0.

The programs for A038183, the canonical program `A038183.P17650465038200368135` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038183 has offset 0).

The definition of A038183 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038183.P17650465038200368135

`A001317(2*n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038183

/-- `A001317(2*n)` -/
def P17650465038200368135.Spec : Prop :=
  ∀ n, P17650465038200368135.a n = A038183 n

theorem P17650465038200368135.correct : P17650465038200368135.Spec := by
  intro n
  simp only [A038183]

end A038183

/-! ## A038183.P4569426702265452323

`xor(16*a(n-2), a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A038183.P4569426702265452323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  Nat.xor (16 * a (n - 2)) (a (n - 2))

end

end A038183.P4569426702265452323

namespace A038183

/-- `xor(16*a(n-2), a(n-2))` -/
def P4569426702265452323.Spec : Prop :=
  ∀ n, (P4569426702265452323.a n : ℤ) = A038183 n

end A038183

/-! ## A038183.P6404609366171915737

`2*a(and(n, n-1))+3*a(n-1)` with `a(0)=1`
-/

namespace A038183.P6404609366171915737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 3 * a (n - 1)

end

end A038183.P6404609366171915737

namespace A038183

/-- `2*a(and(n, n-1))+3*a(n-1)` -/
def P6404609366171915737.Spec : Prop :=
  ∀ n, (P6404609366171915737.a n : ℤ) = A038183 n

end A038183

/-! ## A038183.P2448746716619419784

`record[A101692(n)]`
-/

namespace A038183.P2448746716619419784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038183.P2448746716619419784

namespace A038183

/-- `record[A101692(n)]` -/
def P2448746716619419784.Spec : Prop :=
  ∀ n, P2448746716619419784.a n = A038183 n

end A038183

/-! ## A038183.P7500048892270481715

`A087745(4*n)`
-/

namespace A038183.P7500048892270481715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087745 (4 * n)

end

end A038183.P7500048892270481715

namespace A038183

/-- `A087745(4*n)` -/
def P7500048892270481715.Spec : Prop :=
  ∀ n, P7500048892270481715.a n = A038183 n

end A038183

/-! ## A038183.P12540487165733026925

`record[A133179(2*n)]`
-/

namespace A038183.P12540487165733026925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038183.P12540487165733026925

namespace A038183

/-- `record[A133179(2*n)]` -/
def P12540487165733026925.Spec : Prop :=
  ∀ n, P12540487165733026925.a n = A038183 n

end A038183

/-! ## A038183.P9927561719691999057

`4*A089893(n)+1`
-/

namespace A038183.P9927561719691999057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A089893 n + 1

end

end A038183.P9927561719691999057

namespace A038183

/-- `4*A089893(n)+1` -/
def P9927561719691999057.Spec : Prop :=
  ∀ n, P9927561719691999057.a n = A038183 n

end A038183

/-! ## A038183.P14837299168218559813

`record[A001317(A014681(n))]`
-/

namespace A038183.P14837299168218559813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038183.P14837299168218559813

namespace A038183

/-- `record[A001317(A014681(n))]` -/
def P14837299168218559813.Spec : Prop :=
  ∀ n, P14837299168218559813.a n = A038183 n

end A038183

/-! ## A038183.P15569917908677575701

`record[A001317(A018838(n))]`
-/

namespace A038183.P15569917908677575701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (A018838 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038183.P15569917908677575701

namespace A038183

/-- `record[A001317(A018838(n))]` -/
def P15569917908677575701.Spec : Prop :=
  ∀ n, P15569917908677575701.a n = A038183 n

end A038183

/-! ## A038183.P3377802733703371727

`A366264(A031368(n+1))`
-/

namespace A038183.P3377802733703371727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366264 (A031368 (n + 1)).toNat

end

end A038183.P3377802733703371727

namespace A038183

/-- `A366264(A031368(n+1))` -/
def P3377802733703371727.Spec : Prop :=
  ∀ n, P3377802733703371727.a n = A038183 n

end A038183

/-! ## A038183.P1584528997385913490

`and(A262862(n), A266382(n))`
-/

namespace A038183.P1584528997385913490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A262862 n) (A266382 n)

end

end A038183.P1584528997385913490

namespace A038183

/-- `and(A262862(n), A266382(n))` -/
def P1584528997385913490.Spec : Prop :=
  ∀ n, P1584528997385913490.a n = A038183 n

end A038183

/-! ## A038183.P17141887741738557389

`record[A001317(A053735(n)+n)]`
-/

namespace A038183.P17141887741738557389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (A053735 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038183.P17141887741738557389

namespace A038183

/-- `record[A001317(A053735(n)+n)]` -/
def P17141887741738557389.Spec : Prop :=
  ∀ n, P17141887741738557389.a n = A038183 n

end A038183

/-! ## A038183.P5370142194491193472

`A133179(A080565(n+1)-1)`
-/

namespace A038183.P5370142194491193472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 (A080565 (n + 1) - 1).toNat

end

end A038183.P5370142194491193472

namespace A038183

/-- `A133179(A080565(n+1)-1)` -/
def P5370142194491193472.Spec : Prop :=
  ∀ n, P5370142194491193472.a n = A038183 n

end A038183

/-! ## A038183.P11159525181357151813

`A133179(A346304(n+1)-1)`
-/

namespace A038183.P11159525181357151813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 (A346304 (n + 1) - 1).toNat

end

end A038183.P11159525181357151813

namespace A038183

/-- `A133179(A346304(n+1)-1)` -/
def P11159525181357151813.Spec : Prop :=
  ∀ n, P11159525181357151813.a n = A038183 n

end A038183

/-! ## A038183.P6542140440471128921

`A133179(2*A206332(n+1))`
-/

namespace A038183.P6542140440471128921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 (2 * A206332 (n + 1)).toNat

end

end A038183.P6542140440471128921

namespace A038183

/-- `A133179(2*A206332(n+1))` -/
def P6542140440471128921.Spec : Prop :=
  ∀ n, P6542140440471128921.a n = A038183 n

end A038183

/-! ## A038183.P6616297253282743113

`A133179(2*A004760(n+2))`
-/

namespace A038183.P6616297253282743113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 (2 * A004760 (n + 2)).toNat

end

end A038183.P6616297253282743113

namespace A038183

/-- `A133179(2*A004760(n+2))` -/
def P6616297253282743113.Spec : Prop :=
  ∀ n, P6616297253282743113.a n = A038183 n

end A038183

/-! ## A038183.P9032204220950044629

`record[A001317(A000265(n+1)-1)]`
-/

namespace A038183.P9032204220950044629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (A000265 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038183.P9032204220950044629

namespace A038183

/-- `record[A001317(A000265(n+1)-1)]` -/
def P9032204220950044629.Spec : Prop :=
  ∀ n, P9032204220950044629.a n = A038183 n

end A038183

/-! ## A038183.P13066278228272574991

`record[A001317(A006257(n+1)-1)]`
-/

namespace A038183.P13066278228272574991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (A006257 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038183.P13066278228272574991

namespace A038183

/-- `record[A001317(A006257(n+1)-1)]` -/
def P13066278228272574991.Spec : Prop :=
  ∀ n, P13066278228272574991.a n = A038183 n

end A038183

/-! ## A038183.P3104958989050426233

`A133179(2*(A004755(n+1)-1))`
-/

namespace A038183.P3104958989050426233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 (2 * (A004755 (n + 1) - 1)).toNat

end

end A038183.P3104958989050426233

namespace A038183

/-- `A133179(2*(A004755(n+1)-1))` -/
def P3104958989050426233.Spec : Prop :=
  ∀ n, P3104958989050426233.a n = A038183 n

end A038183

/-! ## A038183.P7941296714847528395

`xor(lcm(4, a(n-1)), a(n-1))` with `a(0)=1`
-/

namespace A038183.P7941296714847528395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (Nat.lcm 4 (a (n - 1))) (a (n - 1))

end

end A038183.P7941296714847528395

namespace A038183

/-- `xor(lcm(4, a(n-1)), a(n-1))` -/
def P7941296714847528395.Spec : Prop :=
  ∀ n, (P7941296714847528395.a n : ℤ) = A038183 n

end A038183

/-!
# A038184: State of one-dimensional cellular automaton 'sigma' (Rule 150): 000,001,010,011,100,101,110,111 -> 0,1,1,0,1,0,0,1 at generation n, converted to a decimal number.

The programs for A038184, the canonical program `A038184.P379017006269832223` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038184 has offset 0).

The definition of A038184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038184.P379017006269832223

`xor(2*xor(2*a(n-1), a(n-1)), a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038184

/-- `xor(2*xor(2*a(n-1), a(n-1)), a(n-1))` -/
def P379017006269832223.Spec : Prop :=
  ∀ n, (P379017006269832223.a n : ℤ) = A038184 n

theorem P379017006269832223.correct : P379017006269832223.Spec := by
  intro n
  simp only [A038184]

end A038184

/-! ## A038184.P8359597652083593970

`xor(A110240(n), A327972(n))`
-/

namespace A038184.P8359597652083593970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110240 n) (A327972 n)

end

end A038184.P8359597652083593970

namespace A038184

/-- `xor(A110240(n), A327972(n))` -/
def P8359597652083593970.Spec : Prop :=
  ∀ n, P8359597652083593970.a n = A038184 n

end A038184

/-! ## A038184.P2854065577753652417

`A048710(∑[n]+n)`
-/

namespace A038184.P2854065577753652417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048710 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A038184.P2854065577753652417

namespace A038184

/-- `A048710(∑[n]+n)` -/
def P2854065577753652417.Spec : Prop :=
  ∀ n, P2854065577753652417.a n = A038184 n

end A038184

/-! ## A038184.P1812041414306857599

`or(1, A048710(A000096(n)))`
-/

namespace A038184.P1812041414306857599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A048710 (A000096 n).toNat)

end

end A038184.P1812041414306857599

namespace A038184

/-- `or(1, A048710(A000096(n)))` -/
def P1812041414306857599.Spec : Prop :=
  ∀ n, P1812041414306857599.a n = A038184 n

end A038184

/-! ## A038184.P16616072197456919875

`A048710(A000096(n))%A048712(n)`
-/

namespace A038184.P16616072197456919875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048710 (A000096 n).toNat) (A048712 n)

end

end A038184.P16616072197456919875

namespace A038184

/-- `A048710(A000096(n))%A048712(n)` -/
def P16616072197456919875.Spec : Prop :=
  ∀ n, P16616072197456919875.a n = A038184 n

end A038184

/-! ## A038184.P2769950896537040990

`record[A048710(n)/A027466(n)]`
-/

namespace A038184.P2769950896537040990
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048710 n : ℚ) / (A027466 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038184.P2769950896537040990

namespace A038184

/-- `record[A048710(n)/A027466(n)]` -/
def P2769950896537040990.Spec : Prop :=
  ∀ n, P2769950896537040990.a n = (A038184 n : ℚ)

end A038184

/-! ## A038184.P792354775920584552

`A048723(A000217(n+8)+n-(2*n+1))`
-/

namespace A038184.P792354775920584552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048723 (A000217 (n + 8) + (n : ℤ) - (2 * n + 1 : ℤ)).toNat

end

end A038184.P792354775920584552

namespace A038184

/-- `A048723(A000217(n+8)+n-(2*n+1))` -/
def P792354775920584552.Spec : Prop :=
  ∀ n, P792354775920584552.a n = A038184 n

end A038184

/-! ## A038184.P7848254323427531384

`record[gcd(A048710(n), A106800(n))]`
-/

namespace A038184.P7848254323427531384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048710 n) (A106800 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038184.P7848254323427531384

namespace A038184

/-- `record[gcd(A048710(n), A106800(n))]` -/
def P7848254323427531384.Spec : Prop :=
  ∀ n, (P7848254323427531384.a n : ℤ) = A038184 n

end A038184

/-!
# A038185: One-dimensional cellular automaton 'sigma' (Rule 150).

The programs for A038185, the canonical program `A038185.P18068913284715188074` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038185 has offset 0).

The definition of A038185 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038184, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A038185.P18068913284715188074

`floor(A038184(n)/2^n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038185

/-- `floor(A038184(n)/2^n)` -/
def P18068913284715188074.Spec : Prop :=
  ∀ n, P18068913284715188074.a n = A038185 n

theorem P18068913284715188074.correct : P18068913284715188074.Spec := by
  intro n
  simp only [A038185]

end A038185

/-! ## A038185.P15550539032727193202

`A289768(2*n)`
-/

namespace A038185.P15550539032727193202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289768 (2 * n)

end

end A038185.P15550539032727193202

namespace A038185

/-- `A289768(2*n)` -/
def P15550539032727193202.Spec : Prop :=
  ∀ n, P15550539032727193202.a n = A038185 n

end A038185

/-! ## A038185.P16378714012954878165

`record[A289768(n)^log2(gcd(2, n))]`
-/

namespace A038185.P16378714012954878165
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A289768 n : ℝ) ^ (Real.logb 2 (Nat.gcd 2 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038185.P16378714012954878165

namespace A038185

/-- `record[A289768(n)^log2(gcd(2, n))]` -/
def P16378714012954878165.Spec : Prop :=
  ∀ n, P16378714012954878165.a n = (A038185 n : ℝ)

end A038185

/-! ## A038185.P13690613838545501602

`record[A289768(or(2, n+2)-1)]`
-/

namespace A038185.P13690613838545501602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289768 (Nat.lor 2 (n + 2) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038185.P13690613838545501602

namespace A038185

/-- `record[A289768(or(2, n+2)-1)]` -/
def P13690613838545501602.Spec : Prop :=
  ∀ n, P13690613838545501602.a n = A038185 n

end A038185

/-! ## A038185.P13410909873882545081

`record[A289768(n)-A000035(n)]`
-/

namespace A038185.P13410909873882545081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289768 n - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038185.P13410909873882545081

namespace A038185

/-- `record[A289768(n)-A000035(n)]` -/
def P13410909873882545081.Spec : Prop :=
  ∀ n, P13410909873882545081.a n = A038185 n

end A038185

/-! ## A038185.P3892883652406308796

`record[A289768(A038506(n+1)+n)]`
-/

namespace A038185.P3892883652406308796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289768 (A038506 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038185.P3892883652406308796

namespace A038185

/-- `record[A289768(A038506(n+1)+n)]` -/
def P3892883652406308796.Spec : Prop :=
  ∀ n, P3892883652406308796.a n = A038185 n

end A038185

/-! ## A038185.P15857951206077387949

`record[gcd(A289768(n+1), A289768(n))]`
-/

namespace A038185.P15857951206077387949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A289768 (n + 1)) (A289768 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038185.P15857951206077387949

namespace A038185

/-- `record[gcd(A289768(n+1), A289768(n))]` -/
def P15857951206077387949.Spec : Prop :=
  ∀ n, (P15857951206077387949.a n : ℤ) = A038185 n

end A038185

/-! ## A038185.P6270554757561811631

`xor(1, A289768(A042963(n+1)))+1`
-/

namespace A038185.P6270554757561811631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A289768 (A042963 (n + 1)).toNat) + 1

end

end A038185.P6270554757561811631

namespace A038185

/-- `xor(1, A289768(A042963(n+1)))+1` -/
def P6270554757561811631.Spec : Prop :=
  ∀ n, P6270554757561811631.a n = A038185 n

end A038185

/-! ## A038185.P11458638260046322314

`xor(2*xor(floor(a(n-1)/4), a(n-1)), a(n-1))` with `a(0)=1`
-/

namespace A038185.P11458638260046322314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (2 * Int.xor ⌊(a (n - 1) : ℚ) / 4⌋ (a (n - 1))) (a (n - 1))

end

end A038185.P11458638260046322314

namespace A038185

/-- `xor(2*xor(floor(a(n-1)/4), a(n-1)), a(n-1))` -/
def P11458638260046322314.Spec : Prop :=
  ∀ n, P11458638260046322314.a n = A038185 n

end A038185

/-! ## A038185.P5660966899874481941

`A288129(2*n)`
-/

namespace A038185.P5660966899874481941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288129 (2 * n)

end

end A038185.P5660966899874481941

namespace A038185

/-- `A288129(2*n)` -/
def P5660966899874481941.Spec : Prop :=
  ∀ n, P5660966899874481941.a n = A038185 n

end A038185

/-! ## A038185.P7214902949069252107

`record[A289768(A038506(n+1))]`
-/

namespace A038185.P7214902949069252107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289768 (A038506 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038185.P7214902949069252107

namespace A038185

/-- `record[A289768(A038506(n+1))]` -/
def P7214902949069252107.Spec : Prop :=
  ∀ n, P7214902949069252107.a n = A038185 n

end A038185

/-!
# A038186: Numbers divisible by the sum and product of their digits.

The programs for A038186, there is no canonical definition to state claims against.
-/

/-! ## A038186.P11353408175239536424

`∩[A007602(n+1), A342262(n+1)]`
-/

namespace A038186.P11353408175239536424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038186.P11353408175239536424

/-! ## A038186.P9974139681180801484

`∩[A180484(n+1), A342262(n+1)]`
-/

namespace A038186.P9974139681180801484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038186.P9974139681180801484

/-! ## A038186.P6802379628142814925

`∩[A007602(n+1), A051004(n+1)]`
-/

namespace A038186.P6802379628142814925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038186.P6802379628142814925

/-! ## A038186.P11459036227475022477

`∩[A051004(n+1), A342262(n+1)]`
-/

namespace A038186.P11459036227475022477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038186.P11459036227475022477

/-! ## A038186.P5767886812091767109

`∩[A051004(n+1), A055471(n+1)]`
-/

namespace A038186.P5767886812091767109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038186.P5767886812091767109

/-! ## A038186.P3453399566704085132

`∩[A034838(n+1), A342262(n+1)]`
-/

namespace A038186.P3453399566704085132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038186.P3453399566704085132

/-! ## A038186.P13295752251202591414

`∩[A007602(n+1), A217973(n+1)]`
-/

namespace A038186.P13295752251202591414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038186.P13295752251202591414

/-! ## A038186.P509907090589566441

`∩[A055471(n+1), A217973(n+1)]`
-/

namespace A038186.P509907090589566441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038186.P509907090589566441

/-! ## A038186.P8023693121792410277

`∩[A217973(n+1), A342262(n+1)]`
-/

namespace A038186.P8023693121792410277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038186.P8023693121792410277

/-! ## A038186.P16048841612288735541

`∩[A180478(n+1), A342262(n+1)]`
-/

namespace A038186.P16048841612288735541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038186.P16048841612288735541

/-! ## A038186.P9880623854619036935

`∩[A005349(n+1), A007602(n+1)]`
-/

namespace A038186.P9880623854619036935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038186.P9880623854619036935

/-! ## A038186.P14522721620708099998

`∩[A007602(n+1), A356349(n+1)]`
-/

namespace A038186.P14522721620708099998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038186.P14522721620708099998

/-! ## A038186.P11571879207230853107

`∩[A007602(n+1), A113315(n+1)*A325454(n+1)]`
-/

namespace A038186.P11571879207230853107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113315 (n + 1) * A325454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038186.P11571879207230853107

/-! ## A038186.P9053357252348934616

`∩[A330982(n+1), A342262(n+1)]`
-/

namespace A038186.P9053357252348934616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038186.P9053357252348934616

/-!
# A038187: Numbers other than powers of 10 that are coprime to the sum of their digits.

The programs for A038187, the canonical program `A038187.P13470597796973090422` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038187 has offset 1).

The definition of A038187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4570 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038187.P18291638196827184748

`∩[A065877(n+1), A339076(n+1)]`
-/

namespace A038187.P18291638196827184748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038187.P18291638196827184748

namespace A038187

/-- `∩[A065877(n+1), A339076(n+1)]` -/
def P18291638196827184748.Spec : Prop :=
  ∀ n, (P18291638196827184748.a n : ℤ) = A038187 (n + 1)

end A038187

/-! ## A038187.P16458303288231478981

`∩[A038687(n+1), A339076(n+1)]`
-/

namespace A038187.P16458303288231478981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038187.P16458303288231478981

namespace A038187

/-- `∩[A038687(n+1), A339076(n+1)]` -/
def P16458303288231478981.Spec : Prop :=
  ∀ n, (P16458303288231478981.a n : ℤ) = A038187 (n + 1)

end A038187

/-! ## A038187.P12138101658199514298

`∩[A339076(n+1), A057717(n)]`
-/

namespace A038187.P12138101658199514298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038187.P12138101658199514298

namespace A038187

/-- `∩[A339076(n+1), A057717(n)]` -/
def P12138101658199514298.Spec : Prop :=
  ∀ n, (P12138101658199514298.a n : ℤ) = A038187 (n + 1)

end A038187

/-! ## A038187.P15826072980819268842

`record[A065517(A065877(n+1))]`
-/

namespace A038187.P15826072980819268842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065517 (A065877 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038187.P15826072980819268842

namespace A038187

/-- `record[A065517(A065877(n+1))]` -/
def P15826072980819268842.Spec : Prop :=
  ∀ n, P15826072980819268842.a n = A038187 (n + 1)

end A038187

/-! ## A038187.P6525698973384735975

`eq[A063660(n), A065517(n+1)]+1`
-/

namespace A038187.P6525698973384735975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065517 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A038187.P6525698973384735975

namespace A038187

/-- `eq[A063660(n), A065517(n+1)]+1` -/
def P6525698973384735975.Spec : Prop :=
  ∀ n, (P6525698973384735975.a n : ℤ) = A038187 (n + 1)

end A038187

/-! ## A038187.P11599195773233419181

`A063660(eq[A063660(n), A065517(n+1)])`
-/

namespace A038187.P11599195773233419181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A038187.P11599195773233419181

namespace A038187

/-- `A063660(eq[A063660(n), A065517(n+1)])` -/
def P11599195773233419181.Spec : Prop :=
  ∀ n, P11599195773233419181.a n = A038187 (n + 1)

end A038187

/-! ## A038187.P13470597796973090422

`lt[A160941(n+1), A065517(A028310(n))]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038187

/-- `lt[A160941(n+1), A065517(A028310(n))]` -/
def P13470597796973090422.Spec : Prop :=
  ∀ n, (P13470597796973090422.a n : ℤ) = A038187 (n + 1)

theorem P13470597796973090422.correct : P13470597796973090422.Spec := by
  intro n
  simp only [A038187, Nat.add_sub_cancel]

end A038187

/-! ## A038187.P18310851315486451314

`lt[A160941(n+1), A065517(A233583(n+1))]`
-/

namespace A038187.P18310851315486451314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065517 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A038187.P18310851315486451314

namespace A038187

/-- `lt[A160941(n+1), A065517(A233583(n+1))]` -/
def P18310851315486451314.Spec : Prop :=
  ∀ n, (P18310851315486451314.a n : ℤ) = A038187 (n + 1)

end A038187

/-!
# A038189: Bit to left of least significant 1-bit in binary expansion of n.

The programs for A038189, the canonical program `A038189.P710315829662968223` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038189 has offset 0).

The definition of A038189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038189.P1817963139439672422

`char[comp[and(n, n-1)+n]]`
-/

namespace A038189.P1817963139439672422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A038189.P1817963139439672422

namespace A038189

/-- `char[comp[and(n, n-1)+n]]` -/
def P1817963139439672422.Spec : Prop :=
  ∀ n, (P1817963139439672422.a n : ℤ) = A038189 n

end A038189

/-! ## A038189.P6797832441621717361

`char[or(n, n+1)+2+n]`
-/

namespace A038189.P6797832441621717361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1) + 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A038189.P6797832441621717361

namespace A038189

/-- `char[or(n, n+1)+2+n]` -/
def P6797832441621717361.Spec : Prop :=
  ∀ n, (P6797832441621717361.a n : ℤ) = A038189 n

end A038189

/-! ## A038189.P10486681972574834584

`char[comp[and(n, n+1)+n]+1]`
-/

namespace A038189.P10486681972574834584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A038189.P10486681972574834584

namespace A038189

/-- `char[comp[and(n, n+1)+n]+1]` -/
def P10486681972574834584.Spec : Prop :=
  ∀ n, (P10486681972574834584.a n : ℤ) = A038189 n

end A038189

/-! ## A038189.P6748985000803949419

`char[3*(n+1)-and(n, n+1)]`
-/

namespace A038189.P6748985000803949419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - (Nat.land n (n + 1) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A038189.P6748985000803949419

namespace A038189

/-- `char[3*(n+1)-and(n, n+1)]` -/
def P6748985000803949419.Spec : Prop :=
  ∀ n, (P6748985000803949419.a n : ℤ) = A038189 n

end A038189

/-! ## A038189.P8834451152188203850

`a(∑[n]%n)^((n+1)%4)` with `a(0)=0`
-/

namespace A038189.P8834451152188203850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((∑ j ∈ Finset.range (n + 1), f1 j) % n) ^ ((n + 1) % 4)

end

end A038189.P8834451152188203850

namespace A038189

/-- `a(∑[n]%n)^((n+1)%4)` -/
def P8834451152188203850.Spec : Prop :=
  ∀ n, (P8834451152188203850.a n : ℤ) = A038189 n

end A038189

/-! ## A038189.P11357023270281590243

`char[and(n, -(n+2))+2*n+3]`
-/

namespace A038189.P11357023270281590243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n + 2 : ℤ)) + (2 * n + 3 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A038189.P11357023270281590243

namespace A038189

/-- `char[and(n, -(n+2))+2*n+3]` -/
def P11357023270281590243.Spec : Prop :=
  ∀ n, (P11357023270281590243.a n : ℤ) = A038189 n

end A038189

/-! ## A038189.P15923448619683158557

`char[eq[Δ[xor(n, 2*n-1)]%2, -1]]`
-/

namespace A038189.P15923448619683158557
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((2 * n : ℤ) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f3 (n + 1) - f3 n) 2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f4 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A038189.P15923448619683158557

namespace A038189

/-- `char[eq[Δ[xor(n, 2*n-1)]%2, -1]]` -/
def P15923448619683158557.Spec : Prop :=
  ∀ n, (P15923448619683158557.a n : ℤ) = A038189 n

end A038189

/-! ## A038189.P710315829662968223

`A014707(abs(1-n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038189

/-- `A014707(abs(1-n))` -/
def P710315829662968223.Spec : Prop :=
  ∀ n, P710315829662968223.a n = A038189 n

theorem P710315829662968223.correct : P710315829662968223.Spec := by
  intro n
  simp only [A038189]

end A038189

/-! ## A038189.P11823914876142725317

`char[A091067(n+1)]`
-/

namespace A038189.P11823914876142725317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A038189.P11823914876142725317

namespace A038189

/-- `char[A091067(n+1)]` -/
def P11823914876142725317.Spec : Prop :=
  ∀ n, (P11823914876142725317.a n : ℤ) = A038189 n

end A038189

/-! ## A038189.P17019886860159737862

`char[A255068(n)+1]`
-/

namespace A038189.P17019886860159737862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255068 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A038189.P17019886860159737862

namespace A038189

/-- `char[A255068(n)+1]` -/
def P17019886860159737862.Spec : Prop :=
  ∀ n, (P17019886860159737862.a n : ℤ) = A038189 n

end A038189

/-! ## A038189.P14281073185994636209

`char[A269363(n+1)]`
-/

namespace A038189.P14281073185994636209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A038189.P14281073185994636209

namespace A038189

/-- `char[A269363(n+1)]` -/
def P14281073185994636209.Spec : Prop :=
  ∀ n, (P14281073185994636209.a n : ℤ) = A038189 n

end A038189

/-! ## A038189.P10856793143324387422

`char[A341522(n)+1]`
-/

namespace A038189.P10856793143324387422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341522 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A038189.P10856793143324387422

namespace A038189

/-- `char[A341522(n)+1]` -/
def P10856793143324387422.Spec : Prop :=
  ∀ n, (P10856793143324387422.a n : ℤ) = A038189 n

end A038189

/-! ## A038189.P12516475362282554587

`floor(acot(acot(A089309(n))))`
-/

namespace A038189.P12516475362282554587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (SequenceMachineLib.acot (A089309 n : ℝ))⌋

end

end A038189.P12516475362282554587

namespace A038189

/-- `floor(acot(acot(A089309(n))))` -/
def P12516475362282554587.Spec : Prop :=
  ∀ n, P12516475362282554587.a n = A038189 n

end A038189

/-! ## A038189.P13821667074547301129

`(1-A121238(n))/2`
-/

namespace A038189.P13821667074547301129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A121238 n : ℚ) / 2

end

end A038189.P13821667074547301129

namespace A038189

/-- `(1-A121238(n))/2` -/
def P13821667074547301129.Spec : Prop :=
  ∀ n, P13821667074547301129.a n = (A038189 n : ℚ)

end A038189

/-! ## A038189.P15209033686510837974

`A073089(6*n+1)`
-/

namespace A038189.P15209033686510837974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (6 * n + 1)

end

end A038189.P15209033686510837974

namespace A038189

/-- `A073089(6*n+1)` -/
def P15209033686510837974.Spec : Prop :=
  ∀ n, P15209033686510837974.a n = A038189 n

end A038189

/-! ## A038189.P1445246490635627140

`and(2, A112347(n))/2`
-/

namespace A038189.P1445246490635627140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A112347 n) : ℚ) / 2

end

end A038189.P1445246490635627140

namespace A038189

/-- `and(2, A112347(n))/2` -/
def P1445246490635627140.Spec : Prop :=
  ∀ n, P1445246490635627140.a n = (A038189 n : ℚ)

end A038189

/-! ## A038189.P16879774761276756483

`and(2, A300867(n))/2`
-/

namespace A038189.P16879774761276756483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A300867 n) : ℚ) / 2

end

end A038189.P16879774761276756483

namespace A038189

/-- `and(2, A300867(n))/2` -/
def P16879774761276756483.Spec : Prop :=
  ∀ n, P16879774761276756483.a n = (A038189 n : ℚ)

end A038189

/-! ## A038189.P16891853366615723578

`log2(A014709(abs(1-n)))`
-/

namespace A038189.P16891853366615723578
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A014709 |1 - (n : ℤ)|.toNat : ℝ)

end

end A038189.P16891853366615723578

namespace A038189

/-- `log2(A014709(abs(1-n)))` -/
def P16891853366615723578.Spec : Prop :=
  ∀ n, P16891853366615723578.a n = (A038189 n : ℝ)

end A038189

/-! ## A038189.P3944314511949969163

`floor(log(A125047(n+1)))`
-/

namespace A038189.P3944314511949969163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A125047 (n + 1) : ℝ)⌋

end

end A038189.P3944314511949969163

namespace A038189

/-- `floor(log(A125047(n+1)))` -/
def P3944314511949969163.Spec : Prop :=
  ∀ n, P3944314511949969163.a n = A038189 n

end A038189

/-! ## A038189.P18334673792810678797

`Δ[A255070(abs(1-n))]`
-/

namespace A038189.P18334673792810678797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255070 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038189.P18334673792810678797

namespace A038189

/-- `Δ[A255070(abs(1-n))]` -/
def P18334673792810678797.Spec : Prop :=
  ∀ n, P18334673792810678797.a n = A038189 n

end A038189

/-!
# A038190: Pagoda sequence: a(0) = b(n)-b(n-2) mod 3, where b(n) = A038189(n).

The programs for A038190, there is no canonical definition to state claims against.
-/

/-! ## A038190.P8062941511827115284

`A030341(p?[A317837(A327642(n))])`
-/

namespace A038190.P8062941511827115284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317837 (A327642 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A038190.P8062941511827115284

/-! ## A038190.P8972470492137032787

`A006068(A207142(n+1))%3`
-/

namespace A038190.P8972470492137032787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006068 (A207142 (n + 1)).toNat) 3

end

end A038190.P8972470492137032787

/-! ## A038190.P2572839077858531149

`A133872(n)+A014019(A126869(n))`
-/

namespace A038190.P2572839077858531149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 n + A014019 (A126869 n).toNat

end

end A038190.P2572839077858531149

/-! ## A038190.P8889809369970308497

`A004594(A008574(n*A027379(n)))`
-/

namespace A038190.P8889809369970308497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004594 (A008574 ((n : ℤ) * A027379 n).toNat).toNat

end

end A038190.P8889809369970308497

/-! ## A038190.P8851555560398043886

`A190676(A144897(n+1))`
-/

namespace A038190.P8851555560398043886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190676 (A144897 (n + 1)).toNat

end

end A038190.P8851555560398043886

/-!
# A038191: A034166/2.

The programs for A038191, there is no canonical definition to state claims against.
-/

/-! ## A038191.P7847505222028542728

`A034166(n+1)/2`
-/

namespace A038191.P7847505222028542728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034166 (n + 1) : ℚ) / 2

end

end A038191.P7847505222028542728

/-! ## A038191.P12205937415934070152

`ceil(n²/2)-2%A007318(n)²`
-/

namespace A038191.P12205937415934070152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉ - Int.tmod 2 (A007318 n ^ 2)

end

end A038191.P12205937415934070152

/-! ## A038191.P5252309496247497790

`A004525(A034166(n+1))`
-/

namespace A038191.P5252309496247497790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A034166 (n + 1)).toNat

end

end A038191.P5252309496247497790

/-! ## A038191.P5338810587735424928

`A004526(A034166(n+1)+1)`
-/

namespace A038191.P5338810587735424928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A034166 (n + 1) + 1).toNat

end

end A038191.P5338810587735424928

/-! ## A038191.P15625292192707065773

`A123108(A034166(n+1)+1)`
-/

namespace A038191.P15625292192707065773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A034166 (n + 1) + 1).toNat

end

end A038191.P15625292192707065773

/-!
# A038192: Bisection of A001317.

The programs for A038192, the canonical program `A038192.P7022833363305945768` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038192 has offset 0).

The definition of A038192 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038192.P7022833363305945768

`12*A089893(n)+3`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038192

/-- `12*A089893(n)+3` -/
def P7022833363305945768.Spec : Prop :=
  ∀ n, P7022833363305945768.a n = A038192 n

theorem P7022833363305945768.correct : P7022833363305945768.Spec := by
  intro n
  simp only [A038192]

end A038192

/-! ## A038192.P10959400771680172504

`xor(4*a(n-1), a(n-1))` with `a(0)=3`
-/

namespace A038192.P10959400771680172504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.xor (4 * a (n - 1)) (a (n - 1))

end

end A038192.P10959400771680172504

namespace A038192

/-- `xor(4*a(n-1), a(n-1))` -/
def P10959400771680172504.Spec : Prop :=
  ∀ n, (P10959400771680172504.a n : ℤ) = A038192 n

end A038192

/-! ## A038192.P937630831878687772

`xor(lcm(4, a(n-1)), a(n-1))` with `a(0)=3`
-/

namespace A038192.P937630831878687772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.xor (Nat.lcm 4 (a (n - 1))) (a (n - 1))

end

end A038192.P937630831878687772

namespace A038192

/-- `xor(lcm(4, a(n-1)), a(n-1))` -/
def P937630831878687772.Spec : Prop :=
  ∀ n, (P937630831878687772.a n : ℤ) = A038192 n

end A038192

/-! ## A038192.P10235432053414407062

`2*a(and(n, n-1))+3*a(n-1)` with `a(0)=3`
-/

namespace A038192.P10235432053414407062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 3 * a (n - 1)

end

end A038192.P10235432053414407062

namespace A038192

/-- `2*a(and(n, n-1))+3*a(n-1)` -/
def P10235432053414407062.Spec : Prop :=
  ∀ n, (P10235432053414407062.a n : ℤ) = A038192 n

end A038192

/-! ## A038192.P10674210096902728658

`3*A038183(n)`
-/

namespace A038192.P10674210096902728658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A038183 n

end

end A038192.P10674210096902728658

namespace A038192

/-- `3*A038183(n)` -/
def P10674210096902728658.Spec : Prop :=
  ∀ n, P10674210096902728658.a n = A038192 n

end A038192

/-! ## A038192.P16652528677932310951

`A001317(Δ[n²])`
-/

namespace A038192.P16652528677932310951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A038192.P16652528677932310951

namespace A038192

/-- `A001317(Δ[n²])` -/
def P16652528677932310951.Spec : Prop :=
  ∀ n, P16652528677932310951.a n = A038192 n

end A038192

/-! ## A038192.P45448933186749710

`record[A282388(n+1)]`
-/

namespace A038192.P45448933186749710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038192.P45448933186749710

namespace A038192

/-- `record[A282388(n+1)]` -/
def P45448933186749710.Spec : Prop :=
  ∀ n, P45448933186749710.a n = A038192 n

end A038192

/-! ## A038192.P17263087857347594638

`record[lcm(3, A282388(n))]`
-/

namespace A038192.P17263087857347594638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A282388 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038192.P17263087857347594638

namespace A038192

/-- `record[lcm(3, A282388(n))]` -/
def P17263087857347594638.Spec : Prop :=
  ∀ n, (P17263087857347594638.a n : ℤ) = A038192 n

end A038192

/-! ## A038192.P17525670799799692932

`A087745(4*n+2)`
-/

namespace A038192.P17525670799799692932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087745 (4 * n + 2)

end

end A038192.P17525670799799692932

namespace A038192

/-- `A087745(4*n+2)` -/
def P17525670799799692932.Spec : Prop :=
  ∀ n, P17525670799799692932.a n = A038192 n

end A038192

/-! ## A038192.P3015658955198090322

`3*A001317(2*n)`
-/

namespace A038192.P3015658955198090322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001317 (2 * n)

end

end A038192.P3015658955198090322

namespace A038192

/-- `3*A001317(2*n)` -/
def P3015658955198090322.Spec : Prop :=
  ∀ n, P3015658955198090322.a n = A038192 n

end A038192

/-! ## A038192.P4147268878529379272

`A133179(A080565(n+1))`
-/

namespace A038192.P4147268878529379272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 (A080565 (n + 1)).toNat

end

end A038192.P4147268878529379272

namespace A038192

/-- `A133179(A080565(n+1))` -/
def P4147268878529379272.Spec : Prop :=
  ∀ n, P4147268878529379272.a n = A038192 n

end A038192

/-! ## A038192.P7444871396968000753

`A133179(A346304(n+1))`
-/

namespace A038192.P7444871396968000753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 (A346304 (n + 1)).toNat

end

end A038192.P7444871396968000753

namespace A038192

/-- `A133179(A346304(n+1))` -/
def P7444871396968000753.Spec : Prop :=
  ∀ n, P7444871396968000753.a n = A038192 n

end A038192

/-! ## A038192.P10253580349671433987

`A282388(A206332(n+1))`
-/

namespace A038192.P10253580349671433987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282388 (A206332 (n + 1)).toNat

end

end A038192.P10253580349671433987

namespace A038192

/-- `A282388(A206332(n+1))` -/
def P10253580349671433987.Spec : Prop :=
  ∀ n, P10253580349671433987.a n = A038192 n

end A038192

/-! ## A038192.P11655493691277273667

`A282388(A004760(n+2))`
-/

namespace A038192.P11655493691277273667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282388 (A004760 (n + 2)).toNat

end

end A038192.P11655493691277273667

namespace A038192

/-- `A282388(A004760(n+2))` -/
def P11655493691277273667.Spec : Prop :=
  ∀ n, P11655493691277273667.a n = A038192 n

end A038192

/-! ## A038192.P7877241582102514172

`lcm(A038183(n), A174971(n))`
-/

namespace A038192.P7877241582102514172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038183 n) (A174971 n)

end

end A038192.P7877241582102514172

namespace A038192

/-- `lcm(A038183(n), A174971(n))` -/
def P7877241582102514172.Spec : Prop :=
  ∀ n, (P7877241582102514172.a n : ℤ) = A038192 n

end A038192

/-! ## A038192.P17302274258218789742

`record[A001317(A000265(n+1))]`
-/

namespace A038192.P17302274258218789742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038192.P17302274258218789742

namespace A038192

/-- `record[A001317(A000265(n+1))]` -/
def P17302274258218789742.Spec : Prop :=
  ∀ n, P17302274258218789742.a n = A038192 n

end A038192

/-! ## A038192.P9538700079747023639

`record[A001317(A006257(n+1))]`
-/

namespace A038192.P9538700079747023639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (A006257 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038192.P9538700079747023639

namespace A038192

/-- `record[A001317(A006257(n+1))]` -/
def P9538700079747023639.Spec : Prop :=
  ∀ n, P9538700079747023639.a n = A038192 n

end A038192

/-! ## A038192.P7224634594133941332

`record[A001317(A014681(n)+1)]`
-/

namespace A038192.P7224634594133941332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038192.P7224634594133941332

namespace A038192

/-- `record[A001317(A014681(n)+1)]` -/
def P7224634594133941332.Spec : Prop :=
  ∀ n, P7224634594133941332.a n = A038192 n

end A038192

/-! ## A038192.P9286919534972493443

`record[A001317(A018838(n)+1)]`
-/

namespace A038192.P9286919534972493443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (A018838 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038192.P9286919534972493443

namespace A038192

/-- `record[A001317(A018838(n)+1)]` -/
def P9286919534972493443.Spec : Prop :=
  ∀ n, P9286919534972493443.a n = A038192 n

end A038192

/-! ## A038192.P1272906915910291694

`record[A133179(A133265(n)+1)]`
-/

namespace A038192.P1272906915910291694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 (A133265 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038192.P1272906915910291694

namespace A038192

/-- `record[A133179(A133265(n)+1)]` -/
def P1272906915910291694.Spec : Prop :=
  ∀ n, P1272906915910291694.a n = A038192 n

end A038192

/-!
# A038194: Iterated sum-of-digits of n-th prime; or digital root of n-th prime; or n-th prime modulo 9.

The programs for A038194, the canonical program `A038194.P4142280690409945291` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038194 has offset 1).

The definition of A038194 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038194.P11648369795049549223

`A000040(n+1)%9`
-/

namespace A038194.P11648369795049549223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 9

end

end A038194.P11648369795049549223

namespace A038194

/-- `A000040(n+1)%9` -/
def P11648369795049549223.Spec : Prop :=
  ∀ n, P11648369795049549223.a n = A038194 (n + 1)

end A038194

/-! ## A038194.P4142280690409945291

`A010888(A000040(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038194

/-- `A010888(A000040(n+1))` -/
def P4142280690409945291.Spec : Prop :=
  ∀ n, P4142280690409945291.a n = A038194 (n + 1)

theorem P4142280690409945291.correct : P4142280690409945291.Spec := by
  intro n
  simp only [A038194, Nat.add_sub_cancel]

end A038194

/-! ## A038194.P1450525506657751260

`dr(p?[round(8*n/7)])`
-/

namespace A038194.P1450525506657751260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A038194.P1450525506657751260

namespace A038194

/-- `dr(p?[round(8*n/7)])` -/
def P1450525506657751260.Spec : Prop :=
  ∀ n, (P1450525506657751260.a n : ℤ) = A038194 (n + 1)

end A038194

/-! ## A038194.P3540298130663210633

`dr(Δ[A007504(n)])`
-/

namespace A038194.P3540298130663210633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A038194.P3540298130663210633

namespace A038194

/-- `dr(Δ[A007504(n)])` -/
def P3540298130663210633.Spec : Prop :=
  ∀ n, (P3540298130663210633.a n : ℤ) = A038194 (n + 1)

end A038194

/-! ## A038194.P7359306141456222066

`dr(Δ[A008348(n)])`
-/

namespace A038194.P7359306141456222066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A038194.P7359306141456222066

namespace A038194

/-- `dr(Δ[A008348(n)])` -/
def P7359306141456222066.Spec : Prop :=
  ∀ n, (P7359306141456222066.a n : ℤ) = A038194 (n + 1)

end A038194

/-! ## A038194.P9744277007587366297

`dr(Δ[A022837(n)])`
-/

namespace A038194.P9744277007587366297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A038194.P9744277007587366297

namespace A038194

/-- `dr(Δ[A022837(n)])` -/
def P9744277007587366297.Spec : Prop :=
  ∀ n, (P9744277007587366297.a n : ℤ) = A038194 (n + 1)

end A038194

/-! ## A038194.P2297932814060527560

`dr(Δ[A064365(n)])`
-/

namespace A038194.P2297932814060527560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A038194.P2297932814060527560

namespace A038194

/-- `dr(Δ[A064365(n)])` -/
def P2297932814060527560.Spec : Prop :=
  ∀ n, (P2297932814060527560.a n : ℤ) = A038194 (n + 1)

end A038194

/-! ## A038194.P8887782151229842620

`dr(Δ[A309222(n)])`
-/

namespace A038194.P8887782151229842620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A038194.P8887782151229842620

namespace A038194

/-- `dr(Δ[A309222(n)])` -/
def P8887782151229842620.Spec : Prop :=
  ∀ n, (P8887782151229842620.a n : ℤ) = A038194 (n + 1)

end A038194

/-! ## A038194.P17562839290469443879

`dr(A004087(n+1))`
-/

namespace A038194.P17562839290469443879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A004087 (n + 1))

end

end A038194.P17562839290469443879

namespace A038194

/-- `dr(A004087(n+1))` -/
def P17562839290469443879.Spec : Prop :=
  ∀ n, (P17562839290469443879.a n : ℤ) = A038194 (n + 1)

end A038194

/-! ## A038194.P11351460908771062364

`dr(A007605(n+1))`
-/

namespace A038194.P11351460908771062364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007605 (n + 1))

end

end A038194.P11351460908771062364

namespace A038194

/-- `dr(A007605(n+1))` -/
def P11351460908771062364.Spec : Prop :=
  ∀ n, (P11351460908771062364.a n : ℤ) = A038194 (n + 1)

end A038194

/-! ## A038194.P12217750911324300736

`dr(A028905(n+1))`
-/

namespace A038194.P12217750911324300736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A028905 (n + 1))

end

end A038194.P12217750911324300736

namespace A038194

/-- `dr(A028905(n+1))` -/
def P12217750911324300736.Spec : Prop :=
  ∀ n, (P12217750911324300736.a n : ℤ) = A038194 (n + 1)

end A038194

/-! ## A038194.P4005045514958094767

`dr(A028906(n+1))`
-/

namespace A038194.P4005045514958094767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A028906 (n + 1))

end

end A038194.P4005045514958094767

namespace A038194

/-- `dr(A028906(n+1))` -/
def P4005045514958094767.Spec : Prop :=
  ∀ n, (P4005045514958094767.a n : ℤ) = A038194 (n + 1)

end A038194

/-! ## A038194.P6918128626103185974

`dr(A137521(n+1))`
-/

namespace A038194.P6918128626103185974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A137521 (n + 1))

end

end A038194.P6918128626103185974

namespace A038194

/-- `dr(A137521(n+1))` -/
def P6918128626103185974.Spec : Prop :=
  ∀ n, (P6918128626103185974.a n : ℤ) = A038194 (n + 1)

end A038194

/-! ## A038194.P8679269246990344243

`dr(A140353(n+1))`
-/

namespace A038194.P8679269246990344243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A140353 (n + 1))

end

end A038194.P8679269246990344243

namespace A038194

/-- `dr(A140353(n+1))` -/
def P8679269246990344243.Spec : Prop :=
  ∀ n, (P8679269246990344243.a n : ℤ) = A038194 (n + 1)

end A038194

/-! ## A038194.P2060602828196277437

`dr(A142342(n+1))`
-/

namespace A038194.P2060602828196277437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A142342 (n + 1))

end

end A038194.P2060602828196277437

namespace A038194

/-- `dr(A142342(n+1))` -/
def P2060602828196277437.Spec : Prop :=
  ∀ n, (P2060602828196277437.a n : ℤ) = A038194 (n + 1)

end A038194

/-! ## A038194.P12858658590870489224

`dr(A171049(n+1))`
-/

namespace A038194.P12858658590870489224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A171049 (n + 1))

end

end A038194.P12858658590870489224

namespace A038194

/-- `dr(A171049(n+1))` -/
def P12858658590870489224.Spec : Prop :=
  ∀ n, (P12858658590870489224.a n : ℤ) = A038194 (n + 1)

end A038194

/-! ## A038194.P1924801887431414746

`dr(A242119(n+1))`
-/

namespace A038194.P1924801887431414746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A242119 (n + 1))

end

end A038194.P1924801887431414746

namespace A038194

/-- `dr(A242119(n+1))` -/
def P1924801887431414746.Spec : Prop :=
  ∀ n, (P1924801887431414746.a n : ℤ) = A038194 (n + 1)

end A038194

/-! ## A038194.P9892513126373009368

`dr(A242125(n+1))`
-/

namespace A038194.P9892513126373009368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A242125 (n + 1))

end

end A038194.P9892513126373009368

namespace A038194

/-- `dr(A242125(n+1))` -/
def P9892513126373009368.Spec : Prop :=
  ∀ n, (P9892513126373009368.a n : ℤ) = A038194 (n + 1)

end A038194

/-! ## A038194.P567059614937788503

`dr(A006093(n+1)+1)`
-/

namespace A038194.P567059614937788503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A006093 (n + 1) + 1)

end

end A038194.P567059614937788503

namespace A038194

/-- `dr(A006093(n+1)+1)` -/
def P567059614937788503.Spec : Prop :=
  ∀ n, (P567059614937788503.a n : ℤ) = A038194 (n + 1)

end A038194

/-!
# A038196: 3-wave sequence starting with 1, 1, 1.

The programs for A038196, the canonical program `A038196.P11643554112437182655` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038196 has offset 0).

The definition of A038196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038196.P11643554112437182655

`2*a(n-2)+a(n-4)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=5`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038196

/-- `2*a(n-2)+a(n-4)-a(n-6)` -/
def P11643554112437182655.Spec : Prop :=
  ∀ n, P11643554112437182655.a n = A038196 n

theorem P11643554112437182655.correct : P11643554112437182655.Spec := by
  intro n
  simp only [A038196]

end A038196

/-! ## A038196.P13522256195220540496

`a(xor(1, n-3))+a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A038196.P13522256195220540496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (Int.xor 1 ((n : ℤ) - 3)).toNat + a (n - 1)

end

end A038196.P13522256195220540496

namespace A038196

/-- `a(xor(1, n-3))+a(n-1)` -/
def P13522256195220540496.Spec : Prop :=
  ∀ n, (P13522256195220540496.a n : ℤ) = A038196 n

end A038196

/-! ## A038196.P17253101972230655506

`A187070(n+2)`
-/

namespace A038196.P17253101972230655506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187070 (n + 2)

end

end A038196.P17253101972230655506

namespace A038196

/-- `A187070(n+2)` -/
def P17253101972230655506.Spec : Prop :=
  ∀ n, P17253101972230655506.a n = A038196 n

end A038196

/-! ## A038196.P3215729436849660424

`A187068(n+4)`
-/

namespace A038196.P3215729436849660424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187068 (n + 4)

end

end A038196.P3215729436849660424

namespace A038196

/-- `A187068(n+4)` -/
def P3215729436849660424.Spec : Prop :=
  ∀ n, P3215729436849660424.a n = A038196 n

end A038196

/-! ## A038196.P12623048751478513470

`A120771(A166517(n+1)-1)`
-/

namespace A038196.P12623048751478513470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120771 (A166517 (n + 1) - 1).toNat

end

end A038196.P12623048751478513470

namespace A038196

/-- `A120771(A166517(n+1)-1)` -/
def P12623048751478513470.Spec : Prop :=
  ∀ n, P12623048751478513470.a n = A038196 n

end A038196

/-! ## A038196.P5978883247495143442

`∑[A187068(A018837(A014601(n)))]`
-/

namespace A038196.P5978883247495143442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187068 (A018837 (A014601 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038196.P5978883247495143442

namespace A038196

/-- `∑[A187068(A018837(A014601(n)))]` -/
def P5978883247495143442.Spec : Prop :=
  ∀ n, P5978883247495143442.a n = A038196 n

end A038196

/-! ## A038196.P14211203526394375187

`A120771(A166517(n+2))`
-/

namespace A038196.P14211203526394375187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120771 (A166517 (n + 2)).toNat

end

end A038196.P14211203526394375187

namespace A038196

/-- `A120771(A166517(n+2))` -/
def P14211203526394375187.Spec : Prop :=
  ∀ n, P14211203526394375187.a n = A038196 n

end A038196

/-! ## A038196.P16633181830513601567

`A060827(n)/2`
-/

namespace A038196.P16633181830513601567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060827 n : ℚ) / 2

end

end A038196.P16633181830513601567

namespace A038196

/-- `A060827(n)/2` -/
def P16633181830513601567.Spec : Prop :=
  ∀ n, P16633181830513601567.a n = (A038196 n : ℚ)

theorem P16633181830513601567.correct : P16633181830513601567.Spec := by
  intro n
  simp only [A038196, Nat.add_sub_cancel, A038196.P16633181830513601567.a, A038196.P11643554112437182655.a, A060827, A060827.P15751382796492742172.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038196

/-!
# A038197: 4-wave sequence.

The programs for A038197, there is no canonical definition to state claims against.
-/

/-! ## A038197.P16859295824694956741

`A187506(n+2)`
-/

namespace A038197.P16859295824694956741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187506 (n + 2)

end

end A038197.P16859295824694956741

/-! ## A038197.P17534359073529377986

`A187503(n+5)`
-/

namespace A038197.P17534359073529377986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187503 (n + 5)

end

end A038197.P17534359073529377986

/-! ## A038197.P4058463822703577879

`or(A000007(n), A187503(A020710(n)))`
-/

namespace A038197.P4058463822703577879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A187503 (A020710 n).toNat)

end

end A038197.P4058463822703577879

/-! ## A038197.P2483380145358794806

`A033999(n)²*A187503(A020710(n))`
-/

namespace A038197.P2483380145358794806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A187503 (A020710 n).toNat

end

end A038197.P2483380145358794806

/-! ## A038197.P16239650107021917352

`A187503(A020710(n))-A000007(A008486(n))`
-/

namespace A038197.P16239650107021917352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187503 (A020710 n).toNat - A000007 (A008486 n).toNat

end

end A038197.P16239650107021917352

/-! ## A038197.P1932854658856672868

`A187503(A020710(n))-A000007(A016789(n))`
-/

namespace A038197.P1932854658856672868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187503 (A020710 n).toNat - A000007 (A016789 n).toNat

end

end A038197.P1932854658856672868

/-! ## A038197.P1112254039495921016

`A187503(A020710(n))-A000007(A016945(n))`
-/

namespace A038197.P1112254039495921016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187503 (A020710 n).toNat - A000007 (A016945 n).toNat

end

end A038197.P1112254039495921016

/-! ## A038197.P17954347210567675493

`A060824(n+2)/2`
-/

namespace A038197.P17954347210567675493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060824 (n + 2) : ℚ) / 2

end

end A038197.P17954347210567675493

/-! ## A038197.P9068355242976498433

`A187503(A020710(n))%Δ[A006357(n)]`
-/

namespace A038197.P9068355242976498433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187503 (A020710 n).toNat) (f1 (n + 1) - f1 n)

end

end A038197.P9068355242976498433

/-!
# A038198: Numbers k such that k^2 + 7 is a power of 2.

The programs for A038198, there is no canonical definition to state claims against.
-/

/-! ## A038198.P5646718415699005173

`10*a(n-1)+71` with `a(0)=1, a(1)=3, a(2)=5, a(3)=11`
-/

namespace A038198.P5646718415699005173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5, 11] fun n a =>
  10 * a (n - 1) + 71

end

end A038198.P5646718415699005173

/-!
# A038199: Row sums of triangle T(m,n) = number of solutions to 1 <= a(1) < a(2) < ... < a(m) <= n, where gcd(a(1), a(2), ..., a(m), n) = 1, in A020921.

The programs for A038199, the canonical program `A038199.P1588479413970294253` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038199 has offset 1).

The definition of A038199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038199.P10634395542588680493

`(n+1)*A059966(n+1)`
-/

namespace A038199.P10634395542588680493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A059966 (n + 1)

end

end A038199.P10634395542588680493

namespace A038199

/-- `(n+1)*A059966(n+1)` -/
def P10634395542588680493.Spec : Prop :=
  ∀ n, P10634395542588680493.a n = A038199 (n + 1)

end A038199

/-! ## A038199.P8411953278941811143

`floor(A056267(n+1)+acot(n))`
-/

namespace A038199.P8411953278941811143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056267 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A038199.P8411953278941811143

namespace A038199

/-- `floor(A056267(n+1)+acot(n))` -/
def P8411953278941811143.Spec : Prop :=
  ∀ n, P8411953278941811143.a n = A038199 (n + 1)

end A038199

/-! ## A038199.P11910289237857463657

`(n+1)*A001037((n+1)%(2*n+1))`
-/

namespace A038199.P11910289237857463657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001037 ((n + 1) % (2 * n + 1))

end

end A038199.P11910289237857463657

namespace A038199

/-- `(n+1)*A001037((n+1)%(2*n+1))` -/
def P11910289237857463657.Spec : Prop :=
  ∀ n, P11910289237857463657.a n = A038199 (n + 1)

end A038199

/-! ## A038199.P10847803262523991762

`∑{d}[n+1, A008683((n+1)/#)*(2^#-1)]`
-/

namespace A038199.P10847803262523991762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * ((2 ^ d : ℤ) - 1)

end

end A038199.P10847803262523991762

namespace A038199

/-- `∑{d}[n+1, A008683((n+1)/#)*(2^#-1)]` -/
def P10847803262523991762.Spec : Prop :=
  ∀ n, P10847803262523991762.a n = A038199 (n + 1)

end A038199

/-! ## A038199.P5807963769385080391

`A056267(n+1)+A000007(n)`
-/

namespace A038199.P5807963769385080391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056267 (n + 1) + A000007 n

end

end A038199.P5807963769385080391

namespace A038199

/-- `A056267(n+1)+A000007(n)` -/
def P5807963769385080391.Spec : Prop :=
  ∀ n, P5807963769385080391.a n = A038199 (n + 1)

end A038199

/-! ## A038199.P18097925595477010786

`A027375(n+1)-A000007(n)`
-/

namespace A038199.P18097925595477010786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027375 (n + 1) - A000007 n

end

end A038199.P18097925595477010786

namespace A038199

/-- `A027375(n+1)-A000007(n)` -/
def P18097925595477010786.Spec : Prop :=
  ∀ n, P18097925595477010786.a n = A038199 (n + 1)

end A038199

/-! ## A038199.P8752337339081738536

`or(∑[A011782(n)], A056267(n+1))`
-/

namespace A038199.P8752337339081738536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A056267 (n + 1))

end

end A038199.P8752337339081738536

namespace A038199

/-- `or(∑[A011782(n)], A056267(n+1))` -/
def P8752337339081738536.Spec : Prop :=
  ∀ n, P8752337339081738536.a n = A038199 (n + 1)

end A038199

/-! ## A038199.P1684940778540644228

`A056278(n+1)+A000740(n+1)`
-/

namespace A038199.P1684940778540644228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056278 (n + 1) + A000740 (n + 1)

end

end A038199.P1684940778540644228

namespace A038199

/-- `A056278(n+1)+A000740(n+1)` -/
def P1684940778540644228.Spec : Prop :=
  ∀ n, P1684940778540644228.a n = A038199 (n + 1)

end A038199

/-! ## A038199.P1588479413970294253

`A000740(n+1)*A036453(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A038199

/-- `A000740(n+1)*A036453(n+1)` -/
def P1588479413970294253.Spec : Prop :=
  ∀ n, P1588479413970294253.a n = A038199 (n + 1)

theorem P1588479413970294253.correct : P1588479413970294253.Spec := by
  intro n
  simp only [A038199, Nat.add_sub_cancel]

end A038199

/-! ## A038199.P8683611595436247596

`(A057427(n)+1)*A000740(n+1)`
-/

namespace A038199.P8683611595436247596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A000740 (n + 1)

end

end A038199.P8683611595436247596

namespace A038199

/-- `(A057427(n)+1)*A000740(n+1)` -/
def P8683611595436247596.Spec : Prop :=
  ∀ n, P8683611595436247596.a n = A038199 (n + 1)

end A038199

/-! ## A038199.P13238417873496778440

`(n+1)*A001037(A087156(n+1))`
-/

namespace A038199.P13238417873496778440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001037 (A087156 (n + 1)).toNat

end

end A038199.P13238417873496778440

namespace A038199

/-- `(n+1)*A001037(A087156(n+1))` -/
def P13238417873496778440.Spec : Prop :=
  ∀ n, P13238417873496778440.a n = A038199 (n + 1)

end A038199

/-! ## A038199.P5244253328407519947

`A000007(n)+2*A056278(n+1)`
-/

namespace A038199.P5244253328407519947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A056278 (n + 1)

end

end A038199.P5244253328407519947

namespace A038199

/-- `A000007(n)+2*A056278(n+1)` -/
def P5244253328407519947.Spec : Prop :=
  ∀ n, P5244253328407519947.a n = A038199 (n + 1)

end A038199

/-! ## A038199.P5622948623321069111

`(1-A057428(n))*A000740(n+1)`
-/

namespace A038199.P5622948623321069111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057428 n) * A000740 (n + 1)

end

end A038199.P5622948623321069111

namespace A038199

/-- `(1-A057428(n))*A000740(n+1)` -/
def P5622948623321069111.Spec : Prop :=
  ∀ n, P5622948623321069111.a n = A038199 (n + 1)

end A038199

/-! ## A038199.P15246892120220146285

`2*A000740(n+1)-A000007(n)`
-/

namespace A038199.P15246892120220146285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000740 (n + 1) - A000007 n

end

end A038199.P15246892120220146285

namespace A038199

/-- `2*A000740(n+1)-A000007(n)` -/
def P15246892120220146285.Spec : Prop :=
  ∀ n, P15246892120220146285.a n = A038199 (n + 1)

end A038199

/-! ## A038199.P867325192767555052

`or(A011782(n+1), A056267(n+1))`
-/

namespace A038199.P867325192767555052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011782 (n + 1)) (A056267 (n + 1))

end

end A038199.P867325192767555052

namespace A038199

/-- `or(A011782(n+1), A056267(n+1))` -/
def P867325192767555052.Spec : Prop :=
  ∀ n, P867325192767555052.a n = A038199 (n + 1)

end A038199

/-! ## A038199.P1521093817922792164

`(A134824(n)²+1)*A000740(n+1)`
-/

namespace A038199.P1521093817922792164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134824 n ^ 2 + 1) * A000740 (n + 1)

end

end A038199.P1521093817922792164

namespace A038199

/-- `(A134824(n)²+1)*A000740(n+1)` -/
def P1521093817922792164.Spec : Prop :=
  ∀ n, P1521093817922792164.a n = A038199 (n + 1)

end A038199

/-! ## A038199.P4664993876422731346

`(A157532(n+1)-1)*A000740(n+1)`
-/

namespace A038199.P4664993876422731346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157532 (n + 1) - 1) * A000740 (n + 1)

end

end A038199.P4664993876422731346

namespace A038199

/-- `(A157532(n+1)-1)*A000740(n+1)` -/
def P4664993876422731346.Spec : Prop :=
  ∀ n, P4664993876422731346.a n = A038199 (n + 1)

end A038199

/-! ## A038199.P3646162340661860021

`∑{d}[n+1, A007427(#)*A130887((n+1)/#)]`
-/

namespace A038199.P3646162340661860021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A130887 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038199.P3646162340661860021

namespace A038199

/-- `∑{d}[n+1, A007427(#)*A130887((n+1)/#)]` -/
def P3646162340661860021.Spec : Prop :=
  ∀ n, P3646162340661860021.a n = A038199 (n + 1)

end A038199

/-! ## A038199.P13089419255424801815

`∑{d}[n+1, A067856(#)*A085903((n+1)/#)]`
-/

namespace A038199.P13089419255424801815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A067856 d * A085903 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038199.P13089419255424801815

namespace A038199

/-- `∑{d}[n+1, A067856(#)*A085903((n+1)/#)]` -/
def P13089419255424801815.Spec : Prop :=
  ∀ n, P13089419255424801815.a n = A038199 (n + 1)

end A038199

