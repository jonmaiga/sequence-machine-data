import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A332300: The least prime factor of the numerator of Bernoulli(2*n), or 1 if the numerator is 1.

The programs for A332300, there is no canonical definition to state claims against.
-/

/-! ## A332300.P2313434714782515006

`A242193(n^A338732(n))`
-/

namespace A332300.P2313434714782515006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242193 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A338732 n : ℤ))).toNat

end

end A332300.P2313434714782515006

/-! ## A332300.P4048942787020363828

`A242193(gcd(n, A199970(3*n+2)))`
-/

namespace A332300.P4048942787020363828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242193 (Int.gcd (n : ℤ) (A199970 (3 * n + 2)))

end

end A332300.P4048942787020363828

/-! ## A332300.P17076895510028646662

`A242193(A070939(∑[floor(2^(n-1))]))`
-/

namespace A332300.P17076895510028646662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242193 (A070939 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A332300.P17076895510028646662

/-! ## A332300.P12703011983368459311

`A242193(A091050(∑[ceil(2^(n-1))]))`
-/

namespace A332300.P12703011983368459311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242193 (A091050 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A332300.P12703011983368459311

/-! ## A332300.P14387706362598624862

`A242193(A000038(3*floor(2^n/3))+n)`
-/

namespace A332300.P14387706362598624862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242193 (A000038 (3 * ⌊(2 ^ n : ℚ) / 3⌋).toNat + (n : ℤ)).toNat

end

end A332300.P14387706362598624862

/-!
# A332303: a(n) = (n^2)! * [x^(n^2)] 1 / (1 - Sum_{k>=1} x^(n*k) / (n*k)!).

The programs for A332303, there is no canonical definition to state claims against.
-/

/-! ## A332303.P13816730326604526207

`A260883(∑[4*n]+1)`
-/

namespace A332303.P13816730326604526207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260883 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A332303.P13816730326604526207

/-!
# A332304: Number of compositions (ordered partitions) of n into distinct parts such that number of parts is odd.

The programs for A332304, there is no canonical definition to state claims against.
-/

/-! ## A332304.P2079587699210038355

`A032020(n)-A332305(n)`
-/

namespace A332304.P2079587699210038355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n - A332305 n

end

end A332304.P2079587699210038355

/-! ## A332304.P13344997642675648539

`A332305(n)-A339435(n)`
-/

namespace A332304.P13344997642675648539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332305 n - A339435 n

end

end A332304.P13344997642675648539

/-! ## A332304.P13925547604537457772

`(A032020(n)-A339435(n))/2`
-/

namespace A332304.P13925547604537457772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032020 n - A339435 n : ℚ) / 2

end

end A332304.P13925547604537457772

/-! ## A332304.P5103563541312504828

`A003242(n)-(A332305(n)+A285981(n))`
-/

namespace A332304.P5103563541312504828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 n - (A332305 n + A285981 n)

end

end A332304.P5103563541312504828

/-! ## A332304.P14240016130808419925

`A011782(n)-(A332305(n)+A261982(n))`
-/

namespace A332304.P14240016130808419925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (A332305 n + A261982 n)

end

end A332304.P14240016130808419925

/-! ## A332304.P3056722549735457990

`A243081(A034856(n+1))-A332305(n)`
-/

namespace A332304.P3056722549735457990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A034856 (n + 1)).toNat - A332305 n

end

end A332304.P3056722549735457990

/-!
# A332305: Number of compositions (ordered partitions) of n into distinct parts such that number of parts is even.

The programs for A332305, there is no canonical definition to state claims against.
-/

/-! ## A332305.P9174857349328756826

`A032020(n)-A332304(n)`
-/

namespace A332305.P9174857349328756826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n - A332304 n

end

end A332305.P9174857349328756826

/-! ## A332305.P2442400735194665987

`A339435(n)+A332304(n)`
-/

namespace A332305.P2442400735194665987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339435 n + A332304 n

end

end A332305.P2442400735194665987

/-! ## A332305.P14618595358019403842

`(A339435(n)+A032020(n))/2`
-/

namespace A332305.P14618595358019403842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339435 n + A032020 n : ℚ) / 2

end

end A332305.P14618595358019403842

/-! ## A332305.P2558209015631997105

`A003242(n)-(A332304(n)+A285981(n))`
-/

namespace A332305.P2558209015631997105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 n - (A332304 n + A285981 n)

end

end A332305.P2558209015631997105

/-! ## A332305.P12641377979283453103

`A011782(n)-(A332304(n)+A261982(n))`
-/

namespace A332305.P12641377979283453103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (A332304 n + A261982 n)

end

end A332305.P12641377979283453103

/-! ## A332305.P12072205730477826315

`A242447(A133263(n)-1)-A332304(n)`
-/

namespace A332305.P12072205730477826315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A133263 n - 1).toNat - A332304 n

end

end A332305.P12072205730477826315

/-! ## A332305.P13947142273434263766

`A243081(A034856(n+1))-A332304(n)`
-/

namespace A332305.P13947142273434263766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A034856 (n + 1)).toNat - A332304 n

end

end A332305.P13947142273434263766

/-!
# A332306: a(n) is the least k such that A121663(k) = n.

The programs for A332306, there is no canonical definition to state claims against.
-/

/-! ## A332306.P2830261353676980443

`A048675(A318954(n+1)^(A318954(2*n+3)%2))`
-/

namespace A332306.P2830261353676980443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (SequenceMachineLib.roundAway ((A318954 (n + 1) : ℚ) ^ (Int.tmod (A318954 (2 * n + 3)) 2 : ℤ))).toNat

end

end A332306.P2830261353676980443

/-! ## A332306.P12323216834556886605

`A334109(A318954(n+1)²)`
-/

namespace A332306.P12323216834556886605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334109 (A318954 (n + 1) ^ 2).toNat

end

end A332306.P12323216834556886605

/-! ## A332306.P9713710699271303637

`A087207(A003557(A318954(n+1)²))`
-/

namespace A332306.P9713710699271303637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A003557 (A318954 (n + 1) ^ 2).toNat).toNat

end

end A332306.P9713710699271303637

/-! ## A332306.P15146377226506678949

`A048675(A318954(n+1)^(A293658(n+1)%2))`
-/

namespace A332306.P15146377226506678949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (SequenceMachineLib.roundAway ((A318954 (n + 1) : ℚ) ^ (Int.tmod (A293658 (n + 1)) 2 : ℤ))).toNat

end

end A332306.P15146377226506678949

/-! ## A332306.P4481863287428525069

`A162474(A318954(n+1))`
-/

namespace A332306.P4481863287428525069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162474 (A318954 (n + 1)).toNat

end

end A332306.P4481863287428525069

/-!
# A332307: Array read by antidiagonals: T(m,n) is the number of (undirected) Hamiltonian paths in the m X n grid graph.

The programs for A332307, there is no canonical definition to state claims against.
-/

/-! ## A332307.P861773205360338523

`A173675(A036561(n)%A272317(n))`
-/

namespace A332307.P861773205360338523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173675 (Int.tmod (A036561 n) (A272317 n)).toNat

end

end A332307.P861773205360338523

/-! ## A332307.P2015580944843526724

`A173675(abs(A009531(A175840(n))))`
-/

namespace A332307.P2015580944843526724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173675 |A009531 (A175840 n).toNat|.toNat

end

end A332307.P2015580944843526724

/-! ## A332307.P7025523626905605952

`A173675(A036561(n))`
-/

namespace A332307.P7025523626905605952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173675 (A036561 n).toNat

end

end A332307.P7025523626905605952

/-! ## A332307.P17353662432200838016

`A173675(A082234(n+1))`
-/

namespace A332307.P17353662432200838016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173675 (A082234 (n + 1)).toNat

end

end A332307.P17353662432200838016

/-! ## A332307.P17364687099057934516

`A173675(A230445(n)+1)`
-/

namespace A332307.P17364687099057934516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173675 (A230445 n + 1).toNat

end

end A332307.P17364687099057934516

/-!
# A332316: Numbers k such that k and k + 1 have the same value of the norm of the totient function for Gaussian integers (A103224).

The programs for A332316, there is no canonical definition to state claims against.
-/

/-! ## A332316.P4432496201596102316

`eq[A103224(abs(1-n)+1), A103224(n+1)]`
-/

namespace A332316.P4432496201596102316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103224 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103224 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332316.P4432496201596102316

/-!
# A332317: Numbers k that are harmonic in Gaussian integers: k * A062327(k) is divisible by A103228(k) + i*A103229(k) (where i is the imaginary unit).

The programs for A332317, there is no canonical definition to state claims against.
-/

/-! ## A332317.P11369680171407767138

`lcm(A008778(n), A327844(A000184(n+2)))`
-/

namespace A332317.P11369680171407767138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008778 n) (A327844 (A000184 (n + 2)).toNat)

end

end A332317.P11369680171407767138

/-!
# A332321: Numbers k that are norm-superabundant in Gaussian integers, i.e., A103230(m)/m^2 < A103230(k)/k^2 for all m < k.

The programs for A332321, there is no canonical definition to state claims against.
-/

/-! ## A332321.P14740122923856730038

`A373226(A378133(n))`
-/

namespace A332321.P14740122923856730038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373226 (A378133 n).toNat

end

end A332321.P14740122923856730038

/-! ## A332321.P3604541280403292174

`A373226(A018894(n+1))`
-/

namespace A332321.P3604541280403292174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373226 (A018894 (n + 1)).toNat

end

end A332321.P3604541280403292174

/-! ## A332321.P15855061134694181707

`A373226(A126098(n+1))`
-/

namespace A332321.P15855061134694181707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373226 (A126098 (n + 1)).toNat

end

end A332321.P15855061134694181707

/-!
# A332325: Number of Maclaurin polynomials p(2m,x) of cos(x) that have exactly n positive zeros.

The programs for A332325, there is no canonical definition to state claims against.
-/

/-! ## A332325.P11838337811176376784

`A336123(A274384(n+1))+3`
-/

namespace A332325.P11838337811176376784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336123 (A274384 (n + 1)).toNat + 3

end

end A332325.P11838337811176376784

/-!
# A332333: a(n) = A335778(n)/12.

The programs for A332333, there is no canonical definition to state claims against.
-/

/-! ## A332333.P13151801376027038973

`A335778(n+1)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332333.P13151801376027038973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335778 (n + 1) : ℚ) / 12

end

end A332333.P13151801376027038973

/-! ## A332333.P4228047673769253011

`A051724(A335778(n+1))`
-/

namespace A332333.P4228047673769253011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A335778 (n + 1)).toNat

end

end A332333.P4228047673769253011

/-! ## A332333.P4844278762022104500

`A120562(A290440(n)-A166476(n+1))`
-/

namespace A332333.P4844278762022104500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 (A290440 n - A166476 (n + 1)).toNat

end

end A332333.P4844278762022104500

/-! ## A332333.P6513460805914690490

`or(A065066(A195598(n+1)), A346117(n+1))`
-/

namespace A332333.P6513460805914690490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A065066 (A195598 (n + 1)).toNat) (A346117 (n + 1))

end

end A332333.P6513460805914690490

/-!
# A332334: Let a(1) = a(2) = 1, and for n > 2 let a(n) = p where p is the largest prime such that p# divides phi(n), where phi is Euler's totient function and # is the primorial.

The programs for A332334, there is no canonical definition to state claims against.
-/

/-! ## A332334.P17755753317093398440

`A376928(((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])²)`
-/

namespace A332334.P17755753317093398440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376928 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)) ^ 2)).toNat

end

end A332334.P17755753317093398440

/-! ## A332334.P982517135079821108

`A257993(7*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A332334.P982517135079821108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (SequenceMachineLib.roundAway (7 * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)))).toNat

end

end A332334.P982517135079821108

/-! ## A332334.P5641882702597220897

`A329900(∏{p}[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], #])`
-/

namespace A332334.P5641882702597220897
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p)

end

end A332334.P5641882702597220897

/-! ## A332334.P13476779486924111759

`A376928(Δ[A002088(n)])`
-/

namespace A332334.P13476779486924111759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376928 (f1 (n + 1) - f1 n).toNat

end

end A332334.P13476779486924111759

/-! ## A332334.P10470399753976233380

`A002034(A343783(n+1))`
-/

namespace A332334.P10470399753976233380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A343783 (n + 1)).toNat

end

end A332334.P10470399753976233380

/-! ## A332334.P3278127299223164866

`A376928(A000010(n+1))`
-/

namespace A332334.P3278127299223164866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376928 (A000010 (n + 1)).toNat

end

end A332334.P3278127299223164866

/-! ## A332334.P2850531433907744037

`A376928(A002322(n+1))`
-/

namespace A332334.P2850531433907744037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376928 (A002322 (n + 1)).toNat

end

end A332334.P2850531433907744037

/-! ## A332334.P12066806874557266130

`A376928(A011773(n+1))`
-/

namespace A332334.P12066806874557266130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376928 (A011773 (n + 1)).toNat

end

end A332334.P12066806874557266130

/-! ## A332334.P6963884354882429702

`A329900(A080400(n+1))`
-/

namespace A332334.P6963884354882429702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A080400 (n + 1)).toNat

end

end A332334.P6963884354882429702

/-! ## A332334.P1940402350305387119

`A376928(A127473(n+1))`
-/

namespace A332334.P1940402350305387119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376928 (A127473 (n + 1)).toNat

end

end A332334.P1940402350305387119

/-!
# A332336: Number of narrowly totally strongly normal compositions of n.

The programs for A332336, there is no canonical definition to state claims against.
-/

/-! ## A332336.P5766837474264547896

`floor(A332337(n)+atan(n))`
-/

namespace A332336.P5766837474264547896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332337 n : ℝ) + Real.arctan (n : ℝ)⌋

end

end A332336.P5766837474264547896

/-! ## A332336.P14165726207145151073

`A332337(n)+A157928(n)`
-/

namespace A332336.P14165726207145151073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332337 n + A157928 n

end

end A332336.P14165726207145151073

/-! ## A332336.P8182674500691044499

`A332337(n)+1-A014071(n)`
-/

namespace A332336.P8182674500691044499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332337 n + (1 - A014071 n)

end

end A332336.P8182674500691044499

/-! ## A332336.P1144821555158861799

`A332337(n)%A000085(n)+1`
-/

namespace A332336.P1144821555158861799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332337 n) (A000085 n) + 1

end

end A332336.P1144821555158861799

/-! ## A332336.P10732919310041717452

`A332337(n)+char[A057956(n+1)]`
-/

namespace A332336.P10732919310041717452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057956 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332337 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A332336.P10732919310041717452

/-!
# A332337: Number of widely totally strongly normal compositions of n.

The programs for A332337, there is no canonical definition to state claims against.
-/

/-! ## A332337.P231877836792912870

`A332336(n)-floor(atan(n))`
-/

namespace A332337.P231877836792912870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332336 n - ⌊Real.arctan (n : ℝ)⌋

end

end A332337.P231877836792912870

/-! ## A332337.P15069200008300634681

`A332336(round(acot(n)+n))-1`
-/

namespace A332337.P15069200008300634681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332336 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - 1

end

end A332337.P15069200008300634681

/-! ## A332337.P9215513384184849534

`A332336(n)-A157928(n)`
-/

namespace A332337.P9215513384184849534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332336 n - A157928 n

end

end A332337.P9215513384184849534

/-! ## A332337.P8274590149749564412

`A332336(A233583(n+1))-1`
-/

namespace A332337.P8274590149749564412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332336 (A233583 (n + 1)).toNat - 1

end

end A332337.P8274590149749564412

/-! ## A332337.P16408890529006012161

`A332336(n)-A091247(2*n)`
-/

namespace A332337.P16408890529006012161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332336 n - A091247 (2 * n)

end

end A332337.P16408890529006012161

/-!
# A332338: Number of alternately co-strong compositions of n.

The programs for A332338, there is no canonical definition to state claims against.
-/

/-! ## A332338.P10028543830050366813

`A344654(n)+A003056(A060089(n))`
-/

namespace A332338.P10028543830050366813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344654 n + A003056 (A060089 n).toNat

end

end A332338.P10028543830050366813

/-! ## A332338.P4823053823974649325

`A332836(n)-A181786(A001088(n))`
-/

namespace A332338.P4823053823974649325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332836 n - A181786 (A001088 n).toNat

end

end A332338.P4823053823974649325

/-! ## A332338.P14406913778729198887

`A280951(∑[A379668(2*n+1)+A166517(n)])`
-/

namespace A332338.P14406913778729198887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379668 (2 * n + 1) + A166517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280951 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A332338.P14406913778729198887

/-! ## A332338.P11274214100622920479

`A106829(A371992(n+3))`
-/

namespace A332338.P11274214100622920479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106829 (A371992 (n + 3)).toNat

end

end A332338.P11274214100622920479

/-! ## A332338.P11025916964395168892

`A206718(round(sqrt(A237262(n+1))))`
-/

namespace A332338.P11025916964395168892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206718 (SequenceMachineLib.roundAway (Real.sqrt (A237262 (n + 1) : ℝ))).toNat

end

end A332338.P11025916964395168892

/-!
# A332339: Number of alternately co-strong reversed integer partitions of n.

The programs for A332339, there is no canonical definition to state claims against.
-/

/-! ## A332339.P5089617495304073168

`A100882(n)-A100910(A283212(n))`
-/

namespace A332339.P5089617495304073168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100882 n - A100910 (A283212 n).toNat

end

end A332339.P5089617495304073168

/-! ## A332339.P15589701493202618496

`A156277(A236096(n+1))+A100882(n)`
-/

namespace A332339.P15589701493202618496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156277 (A236096 (n + 1)).toNat + A100882 n

end

end A332339.P15589701493202618496

/-! ## A332339.P9604284982552975835

`A100882(n)-A058276(A077168(n))`
-/

namespace A332339.P9604284982552975835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100882 n - A058276 (A077168 n).toNat

end

end A332339.P9604284982552975835

/-! ## A332339.P10803804100958770799

`A100882(n)-A100910(A120393(n+1))`
-/

namespace A332339.P10803804100958770799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100882 n - A100910 (A120393 (n + 1)).toNat

end

end A332339.P10803804100958770799

/-!
# A332342: Table T(n, k) read by antidiagonals upwards: sum of the terms of the continued fraction for the fractional part of n/k (n>=1, k>=1).

The programs for A332342, there is no canonical definition to state claims against.
-/

/-! ## A332342.P6417483514836423880

`A072030(n+1)-A003988(n+1)`
-/

namespace A332342.P6417483514836423880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072030 (n + 1) - A003988 (n + 1)

end

end A332342.P6417483514836423880

/-! ## A332342.P2015472286221203154

`A267177(A060734(n+1))-A003988(n+1)`
-/

namespace A332342.P2015472286221203154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267177 (A060734 (n + 1)).toNat - A003988 (n + 1)

end

end A332342.P2015472286221203154

/-! ## A332342.P2888407202002203723

`A267177(A060736(n+1))-A003988(n+1)`
-/

namespace A332342.P2888407202002203723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267177 (A060736 (n + 1)).toNat - A003988 (n + 1)

end

end A332342.P2888407202002203723

/-! ## A332342.P15185530921615630271

`A267177(A081344(n+1))-A003988(n+1)`
-/

namespace A332342.P15185530921615630271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267177 (A081344 (n + 1)).toNat - A003988 (n + 1)

end

end A332342.P15185530921615630271

/-! ## A332342.P18020757050803592491

`A072030(n+1)-A025581(A286157(n+1))`
-/

namespace A332342.P18020757050803592491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072030 (n + 1) - A025581 (A286157 (n + 1)).toNat

end

end A332342.P18020757050803592491

/-! ## A332342.P12940110311015545216

`A267177(A213928(n+1))-A003988(n+1)`
-/

namespace A332342.P12940110311015545216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267177 (A213928 (n + 1)).toNat - A003988 (n + 1)

end

end A332342.P12940110311015545216

/-! ## A332342.P15442701999824687335

`A267177(A219159(n+1))-A003988(n+1)`
-/

namespace A332342.P15442701999824687335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267177 (A219159 (n + 1)).toNat - A003988 (n + 1)

end

end A332342.P15442701999824687335

/-! ## A332342.P17189733016346540646

`A049834(A080036(n))-A010766(A080036(n))`
-/

namespace A332342.P17189733016346540646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A080036 n).toNat - A010766 (A080036 n).toNat

end

end A332342.P17189733016346540646

/-! ## A332342.P5648536062097146454

`A029837(A338579(n+2))-A003988(n+1)`
-/

namespace A332342.P5648536062097146454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A338579 (n + 2)).toNat - A003988 (n + 1)

end

end A332342.P5648536062097146454

/-!
# A332344: a(n) is the number of permutations w of 1,2,...,n such that w is alternating and w^{-1} is reverse alternating.

The programs for A332344, there is no canonical definition to state claims against.
-/

/-! ## A332344.P13139859980238643354

`A122362(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A332344.P13139859980238643354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  A122362 (a (n - 1) + a (n - 2)).toNat

end

end A332344.P13139859980238643354

/-! ## A332344.P5586584945225766613

`A122362(a(n-1)-floor(-a(n-2)))` with `a(0)=1, a(1)=1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A332344.P5586584945225766613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  A122362 (a (n - 1) - (-a (n - 2))).toNat

end

end A332344.P5586584945225766613

/-! ## A332344.P5013366177466008287

`A122362(a(n-1)-ceil(-a(n-2)))` with `a(0)=1, a(1)=1, a(2)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A332344.P5013366177466008287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  A122362 (a (n - 1) - (-a (n - 2))).toNat

end

end A332344.P5013366177466008287

/-! ## A332344.P12071467770048325129

`A122362(a(n-1)-(char[1]-a(n-2)))` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A332344.P12071467770048325129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  A122362 (a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))).toNat

end

end A332344.P12071467770048325129

/-! ## A332344.P910613117868545695

`A122362(1-floor(1-a(n-1)-a(n-2)))` with `a(0)=1, a(1)=1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A332344.P910613117868545695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  A122362 (1 - (1 - a (n - 1) - a (n - 2))).toNat

end

end A332344.P910613117868545695

/-!
# A332346: Primes p such that A332300(p) = p.

The programs for A332346, there is no canonical definition to state claims against.
-/

/-! ## A332346.P16513479872422197808

`p?[A045968(A348553(n))]`
-/

namespace A332346.P16513479872422197808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045968 (A348553 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A332346.P16513479872422197808

/-! ## A332346.P6538320107565908041

`A000040(lt[A331813(n+4), A331786(n+1)])`
-/

namespace A332346.P6538320107565908041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331813 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A332346.P6538320107565908041

/-! ## A332346.P16068110615519661913

`A000040(lt[A331813(n+4), A331788(n+1)])`
-/

namespace A332346.P16068110615519661913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331813 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A332346.P16068110615519661913

/-! ## A332346.P11127033554847479555

`A000040(lt[A061419(n+1), A206396(3*n+4)])`
-/

namespace A332346.P11127033554847479555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206396 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A332346.P11127033554847479555

/-! ## A332346.P2225440479035568496

`eq[A038699(n+1), A111008(n)]`
-/

namespace A332346.P2225440479035568496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332346.P2225440479035568496

/-!
# A332347: Array read by antidiagonals: T(m,n) is the number of maximal independent sets in the m X n king graph.

The programs for A332347, there is no canonical definition to state claims against.
-/

/-! ## A332347.P5729616744260825369

`A227568(A120951(A206987(n+1)))`
-/

namespace A332347.P5729616744260825369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A120951 (A206987 (n + 1)).toNat).toNat

end

end A332347.P5729616744260825369

/-! ## A332347.P11503714737690257073

`A372475(C(A303682(n+1), A007318(n)))`
-/

namespace A332347.P11503714737690257073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372475 (Nat.choose (A303682 (n + 1)).toNat (A007318 n).toNat)

end

end A332347.P11503714737690257073

/-! ## A332347.P8857876907740255131

`A372475(C(A304133(n+1), A007318(n)))`
-/

namespace A332347.P8857876907740255131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372475 (Nat.choose (A304133 (n + 1)).toNat (A007318 n).toNat)

end

end A332347.P8857876907740255131

/-!
# A332348: Number of maximal independent sets in the 3 X n king graph.

The programs for A332348, there is no canonical definition to state claims against.
-/

/-! ## A332348.P2523549535149939013

`A332347(∑[n+2]-1)`
-/

namespace A332348.P2523549535149939013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332347 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A332348.P2523549535149939013

/-! ## A332348.P9400871780233457863

`A332347(A034856(n+1))%A074616(n)`
-/

namespace A332348.P9400871780233457863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332347 (A034856 (n + 1)).toNat) (A074616 n)

end

end A332348.P9400871780233457863

/-! ## A332348.P5608335861782453600

`A332347(A034856(n+1))+A159075(n+2)`
-/

namespace A332348.P5608335861782453600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332347 (A034856 (n + 1)).toNat + A159075 (n + 2)

end

end A332348.P5608335861782453600

/-! ## A332348.P7299484769187826858

`A214956(n+1)*A332347(A034856(n+1))`
-/

namespace A332348.P7299484769187826858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214956 (n + 1) * A332347 (A034856 (n + 1)).toNat

end

end A332348.P7299484769187826858

/-! ## A332348.P16219489894199511032

`A332347(A034856(n+1))+A129231(A034563(n+1))`
-/

namespace A332348.P16219489894199511032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332347 (A034856 (n + 1)).toNat + A129231 (A034563 (n + 1)).toNat

end

end A332348.P16219489894199511032

/-!
# A332349: Number of maximal independent sets in the 4 X n king graph.

The programs for A332349, there is no canonical definition to state claims against.
-/

/-! ## A332349.P11908449161337526518

`A332347(A141214(n))-A000007(n)`
-/

namespace A332349.P11908449161337526518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332347 (A141214 n).toNat - A000007 n

end

end A332349.P11908449161337526518

/-! ## A332349.P10949317825755679988

`A332347(A141214(n)-A000038(n))`
-/

namespace A332349.P10949317825755679988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332347 (A141214 n - A000038 n).toNat

end

end A332349.P10949317825755679988

/-! ## A332349.P3704631932760720665

`A332347(A141214(n))-A151934(n)`
-/

namespace A332349.P3704631932760720665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332347 (A141214 n).toNat - A151934 n

end

end A332349.P3704631932760720665

/-! ## A332349.P14846817086467318765

`A332347(A141214(n))/A054977(n)`
-/

namespace A332349.P14846817086467318765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332347 (A141214 n).toNat : ℚ) / (A054977 n : ℚ)

end

end A332349.P14846817086467318765

/-! ## A332349.P8140114187336835638

`A332347(gcd(A141214(n), A151934(n)))`
-/

namespace A332349.P8140114187336835638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332347 (Int.gcd (A141214 n) (A151934 n))

end

end A332349.P8140114187336835638

/-!
# A332350: Triangle read by rows: T(m,n) = Sum_{-m= n >= 1.

The programs for A332350, there is no canonical definition to state claims against.
-/

/-! ## A332350.P10391328259032651068

`2*A332351(n+1)`
-/

namespace A332350.P10391328259032651068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A332351 (n + 1)

end

end A332350.P10391328259032651068

/-! ## A332350.P6226311704166504990

`A005843(A332351(n+1))`
-/

namespace A332350.P6226311704166504990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A332351 (n + 1)).toNat

end

end A332350.P6226311704166504990

/-! ## A332350.P640346529140030360

`A004273(A332351(n+1)+1)-1`
-/

namespace A332350.P640346529140030360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A332351 (n + 1) + 1).toNat - 1

end

end A332350.P640346529140030360

/-! ## A332350.P8897347558625467429

`A004277(A332351(n+1)+1)-2`
-/

namespace A332350.P8897347558625467429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A332351 (n + 1) + 1).toNat - 2

end

end A332350.P8897347558625467429

/-! ## A332350.P5910539664931534248

`2*(A332353(n+1)+A107348(n))`
-/

namespace A332350.P5910539664931534248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A332353 (n + 1) + A107348 n)

end

end A332350.P5910539664931534248

/-! ## A332350.P12231726122806844262

`A332352(n+1)+2*A107348(n)`
-/

namespace A332350.P12231726122806844262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332352 (n + 1) + 2 * A107348 n

end

end A332350.P12231726122806844262

/-! ## A332350.P15143993505140757187

`A332351(ϕ²-(ϕ-n))+A332351(n+1)`
-/

namespace A332350.P15143993505140757187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332351 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat + A332351 (n + 1)

end

end A332350.P15143993505140757187

/-! ## A332350.P2879060823554893406

`A057427(n)+A004273(A332351(n+1))`
-/

namespace A332350.P2879060823554893406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A004273 (A332351 (n + 1)).toNat

end

end A332350.P2879060823554893406

/-! ## A332350.P4413262837253321630

`A004277(A332351(n+1))-A000007(n)`
-/

namespace A332350.P4413262837253321630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A332351 (n + 1)).toNat - A000007 n

end

end A332350.P4413262837253321630

/-!
# A332351: Triangle read by rows: T(m,n) = Sum_{-m= n >= 1.

The programs for A332351, there is no canonical definition to state claims against.
-/

/-! ## A332351.P9758683332062639578

`A332353(n+1)+A295707(A245300(n)+1)`
-/

namespace A332351.P9758683332062639578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332353 (n + 1) + A295707 (A245300 n + 1).toNat

end

end A332351.P9758683332062639578

/-! ## A332351.P17353384930739577927

`A295707(A245300(n)+1)+A332352(n+1)/2`
-/

namespace A332351.P17353384930739577927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295707 (A245300 n + 1).toNat : ℚ) + (A332352 (n + 1) : ℚ) / 2

end

end A332351.P17353384930739577927

/-! ## A332351.P6923002944509764253

`A295707(A245300(n)+1)+A001281(A332352(n+1))`
-/

namespace A332351.P6923002944509764253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A245300 n + 1).toNat + A001281 (A332352 (n + 1)).toNat

end

end A332351.P6923002944509764253

/-! ## A332351.P12006638471396697382

`A332350(n+1)/2`
-/

namespace A332351.P12006638471396697382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332350 (n + 1) : ℚ) / 2

end

end A332351.P12006638471396697382

/-! ## A332351.P11350773306315851016

`A001281(A332350(n+1))`
-/

namespace A332351.P11350773306315851016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A332350 (n + 1)).toNat

end

end A332351.P11350773306315851016

/-! ## A332351.P5120029114962788000

`A004524(A332350(n+1)+1)`
-/

namespace A332351.P5120029114962788000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A332350 (n + 1) + 1).toNat

end

end A332351.P5120029114962788000

/-! ## A332351.P9340214159460471282

`A004526(A332350(n+1)+1)`
-/

namespace A332351.P9340214159460471282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A332350 (n + 1) + 1).toNat

end

end A332351.P9340214159460471282

/-! ## A332351.P18245124388751433291

`A028242(A332350(n+1)+1)`
-/

namespace A332351.P18245124388751433291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A332350 (n + 1) + 1).toNat

end

end A332351.P18245124388751433291

/-! ## A332351.P4110977517251298968

`A057979(A332350(n+1)+1)`
-/

namespace A332351.P4110977517251298968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A332350 (n + 1) + 1).toNat

end

end A332351.P4110977517251298968

/-! ## A332351.P14573608540361424370

`A004525(lcm(2, A332350(n+1)))`
-/

namespace A332351.P14573608540361424370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lcm 2 (A332350 (n + 1)))

end

end A332351.P14573608540361424370

/-!
# A332352: Triangle read by rows: T(m,n) = Sum_{-m= n >= 1.

The programs for A332352, there is no canonical definition to state claims against.
-/

/-! ## A332352.P16208683712754995197

`2*A332353(n+1)`
-/

namespace A332352.P16208683712754995197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A332353 (n + 1)

end

end A332352.P16208683712754995197

/-! ## A332352.P17477660402432898366

`4*A332353(-xor(n, -1))/2`
-/

namespace A332352.P17477660402432898366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A332353 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) / 2)

end

end A332352.P17477660402432898366

/-! ## A332352.P11935572870015316467

`A332353(C(n+1, n))+A332353(n+1)`
-/

namespace A332352.P11935572870015316467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332353 (Nat.choose (n + 1) n) + A332353 (n + 1)

end

end A332352.P11935572870015316467

/-! ## A332352.P2055736517031038110

`A332353(n+1)+A332353(-xor(n, -1))`
-/

namespace A332352.P2055736517031038110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332353 (n + 1) + A332353 (-Int.xor (n : ℤ) (-1)).toNat

end

end A332352.P2055736517031038110

/-! ## A332352.P16538322997652728328

`A332353(A000027(n+1))+A332353(n+1)`
-/

namespace A332352.P16538322997652728328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332353 (A000027 (n + 1)).toNat + A332353 (n + 1)

end

end A332352.P16538322997652728328

/-! ## A332352.P14769234265796093150

`A332353(A000007(n)+1+n)+A332353(n+1)`
-/

namespace A332352.P14769234265796093150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332353 (A000007 n + 1 + (n : ℤ)).toNat + A332353 (n + 1)

end

end A332352.P14769234265796093150

/-! ## A332352.P14446573181042434386

`A332353(n+1)+A332353(n+1)%A272842(n)`
-/

namespace A332352.P14446573181042434386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332353 (n + 1) + Int.tmod (A332353 (n + 1)) (A272842 n)

end

end A332352.P14446573181042434386

/-! ## A332352.P3365134684417553174

`A005843(A332353(n+1))`
-/

namespace A332352.P3365134684417553174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A332353 (n + 1)).toNat

end

end A332352.P3365134684417553174

/-! ## A332352.P14369343834852264949

`A001281(4*A332353(-xor(n, -1)))`
-/

namespace A332352.P14369343834852264949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (4 * A332353 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A332352.P14369343834852264949

/-! ## A332352.P10847349792032494218

`A004524(4*A332353(-xor(n, -1)))`
-/

namespace A332352.P10847349792032494218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (4 * A332353 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A332352.P10847349792032494218

/-!
# A332353: Triangle read by rows: T(m,n) = Sum_{-m= n >= 1.

The programs for A332353, there is no canonical definition to state claims against.
-/

/-! ## A332353.P3477816574871060850

`A332352(n+1)/2`
-/

namespace A332353.P3477816574871060850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332352 (n + 1) : ℚ) / 2

end

end A332353.P3477816574871060850

/-! ## A332353.P3696092849730582092

`floor(A332352(-xor(n, -1))/2)`
-/

namespace A332353.P3696092849730582092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332352 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) / 2⌋

end

end A332353.P3696092849730582092

/-! ## A332353.P2063398682855764664

`A332351(n+1)-A295707(A245300(n)+1)`
-/

namespace A332353.P2063398682855764664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332351 (n + 1) - A295707 (A245300 n + 1).toNat

end

end A332353.P2063398682855764664

/-! ## A332353.P13198317854854840636

`A014682(A332352(n+1))`
-/

namespace A332353.P13198317854854840636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A332352 (n + 1)).toNat

end

end A332353.P13198317854854840636

/-! ## A332353.P11003401196440925750

`A175126(A332352(n+1)+A000007(n))`
-/

namespace A332353.P11003401196440925750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A332352 (n + 1) + A000007 n).toNat

end

end A332353.P11003401196440925750

/-! ## A332353.P6878653254728429832

`A006370(A332352(abs(xor(n, -1))))`
-/

namespace A332353.P6878653254728429832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A332352 |Int.xor (n : ℤ) (-1)|.toNat).toNat

end

end A332353.P6878653254728429832

/-! ## A332353.P7764932547463688602

`A004524(A332352(n+1)+1)`
-/

namespace A332353.P7764932547463688602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A332352 (n + 1) + 1).toNat

end

end A332353.P7764932547463688602

/-! ## A332353.P16592840367461233939

`A004526(A332352(n+1)+1)`
-/

namespace A332353.P16592840367461233939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A332352 (n + 1) + 1).toNat

end

end A332353.P16592840367461233939

/-! ## A332353.P12793161705375672677

`A004525(lcm(2, A332352(n+1)))`
-/

namespace A332353.P12793161705375672677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lcm 2 (A332352 (n + 1)))

end

end A332353.P12793161705375672677

/-! ## A332353.P14522506060883552313

`A004525(A332352(-xor(n, -1)))`
-/

namespace A332353.P14522506060883552313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A332352 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A332353.P14522506060883552313

/-! ## A332353.P16696752405961649200

`A002265(2*A332352(n+1))`
-/

namespace A332353.P16696752405961649200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A332352 (n + 1)).toNat

end

end A332353.P16696752405961649200

/-!
# A332354: Consider a partition of the triangle with vertices (0, 0), (1, 0), (0, 1) by the lines a_1*x_1 + a_2*x_2 = 1, where (x_1, x_2) is in {1, 2,...,m} X {1, 2,...,n}, m >= 1, n >= 1. Triangle read by rows: T(m,n) = number of triangular cells in the partition, for m >= n >= 1.

The programs for A332354, there is no canonical definition to state claims against.
-/

/-! ## A332354.P301109534445008923

`A332357(n+1)-A332356(n+1)`
-/

namespace A332354.P301109534445008923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332357 (n + 1) - A332356 (n + 1)

end

end A332354.P301109534445008923

/-! ## A332354.P9345901579798413670

`A332357(n+1)+A260196(n)*A332356(n+1)`
-/

namespace A332354.P9345901579798413670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332357 (n + 1) + A260196 n * A332356 (n + 1)

end

end A332354.P9345901579798413670

/-! ## A332354.P12342136536658241648

`A332359(n+1)+1-A332361(n+1)-A332356(n+1)`
-/

namespace A332354.P12342136536658241648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332359 (n + 1) + (1 - A332361 (n + 1)) - A332356 (n + 1)

end

end A332354.P12342136536658241648

/-! ## A332354.P5646399567429091755

`(A332351(n+1)+A051162(n))/2+1-A332356(n+1)`
-/

namespace A332354.P5646399567429091755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332351 (n + 1) + A051162 n : ℚ) / 2 + 1 - (A332356 (n + 1) : ℚ)

end

end A332354.P5646399567429091755

/-! ## A332354.P933966035206126585

`A008619(A332351(n+1)+A051162(n))-A332356(n+1)`
-/

namespace A332354.P933966035206126585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A332351 (n + 1) + A051162 n).toNat - A332356 (n + 1)

end

end A332354.P933966035206126585

/-!
# A332355: Main diagonal of A332354.

The programs for A332355, there is no canonical definition to state claims against.
-/

/-! ## A332355.P947102347147674806

`A177719(n+1)+record[A247617(n)]`
-/

namespace A332355.P947102347147674806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177719 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332355.P947102347147674806

/-! ## A332355.P6026057894934811113

`or(1, A177719(n+1)+A062545(n))`
-/

namespace A332355.P6026057894934811113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A177719 (n + 1) + A062545 n)

end

end A332355.P6026057894934811113

/-! ## A332355.P8658846603343655343

`A177719(n+1)+A057544(2*n+1)`
-/

namespace A332355.P8658846603343655343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177719 (n + 1) + A057544 (2 * n + 1)

end

end A332355.P8658846603343655343

/-! ## A332355.P8660891783327671092

`A114043(n+1)-2*A159065(n+1)`
-/

namespace A332355.P8660891783327671092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114043 (n + 1) - 2 * A159065 (n + 1)

end

end A332355.P8660891783327671092

/-! ## A332355.P14419939248594101128

`A177719(n+1)+A028310(A062545(n))`
-/

namespace A332355.P14419939248594101128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177719 (n + 1) + A028310 (A062545 n).toNat

end

end A332355.P14419939248594101128

/-!
# A332356: Consider a partition of the triangle with vertices (0, 0), (1, 0), (0, 1) by the lines a_1*x_1 + a_2*x_2 = 1, where (x_1, x_2) is in {1, 2,...,m} X {1, 2,...,n}, m >= 1, n >= 1. Triangle read by rows: T(m,n) = number of quadrilateral cells in the partition, for m >= n >= 1.

The programs for A332356, there is no canonical definition to state claims against.
-/

/-! ## A332356.P4179126754318474500

`A332357(n+1)-A332354(n+1)`
-/

namespace A332356.P4179126754318474500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332357 (n + 1) - A332354 (n + 1)

end

end A332356.P4179126754318474500

/-! ## A332356.P17868064122044516869

`A332359(n+1)+1-A332361(n+1)-A332354(n+1)`
-/

namespace A332356.P17868064122044516869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332359 (n + 1) + (1 - A332361 (n + 1)) - A332354 (n + 1)

end

end A332356.P17868064122044516869

/-! ## A332356.P8454477124471813396

`(A332351(n+1)+A051162(n))/2+1-A332354(n+1)`
-/

namespace A332356.P8454477124471813396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332351 (n + 1) + A051162 n : ℚ) / 2 + 1 - (A332354 (n + 1) : ℚ)

end

end A332356.P8454477124471813396

/-! ## A332356.P15457341624779787717

`A332357(A000027(n+1))+A001478(A332354(n+1))`
-/

namespace A332356.P15457341624779787717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332357 (A000027 (n + 1)).toNat + A001478 (A332354 (n + 1)).toNat

end

end A332356.P15457341624779787717

/-! ## A332356.P9346418886623976254

`A008619(A332351(n+1)+A051162(n))-A332354(n+1)`
-/

namespace A332356.P9346418886623976254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A332351 (n + 1) + A051162 n).toNat - A332354 (n + 1)

end

end A332356.P9346418886623976254

/-! ## A332356.P638847626954354317

`A029579(A332351(n+1)+A051162(n))-A332354(n+1)`
-/

namespace A332356.P638847626954354317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A332351 (n + 1) + A051162 n).toNat - A332354 (n + 1)

end

end A332356.P638847626954354317

/-! ## A332356.P6663281140191860657

`A003602(A332351(n+1)+A051162(n)+1)-A332354(n+1)`
-/

namespace A332356.P6663281140191860657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A332351 (n + 1) + A051162 n + 1).toNat - A332354 (n + 1)

end

end A332356.P6663281140191860657

/-! ## A332356.P1496970396283747860

`A004525(A332351(n+1)+A051162(n))+1-A332354(n+1)`
-/

namespace A332356.P1496970396283747860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A332351 (n + 1) + A051162 n).toNat + 1 - A332354 (n + 1)

end

end A332356.P1496970396283747860

/-! ## A332356.P263506596091562558

`A026741(A332351(n+1)+A051162(n))+1-A332354(n+1)`
-/

namespace A332356.P263506596091562558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A332351 (n + 1) + A051162 n).toNat + 1 - A332354 (n + 1)

end

end A332356.P263506596091562558

/-! ## A332356.P16287168964853839088

`A023443(A107348(n))%A332357(n+1)`
-/

namespace A332356.P16287168964853839088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023443 (A107348 n).toNat) (A332357 (n + 1))

end

end A332356.P16287168964853839088

/-!
# A332357: Consider a partition of the triangle with vertices (0, 0), (1, 0), (0, 1) by the lines a_1*x_1 + a_2*x_2 = 1, where (x_1, x_2) is in {1, 2,...,m} X {1, 2,...,n}, m >= 1, n >= 1. Triangle read by rows: T(m,n) = number of cells (both 3-sided and 4-sided) in the partition, for m >= n >= 1.

The programs for A332357, there is no canonical definition to state claims against.
-/

/-! ## A332357.P13242657481581549551

`A332356(n+1)+A332354(n+1)`
-/

namespace A332357.P13242657481581549551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332356 (n + 1) + A332354 (n + 1)

end

end A332357.P13242657481581549551

/-! ## A332357.P3005640769871016766

`A332359(n+1)+1-A332361(n+1)`
-/

namespace A332357.P3005640769871016766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332359 (n + 1) + (1 - A332361 (n + 1))

end

end A332357.P3005640769871016766

/-! ## A332357.P10018858100870858033

`(A332351(n+1)+A051162(n))/2+1`
-/

namespace A332357.P10018858100870858033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332351 (n + 1) + A051162 n : ℚ) / 2 + 1

end

end A332357.P10018858100870858033

/-! ## A332357.P312184670313941763

`A008619(A332351(n+1)+A051162(n))`
-/

namespace A332357.P312184670313941763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A332351 (n + 1) + A051162 n).toNat

end

end A332357.P312184670313941763

/-! ## A332357.P9298266095574524375

`A028242(A332351(n+1)+A051162(n))`
-/

namespace A332357.P9298266095574524375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A332351 (n + 1) + A051162 n).toNat

end

end A332357.P9298266095574524375

/-! ## A332357.P18325089718346946550

`A029579(A332351(n+1)+A051162(n))`
-/

namespace A332357.P18325089718346946550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A332351 (n + 1) + A051162 n).toNat

end

end A332357.P18325089718346946550

/-! ## A332357.P9839383747737854437

`A003602(A332351(n+1)+A051162(n)+1)`
-/

namespace A332357.P9839383747737854437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A332351 (n + 1) + (A051162 n + 1)).toNat

end

end A332357.P9839383747737854437

/-! ## A332357.P12372601266251602868

`A004525(A332351(n+1)+A051162(n))+1`
-/

namespace A332357.P12372601266251602868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A332351 (n + 1) + A051162 n).toNat + 1

end

end A332357.P12372601266251602868

/-! ## A332357.P2873645385777788960

`A026741(A332351(n+1)+A051162(n))+1`
-/

namespace A332357.P2873645385777788960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A332351 (n + 1) + A051162 n).toNat + 1

end

end A332357.P2873645385777788960

/-! ## A332357.P9541902141470875351

`A029578(A332351(n+1)+A051162(n))+1`
-/

namespace A332357.P9541902141470875351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A332351 (n + 1) + A051162 n).toNat + 1

end

end A332357.P9541902141470875351

/-!
# A332358: Main diagonal of A332357.

The programs for A332358, there is no canonical definition to state claims against.
-/

/-! ## A332358.P13910201790740636544

`A306302(n)+1`
-/

namespace A332358.P13910201790740636544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306302 n + 1

end

end A332358.P13910201790740636544

/-! ## A332358.P6881484366790794621

`2*A331756(n)+1`
-/

namespace A332358.P6881484366790794621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331756 n + 1

end

end A332358.P6881484366790794621

/-! ## A332358.P9178585195263242653

`A115005(n+1)+1+n`
-/

namespace A332358.P9178585195263242653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115005 (n + 1) + 1 + (n : ℤ)

end

end A332358.P9178585195263242653

/-! ## A332358.P15337831409087436410

`2*(A355902(n)-n)+1`
-/

namespace A332358.P15337831409087436410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A355902 n - (n : ℤ)) + 1

end

end A332358.P15337831409087436410

/-! ## A332358.P1238495545066778944

`A290131(n+1)+Δ[n²]`
-/

namespace A332358.P1238495545066778944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290131 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A332358.P1238495545066778944

/-!
# A332359: Consider a partition of the triangle with vertices (0, 0), (1, 0), (0, 1) by the lines a_1*x_1 + a_2*x_2 = 1, where (x_1, x_2) is in {1, 2,...,m} X {1, 2,...,n}, m >= 1, n >= 1. Triangle read by rows: T(m,n) = number of edges in the partition, for m >= n >= 1.

The programs for A332359, there is no canonical definition to state claims against.
-/

/-! ## A332359.P3505272612643720344

`A332357(n+1)+A332361(n+1)-1`
-/

namespace A332359.P3505272612643720344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332357 (n + 1) + (A332361 (n + 1) - 1)

end

end A332359.P3505272612643720344

/-! ## A332359.P16658423120435393165

`A332357(n+1)+A023443(A332361(n+1))`
-/

namespace A332359.P16658423120435393165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332357 (n + 1) + A023443 (A332361 (n + 1)).toNat

end

end A332359.P16658423120435393165

/-! ## A332359.P8778331522998379103

`A199969(A332361(n+1)+A332357(n+1))`
-/

namespace A332359.P8778331522998379103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A332361 (n + 1) + A332357 (n + 1)).toNat

end

end A332359.P8778331522998379103

/-! ## A332359.P4683285267455150102

`A106400(A080100(n))+A332361(n+1)+A332357(n+1)`
-/

namespace A332359.P4683285267455150102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A080100 n).toNat + (A332361 (n + 1) + A332357 (n + 1))

end

end A332359.P4683285267455150102

/-! ## A332359.P1627080646863285700

`A332354(n+1)+A332356(n+1)+A023443(A332361(n+1))`
-/

namespace A332359.P1627080646863285700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332354 (n + 1) + (A332356 (n + 1) + A023443 (A332361 (n + 1)).toNat)

end

end A332359.P1627080646863285700

/-! ## A332359.P17001439023581412390

`A199969(A332361(n+1)+A332356(n+1)+A332354(n+1))`
-/

namespace A332359.P17001439023581412390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A332361 (n + 1) + (A332356 (n + 1) + A332354 (n + 1))).toNat

end

end A332359.P17001439023581412390

/-! ## A332359.P17418881019509623076

`A332354(n+1)-A024000(A332361(n+1)+A332356(n+1))`
-/

namespace A332359.P17418881019509623076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332354 (n + 1) - A024000 (A332361 (n + 1) + A332356 (n + 1)).toNat

end

end A332359.P17418881019509623076

/-! ## A332359.P16911875886340221125

`(A332351(n+1)+A051162(n))/2+1-A024000(A332361(n+1))`
-/

namespace A332359.P16911875886340221125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332351 (n + 1) + A051162 n : ℚ) / 2 + 1 - (A024000 (A332361 (n + 1)).toNat : ℚ)

end

end A332359.P16911875886340221125

/-! ## A332359.P10125694536989151304

`A199969(A332361(n+1))+A028242(A332351(n+1)+A051162(n))`
-/

namespace A332359.P10125694536989151304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A332361 (n + 1)).toNat + A028242 (A332351 (n + 1) + A051162 n).toNat

end

end A332359.P10125694536989151304

/-!
# A332360: Main diagonal of A332359.

The programs for A332360, there is no canonical definition to state claims against.
-/

/-! ## A332360.P16501853650554678013

`A290132(n+1)+2*(n+1)`
-/

namespace A332360.P16501853650554678013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290132 (n + 1) + (2 * (n + 1) : ℤ)

end

end A332360.P16501853650554678013

/-! ## A332360.P6687070635330122255

`A332362(n+1)+A306302(n)`
-/

namespace A332360.P6687070635330122255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332362 (n + 1) + A306302 n

end

end A332360.P6687070635330122255

/-! ## A332360.P4803070175434180467

`A290132(n+1)+A005408(n)+1`
-/

namespace A332360.P4803070175434180467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290132 (n + 1) + A005408 n + 1

end

end A332360.P4803070175434180467

/-!
# A332361: Consider a partition of the triangle with vertices (0, 0), (1, 0), (0, 1) by the lines a_1*x_1 + a_2*x_2 = 1, where (x_1, x_2) is in {1, 2,...,m} X {1, 2,...,n}, m >= 1, n >= 1. Triangle read by rows: T(m,n) = number of vertices in the partition, for m >= n >= 1.

The programs for A332361, there is no canonical definition to state claims against.
-/

/-! ## A332361.P11482843644911533663

`A332359(n+1)+1-A332357(n+1)`
-/

namespace A332361.P11482843644911533663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332359 (n + 1) + (1 - A332357 (n + 1))

end

end A332361.P11482843644911533663

/-! ## A332361.P5026758595242839645

`A332359(n+1)+A024000(A332357(n+1))`
-/

namespace A332361.P5026758595242839645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332359 (n + 1) + A024000 (A332357 (n + 1)).toNat

end

end A332361.P5026758595242839645

/-! ## A332361.P1778559053525095828

`A020725(A332359(n+1)-A332357(n+1))`
-/

namespace A332361.P1778559053525095828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A332359 (n + 1) - A332357 (n + 1)).toNat

end

end A332361.P1778559053525095828

/-! ## A332361.P12550370116512309994

`A065475(A332359(n+1)-A332357(n+1))`
-/

namespace A332361.P12550370116512309994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A332359 (n + 1) - A332357 (n + 1)).toNat

end

end A332361.P12550370116512309994

/-! ## A332361.P1559459936529317152

`A332359(n+1)+A024000(A332356(n+1)+A332354(n+1))`
-/

namespace A332361.P1559459936529317152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332359 (n + 1) + A024000 (A332356 (n + 1) + A332354 (n + 1)).toNat

end

end A332361.P1559459936529317152

/-! ## A332361.P138432757856400969

`A020725(A332359(n+1)-(A332356(n+1)+A332354(n+1)))`
-/

namespace A332361.P138432757856400969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A332359 (n + 1) - (A332356 (n + 1) + A332354 (n + 1))).toNat

end

end A332361.P138432757856400969

/-!
# A332362: Main diagonal of A332361.

The programs for A332362, there is no canonical definition to state claims against.
-/

/-! ## A332362.P17661597471340558050

`A331755(n+1)+1`
-/

namespace A332362.P17661597471340558050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331755 (n + 1) + 1

end

end A332362.P17661597471340558050

/-! ## A332362.P16818730373202247185

`2*n+A159065(n+1)+3`
-/

namespace A332362.P16818730373202247185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A159065 (n + 1) + 3)

end

end A332362.P16818730373202247185

/-! ## A332362.P1390025261250868974

`2*n+record[A018808(n)/2-n]+3`
-/

namespace A332362.P1390025261250868974
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018808 n : ℚ) / 2 - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 3)

end

end A332362.P1390025261250868974

/-! ## A332362.P15001671387651343801

`A332360(n+1)-A306302(n)`
-/

namespace A332362.P15001671387651343801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332360 (n + 1) - A306302 n

end

end A332362.P15001671387651343801

/-! ## A332362.P9124430387056252484

`A159065(n+1)+Δ[A005563(n)]`
-/

namespace A332362.P9124430387056252484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159065 (n + 1) + (f1 (n + 1) - f1 n)

end

end A332362.P9124430387056252484

/-!
# A332363: Triangle read by rows: T(m,n) = number of unstable threshold functions (the function u_{0,1}(m,n) of Alekseyev et al. 2015) for m >= n >= 2.

The programs for A332363, there is no canonical definition to state claims against.
-/

/-! ## A332363.P2629383218481167734

`A332367(n+2)-A332365(n+2)`
-/

namespace A332363.P2629383218481167734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332367 (n + 2) - A332365 (n + 2)

end

end A332363.P2629383218481167734

/-! ## A332363.P9908534020809008871

`A332374(n+2)+1-A332369(n+2)`
-/

namespace A332363.P9908534020809008871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332374 (n + 2) + (1 - A332369 (n + 2))

end

end A332363.P9908534020809008871

/-! ## A332363.P10588587235976374552

`A332365(n+2)-2*A333295(n+1)`
-/

namespace A332363.P10588587235976374552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332365 (n + 2) - 2 * A333295 (n + 1)

end

end A332363.P10588587235976374552

/-! ## A332363.P17764874524620645903

`A332367(n+2)/2-A333295(n+1)`
-/

namespace A332363.P17764874524620645903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332367 (n + 2) : ℚ) / 2 - (A333295 (n + 1) : ℚ)

end

end A332363.P17764874524620645903

/-! ## A332363.P8211059228822014799

`A001281(A332367(n+2))-A333295(n+1)`
-/

namespace A332363.P8211059228822014799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A332367 (n + 2)).toNat - A333295 (n + 1)

end

end A332363.P8211059228822014799

/-! ## A332363.P11153606903981037018

`A332365(n+2)-A004277(A333295(n+1))`
-/

namespace A332363.P11153606903981037018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332365 (n + 2) - A004277 (A333295 (n + 1)).toNat

end

end A332363.P11153606903981037018

/-! ## A332363.P6520977752934364336

`A332367(A000027(n+2))%A332365(n+2)`
-/

namespace A332363.P6520977752934364336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332367 (A000027 (n + 2)).toNat) (A332365 (n + 2))

end

end A332363.P6520977752934364336

/-! ## A332363.P9381682523041160984

`A332371(n+2)-(A332369(n+2)+A332365(n+2))`
-/

namespace A332363.P9381682523041160984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332371 (n + 2) - (A332369 (n + 2) + A332365 (n + 2))

end

end A332363.P9381682523041160984

/-!
# A332364: Main diagonal of A332363.

The programs for A332364, there is no canonical definition to state claims against.
-/

/-! ## A332364.P5461179019043520540

`A332375(n+2)+1-A332370(n+2)`
-/

namespace A332364.P5461179019043520540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332375 (n + 2) + (1 - A332370 (n + 2))

end

end A332364.P5461179019043520540

/-! ## A332364.P2752859581127442422

`2*A332368(n+2)-A018805(n+1)`
-/

namespace A332364.P2752859581127442422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A332368 (n + 2) - A018805 (n + 1)

end

end A332364.P2752859581127442422

/-! ## A332364.P2948416685086444889

`A332366(n+2)-2*A018805(n+1)`
-/

namespace A332364.P2948416685086444889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332366 (n + 2) - 2 * A018805 (n + 1)

end

end A332364.P2948416685086444889

/-! ## A332364.P3527066101215068483

`4*A332368(n+2)-A332366(n+2)`
-/

namespace A332364.P3527066101215068483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A332368 (n + 2) - A332366 (n + 2)

end

end A332364.P3527066101215068483

/-! ## A332364.P14058113596052675124

`A332366(n+2)-A004277(A018805(n+1))`
-/

namespace A332364.P14058113596052675124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332366 (n + 2) - A004277 (A018805 (n + 1)).toNat

end

end A332364.P14058113596052675124

/-!
# A332365: Triangle read by rows: T(m,n) = number of threshold functions (the function u_{0,2}(m,n) of Alekseyev et al. 2015) for m >= n >= 2.

The programs for A332365, there is no canonical definition to state claims against.
-/

/-! ## A332365.P16290060050962738136

`A332367(n+2)-A332363(n+2)`
-/

namespace A332365.P16290060050962738136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332367 (n + 2) - A332363 (n + 2)

end

end A332365.P16290060050962738136

/-! ## A332365.P6944114393726158247

`A332371(n+2)-(A332374(n+2)+1)`
-/

namespace A332365.P6944114393726158247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332371 (n + 2) - (A332374 (n + 2) + 1)

end

end A332365.P6944114393726158247

/-! ## A332365.P200861104610961957

`A332363(n+2)+2*A333295(n+1)`
-/

namespace A332365.P200861104610961957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332363 (n + 2) + 2 * A333295 (n + 1)

end

end A332365.P200861104610961957

/-! ## A332365.P6379747226885007422

`A333295(n+1)+A332367(n+2)/2`
-/

namespace A332365.P6379747226885007422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333295 (n + 1) : ℚ) + (A332367 (n + 2) : ℚ) / 2

end

end A332365.P6379747226885007422

/-! ## A332365.P15506173733716556625

`A332372(n+2)-2*A332374(n+2)`
-/

namespace A332365.P15506173733716556625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332372 (n + 2) - 2 * A332374 (n + 2)

end

end A332365.P15506173733716556625

/-! ## A332365.P67678226816345799

`A333295(n+1)+A001281(A332367(n+2))`
-/

namespace A332365.P67678226816345799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333295 (n + 1) + A001281 (A332367 (n + 2)).toNat

end

end A332365.P67678226816345799

/-! ## A332365.P10125309173752548246

`A332363(n+2)+A004277(A333295(n+1))`
-/

namespace A332365.P10125309173752548246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332363 (n + 2) + A004277 (A333295 (n + 1)).toNat

end

end A332365.P10125309173752548246

/-! ## A332365.P10217229131748999376

`A004275(A332371(n+2))-A332372(n+2)`
-/

namespace A332365.P10217229131748999376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A332371 (n + 2)).toNat - A332372 (n + 2)

end

end A332365.P10217229131748999376

/-! ## A332365.P10505884713215505643

`A332372(n+2)-A004277(A332374(n+2))`
-/

namespace A332365.P10505884713215505643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332372 (n + 2) - A004277 (A332374 (n + 2)).toNat

end

end A332365.P10505884713215505643

/-! ## A332365.P3240503486319377021

`A023443(A332371(n+2)-A332374(n+2))`
-/

namespace A332365.P3240503486319377021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A332371 (n + 2) - A332374 (n + 2)).toNat

end

end A332365.P3240503486319377021

/-!
# A332366: Main diagonal of A332365.

The programs for A332366, there is no canonical definition to state claims against.
-/

/-! ## A332366.P12220168901874354712

`A141255(n+2)-A332375(n+2)`
-/

namespace A332366.P12220168901874354712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141255 (n + 2) - A332375 (n + 2)

end

end A332366.P12220168901874354712

/-! ## A332366.P16406311853179121470

`A114043(n+2)-(A332375(n+2)+1)`
-/

namespace A332366.P16406311853179121470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114043 (n + 2) - (A332375 (n + 2) + 1)

end

end A332366.P16406311853179121470

/-! ## A332366.P9891058668445667312

`A018805(n+1)+2*A332368(n+2)`
-/

namespace A332366.P9891058668445667312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (n + 1) + 2 * A332368 (n + 2)

end

end A332366.P9891058668445667312

/-! ## A332366.P9513766398657330558

`A332364(n+2)+2*A018805(n+1)`
-/

namespace A332366.P9513766398657330558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332364 (n + 2) + 2 * A018805 (n + 1)

end

end A332366.P9513766398657330558

/-! ## A332366.P10150523265722334622

`4*A332368(n+2)-A332364(n+2)`
-/

namespace A332366.P10150523265722334622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A332368 (n + 2) - A332364 (n + 2)

end

end A332366.P10150523265722334622

/-!
# A332367: Consider a partition of the plane (a_1,a_2) in R X R by the lines a_1*x_1 + a_2*x_2 = 1 for 0 <= x_1 <= m-1, 1 <= x_2 <= 1-1. The cells are (generalized) triangles and quadrilaterals. Triangle read by rows: T(m,n) = number of triangular cells in the partition for m >= n >= 2.

The programs for A332367, there is no canonical definition to state claims against.
-/

/-! ## A332367.P1040060015853153439

`A332365(n+2)+A332363(n+2)`
-/

namespace A332367.P1040060015853153439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332365 (n + 2) + A332363 (n + 2)

end

end A332367.P1040060015853153439

/-! ## A332367.P11059151842973651018

`A332371(n+2)-A332369(n+2)`
-/

namespace A332367.P11059151842973651018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332371 (n + 2) - A332369 (n + 2)

end

end A332367.P11059151842973651018

/-! ## A332367.P7314216699917961635

`2*(A333295(n+1)+A332363(n+2))`
-/

namespace A332367.P7314216699917961635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A333295 (n + 1) + A332363 (n + 2))

end

end A332367.P7314216699917961635

/-! ## A332367.P12624058269261693606

`2*(A332365(n+2)-A333295(n+1))`
-/

namespace A332367.P12624058269261693606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A332365 (n + 2) - A333295 (n + 1))

end

end A332367.P12624058269261693606

/-! ## A332367.P9747009168285337833

`A332351(comp[∑[n]]+1)+1-A332369(n+2)`
-/

namespace A332367.P9747009168285337833
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332351 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + 1 - A332369 (n + 2)

end

end A332367.P9747009168285337833

/-! ## A332367.P379397133538714551

`A008574(A331762(n+1)+A075362(n+1))`
-/

namespace A332367.P379397133538714551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A331762 (n + 1) + A075362 (n + 1)).toNat

end

end A332367.P379397133538714551

/-! ## A332367.P2477490572413410604

`A004277(A333295(n+1)+A332363(n+2))`
-/

namespace A332367.P2477490572413410604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A333295 (n + 1) + A332363 (n + 2)).toNat

end

end A332367.P2477490572413410604

/-! ## A332367.P17723065674833198617

`A005843(A333295(n+1)+A332363(n+2))`
-/

namespace A332367.P17723065674833198617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A333295 (n + 1) + A332363 (n + 2)).toNat

end

end A332367.P17723065674833198617

/-! ## A332367.P2583392000023122841

`A004277(A332365(n+2)-A333295(n+1))`
-/

namespace A332367.P2583392000023122841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A332365 (n + 2) - A333295 (n + 1)).toNat

end

end A332367.P2583392000023122841

/-!
# A332368: Main diagonal of A332367, divided by 4.

The programs for A332368, there is no canonical definition to state claims against.
-/

/-! ## A332368.P487449807296257149

`2*A331773(n+2)+1`
-/

namespace A332368.P487449807296257149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331773 (n + 2) + 1

end

end A332368.P487449807296257149

/-! ## A332368.P49885820812985020

`A177719(n+2)/2+1`
-/

namespace A332368.P49885820812985020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177719 (n + 2) : ℚ) / 2 + 1

end

end A332368.P49885820812985020

/-! ## A332368.P14999945138177259730

`A331761(n+1)+(n+1)²`
-/

namespace A332368.P14999945138177259730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331761 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A332368.P14999945138177259730

/-! ## A332368.P2889030147416495505

`A324042(n+1)/2-(n+1)`
-/

namespace A332368.P2889030147416495505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324042 (n + 1) : ℚ) / 2 - (n + 1 : ℚ)

end

end A332368.P2889030147416495505

/-! ## A332368.P15850151770139450267

`∑[A004277(Δ[A331773(n+1)])]`
-/

namespace A332368.P15850151770139450267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331773 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332368.P15850151770139450267

/-!
# A332369: Consider a partition of the plane (a_1,a_2) in R X R by the lines a_1*x_1 + a_2*x_2 = 1 for 0 <= x_1 <= m-1, 1 <= x_2 <= 1-1. The cells are (generalized) triangles and quadrilaterals. Triangle read by rows: T(m,n) = number of quadrilateral cells in the partition for m >= n >= 2.

The programs for A332369, there is no canonical definition to state claims against.
-/

/-! ## A332369.P7759861326451864947

`A332371(n+2)-A332367(n+2)`
-/

namespace A332369.P7759861326451864947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332371 (n + 2) - A332367 (n + 2)

end

end A332369.P7759861326451864947

/-! ## A332369.P9403854682072631568

`A332374(n+2)+1-A332363(n+2)`
-/

namespace A332369.P9403854682072631568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332374 (n + 2) + (1 - A332363 (n + 2))

end

end A332369.P9403854682072631568

/-! ## A332369.P13498478525192251668

`A332351(comp[∑[n]]+1)+1-A332367(n+2)`
-/

namespace A332369.P13498478525192251668
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332351 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + 1 - A332367 (n + 2)

end

end A332369.P13498478525192251668

/-! ## A332369.P8715092322398808955

`A332374(n+2)+A024000(A332363(n+2))`
-/

namespace A332369.P8715092322398808955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332374 (n + 2) + A024000 (A332363 (n + 2)).toNat

end

end A332369.P8715092322398808955

/-! ## A332369.P16648423353062102570

`A020725(A332374(n+2)-A332363(n+2))`
-/

namespace A332369.P16648423353062102570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A332374 (n + 2) - A332363 (n + 2)).toNat

end

end A332369.P16648423353062102570

/-! ## A332369.P18027247614571489990

`A065475(A332374(n+2)-A332363(n+2))`
-/

namespace A332369.P18027247614571489990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A332374 (n + 2) - A332363 (n + 2)).toNat

end

end A332369.P18027247614571489990

/-! ## A332369.P3601182100717946677

`A153152(A332374(n+2)-A332363(n+2))`
-/

namespace A332369.P3601182100717946677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A332374 (n + 2) - A332363 (n + 2)).toNat

end

end A332369.P3601182100717946677

/-! ## A332369.P559950993383207681

`A332371(n+2)-(A332365(n+2)+A332363(n+2))`
-/

namespace A332369.P559950993383207681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332371 (n + 2) - (A332365 (n + 2) + A332363 (n + 2))

end

end A332369.P559950993383207681

/-! ## A332369.P2091151595007089145

`A332371(n+2)+-A332367(n+2)%A332372(n+2)`
-/

namespace A332369.P2091151595007089145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332371 (n + 2) + Int.tmod (-A332367 (n + 2)) (A332372 (n + 2))

end

end A332369.P2091151595007089145

/-! ## A332369.P7935063582583016148

`A332372(n+2)+1-A332374(n+2)-A332367(n+2)`
-/

namespace A332369.P7935063582583016148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332372 (n + 2) + 1 - A332374 (n + 2) - A332367 (n + 2)

end

end A332369.P7935063582583016148

/-!
# A332370: Main diagonal of A332369.

The programs for A332370, there is no canonical definition to state claims against.
-/

/-! ## A332370.P4488057662640883800

`2*(A324043(n+1)+n)+3`
-/

namespace A332370.P4488057662640883800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A324043 (n + 1) + (n : ℤ)) + 3

end

end A332370.P4488057662640883800

/-! ## A332370.P3068648450407323035

`A332375(n+2)+1-A332364(n+2)`
-/

namespace A332370.P3068648450407323035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332375 (n + 2) + (1 - A332364 (n + 2))

end

end A332370.P3068648450407323035

/-! ## A332370.P17093241206215807695

`A144396(n+1)+A324043(n+1)+A324043(n+1)`
-/

namespace A332370.P17093241206215807695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1) + (A324043 (n + 1) + A324043 (n + 1))

end

end A332370.P17093241206215807695

/-! ## A332370.P13679877514980048805

`A005408(A324043(n+1)+1+n)`
-/

namespace A332370.P13679877514980048805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A324043 (n + 1) + 1 + (n : ℤ)).toNat

end

end A332370.P13679877514980048805

/-! ## A332370.P575597301809388969

`A144396(A324043(n+1)+1+n)`
-/

namespace A332370.P575597301809388969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A324043 (n + 1) + 1 + (n : ℤ)).toNat

end

end A332370.P575597301809388969

/-!
# A332371: Consider a partition of the plane (a_1,a_2) in R X R by the lines a_1*x_1 + a_2*x_2 = 1 for 0 <= x_1 <= m-1, 1 <= x_2 <= 1-1. The cells are (generalized) triangles and quadrilaterals. Triangle read by rows: T(m,n) = total number of cells in the partition for m >= n >= 2.

The programs for A332371, there is no canonical definition to state claims against.
-/

/-! ## A332371.P18051663872207016018

`A332351(comp[∑[n]]+1)+1`
-/

namespace A332371.P18051663872207016018
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332351 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + 1

end

end A332371.P18051663872207016018

/-! ## A332371.P3827040862696728941

`A332369(n+2)+A332367(n+2)`
-/

namespace A332371.P3827040862696728941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332369 (n + 2) + A332367 (n + 2)

end

end A332371.P3827040862696728941

/-! ## A332371.P12311917943190049433

`A332365(n+2)+A332374(n+2)+1`
-/

namespace A332371.P12311917943190049433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332365 (n + 2) + (A332374 (n + 2) + 1)

end

end A332371.P12311917943190049433

/-! ## A332371.P1781425352444497711

`A332372(n+2)+1-A332374(n+2)`
-/

namespace A332371.P1781425352444497711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332372 (n + 2) + (1 - A332374 (n + 2))

end

end A332371.P1781425352444497711

/-! ## A332371.P16085062561469423855

`A008619(A332372(n+2)+A332365(n+2))`
-/

namespace A332371.P16085062561469423855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A332372 (n + 2) + A332365 (n + 2)).toNat

end

end A332371.P16085062561469423855

/-! ## A332371.P9094542021294102728

`A332365(n+2)+A020725(A332374(n+2))`
-/

namespace A332371.P9094542021294102728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332365 (n + 2) + A020725 (A332374 (n + 2)).toNat

end

end A332371.P9094542021294102728

/-! ## A332371.P2465506171683217363

`A328399(A332372(n+2)+A332365(n+2))`
-/

namespace A332371.P2465506171683217363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A332372 (n + 2) + A332365 (n + 2)).toNat

end

end A332371.P2465506171683217363

/-! ## A332371.P15965336033943006885

`A020725(A332372(n+2)-A332374(n+2))`
-/

namespace A332371.P15965336033943006885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A332372 (n + 2) - A332374 (n + 2)).toNat

end

end A332371.P15965336033943006885

/-! ## A332371.P14031110319914383482

`A326178(A332372(n+2)-A332374(n+2))`
-/

namespace A332371.P14031110319914383482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A332372 (n + 2) - A332374 (n + 2)).toNat

end

end A332371.P14031110319914383482

/-!
# A332372: Consider a partition of the plane (a_1,a_2) in R X R by the lines a_1*x_1 + a_2*x_2 = 1 for 0 <= x_1 <= m-1, 1 <= x_2 <= 1-1. The cells are (generalized) triangles and quadrilaterals. Triangle read by rows: T(m,n) = total number of edges in the partition for m >= n >= 2.

The programs for A332372, there is no canonical definition to state claims against.
-/

/-! ## A332372.P5258876659181035208

`A332371(n+2)+A332374(n+2)-1`
-/

namespace A332372.P5258876659181035208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332371 (n + 2) + (A332374 (n + 2) - 1)

end

end A332372.P5258876659181035208

/-! ## A332372.P15483404921157977056

`A332365(n+2)+2*A332374(n+2)`
-/

namespace A332372.P15483404921157977056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332365 (n + 2) + 2 * A332374 (n + 2)

end

end A332372.P15483404921157977056

/-! ## A332372.P15614729770448582374

`A332365(n+2)+A004277(A332374(n+2))`
-/

namespace A332372.P15614729770448582374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332365 (n + 2) + A004277 (A332374 (n + 2)).toNat

end

end A332372.P15614729770448582374

/-! ## A332372.P232630820316864007

`A332371(n+2)+A023443(A332374(n+2))`
-/

namespace A332372.P232630820316864007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332371 (n + 2) + A023443 (A332374 (n + 2)).toNat

end

end A332372.P232630820316864007

/-! ## A332372.P1729276705443553924

`A004275(A332371(n+2))-A332365(n+2)`
-/

namespace A332372.P1729276705443553924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A332371 (n + 2)).toNat - A332365 (n + 2)

end

end A332372.P1729276705443553924

/-!
# A332373: Main diagonal of A332372.

The programs for A332373, there is no canonical definition to state claims against.
-/

/-! ## A332373.P2382059082326180469

`A332375(n+2)+A141255(n+2)`
-/

namespace A332373.P2382059082326180469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332375 (n + 2) + A141255 (n + 2)

end

end A332373.P2382059082326180469

/-! ## A332373.P11026616339807176955

`A331771(n+2)-A332366(n+2)`
-/

namespace A332373.P11026616339807176955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331771 (n + 2) - A332366 (n + 2)

end

end A332373.P11026616339807176955

/-! ## A332373.P11243234861698036385

`A332366(n+2)+2*A332375(n+2)`
-/

namespace A332373.P11243234861698036385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332366 (n + 2) + 2 * A332375 (n + 2)

end

end A332373.P11243234861698036385

/-! ## A332373.P8504141277545663074

`A332375(n+2)-∑[-Δ[A114043(n+1)]]`
-/

namespace A332373.P8504141277545663074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114043 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332375 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332373.P8504141277545663074

/-! ## A332373.P2748556804264539018

`A141255(n+2)+A141255(n+2)-A332366(n+2)`
-/

namespace A332373.P2748556804264539018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141255 (n + 2) + (A141255 (n + 2) - A332366 (n + 2))

end

end A332373.P2748556804264539018

/-!
# A332374: Consider a partition of the plane (a_1,a_2) in R X R by the lines a_1*x_1 + a_2*x_2 = 1 for 0 <= x_1 <= m-1, 1 <= x_2 <= 1-1. The cells are (generalized) triangles and quadrilaterals. Triangle read by rows: T(m,n) = total number of vertices in the partition for m >= n >= 2.

The programs for A332374, there is no canonical definition to state claims against.
-/

/-! ## A332374.P5897282897390918081

`A332363(n+2)+A332369(n+2)-1`
-/

namespace A332374.P5897282897390918081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332363 (n + 2) + (A332369 (n + 2) - 1)

end

end A332374.P5897282897390918081

/-! ## A332374.P9144817736772179083

`A332371(n+2)-(A332365(n+2)+1)`
-/

namespace A332374.P9144817736772179083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332371 (n + 2) - (A332365 (n + 2) + 1)

end

end A332374.P9144817736772179083

/-! ## A332374.P16615910043460815962

`A332372(n+2)+1-A332371(n+2)`
-/

namespace A332374.P16615910043460815962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332372 (n + 2) + (1 - A332371 (n + 2))

end

end A332374.P16615910043460815962

/-! ## A332374.P3501764883132358489

`(A332372(n+2)-A332365(n+2))/2`
-/

namespace A332374.P3501764883132358489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332372 (n + 2) - A332365 (n + 2) : ℚ) / 2

end

end A332374.P3501764883132358489

/-! ## A332374.P18207006246410267744

`A332363(n+2)+A023443(A332369(n+2))`
-/

namespace A332374.P18207006246410267744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332363 (n + 2) + A023443 (A332369 (n + 2)).toNat

end

end A332374.P18207006246410267744

/-! ## A332374.P17136330226218723993

`A332372(n+2)+A024000(A332371(n+2))`
-/

namespace A332374.P17136330226218723993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332372 (n + 2) + A024000 (A332371 (n + 2)).toNat

end

end A332374.P17136330226218723993

/-! ## A332374.P5703719249702147365

`A001281(A332372(n+2)-A332365(n+2))`
-/

namespace A332374.P5703719249702147365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A332372 (n + 2) - A332365 (n + 2)).toNat

end

end A332374.P5703719249702147365

/-! ## A332374.P3560806800955635335

`A004525(A332372(n+2)-A332365(n+2))`
-/

namespace A332374.P3560806800955635335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A332372 (n + 2) - A332365 (n + 2)).toNat

end

end A332374.P3560806800955635335

/-! ## A332374.P15191491635196821700

`A014682(A332372(n+2)-A332365(n+2))`
-/

namespace A332374.P15191491635196821700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A332372 (n + 2) - A332365 (n + 2)).toNat

end

end A332374.P15191491635196821700

/-! ## A332374.P15027503256213978471

`A029578(A332372(n+2)-A332365(n+2))`
-/

namespace A332374.P15027503256213978471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A332372 (n + 2) - A332365 (n + 2)).toNat

end

end A332374.P15027503256213978471

/-!
# A332375: Main diagonal of A332374.

The programs for A332375, there is no canonical definition to state claims against.
-/

/-! ## A332375.P7326056212873655879

`A141255(n+2)-A332366(n+2)`
-/

namespace A332375.P7326056212873655879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141255 (n + 2) - A332366 (n + 2)

end

end A332375.P7326056212873655879

/-! ## A332375.P10384812019650138162

`A332364(n+2)+A332370(n+2)-1`
-/

namespace A332375.P10384812019650138162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332364 (n + 2) + (A332370 (n + 2) - 1)

end

end A332375.P10384812019650138162

/-! ## A332375.P513845064734109672

`A332373(n+2)-A141255(n+2)`
-/

namespace A332375.P513845064734109672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332373 (n + 2) - A141255 (n + 2)

end

end A332375.P513845064734109672

/-! ## A332375.P11115296924765532898

`A332373(n+2)+1-A114043(n+2)`
-/

namespace A332375.P11115296924765532898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332373 (n + 2) + 1 - A114043 (n + 2)

end

end A332375.P11115296924765532898

/-! ## A332375.P1008088887081123170

`(A332373(n+2)-A332366(n+2))/2`
-/

namespace A332375.P1008088887081123170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332373 (n + 2) - A332366 (n + 2) : ℚ) / 2

end

end A332375.P1008088887081123170

/-!
# A332376: Total number of edges in graph formed by the straight line segments connecting the edges of an equilateral triangle with the n-1 points resulting from a subdivision of the sides into n equal pieces.

The programs for A332376, there is no canonical definition to state claims against.
-/

/-! ## A332376.P7389316705916420365

`A092098(n+1)+A331782(n+1)-1`
-/

namespace A332376.P7389316705916420365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092098 (n + 1) + A331782 (n + 1) - 1

end

end A332376.P7389316705916420365

/-! ## A332376.P5121568391855451088

`3*A332377(n+1)`
-/

namespace A332376.P5121568391855451088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A332377 (n + 1)

end

end A332376.P5121568391855451088

/-! ## A332376.P10037267933122535490

`3*(A092098(n+1)-A002378(n))`
-/

namespace A332376.P10037267933122535490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A092098 (n + 1) - A002378 n)

end

end A332376.P10037267933122535490

/-! ## A332376.P15923286504344055044

`A091908(n+1)+A092098(n+1)+A016789(n)`
-/

namespace A332376.P15923286504344055044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091908 (n + 1) + (A092098 (n + 1) + A016789 n)

end

end A332376.P15923286504344055044

/-! ## A332376.P11006838707828334076

`A185048(A331782(n+1))+A092098(n+1)`
-/

namespace A332376.P11006838707828334076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (A331782 (n + 1)).toNat + A092098 (n + 1)

end

end A332376.P11006838707828334076

/-! ## A332376.P14098668190354541579

`A008486(A332377(n+1))`
-/

namespace A332376.P14098668190354541579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A332377 (n + 1)).toNat

end

end A332376.P14098668190354541579

/-! ## A332376.P8608448477244167644

`A008585(record[A332377(n+1)])`
-/

namespace A332376.P8608448477244167644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A332376.P8608448477244167644

/-! ## A332376.P4627901398324437858

`A008486(A092098(n+1)-A002378(n))`
-/

namespace A332376.P4627901398324437858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A092098 (n + 1) - A002378 n).toNat

end

end A332376.P4627901398324437858

/-! ## A332376.P7544641110900714428

`A008585(A332377(n+1)%A017643(n))`
-/

namespace A332376.P7544641110900714428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (Int.tmod (A332377 (n + 1)) (A017643 n)).toNat

end

end A332376.P7544641110900714428

/-!
# A332377: One-third of total number of edges in graph formed by the straight line segments connecting the edges of an equilateral triangle with the n-1 points resulting from a subdivision of the sides into n equal pieces.

The programs for A332377, there is no canonical definition to state claims against.
-/

/-! ## A332377.P10472790566251441106

`A332376(n+1)/3`
-/

namespace A332377.P10472790566251441106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332376 (n + 1) : ℚ) / 3

end

end A332377.P10472790566251441106

/-! ## A332377.P14429127306956031066

`(A092098(n+1)+A331782(n+1)-1)/3`
-/

namespace A332377.P14429127306956031066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092098 (n + 1) + A331782 (n + 1) - 1 : ℚ) / 3

end

end A332377.P14429127306956031066

/-! ## A332377.P2980802423771452438

`A092098(n+1)-∑[2*n]`
-/

namespace A332377.P2980802423771452438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092098 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A332377.P2980802423771452438

/-! ## A332377.P3950712218885247602

`A001844(n)-A331423(n+1)`
-/

namespace A332377.P3950712218885247602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - A331423 (n + 1)

end

end A332377.P3950712218885247602

/-! ## A332377.P7345299600921438460

`abs(A092098(n+1)-A002378(n))`
-/

namespace A332377.P7345299600921438460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A092098 (n + 1) - A002378 n|

end

end A332377.P7345299600921438460

/-! ## A332377.P8781881197205367337

`∑[A008574(n)]-A331423(n+1)`
-/

namespace A332377.P8781881197205367337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A331423 (n + 1)

end

end A332377.P8781881197205367337

/-! ## A332377.P10016193512976019571

`floor((A331782(n+1)+A092098(n+1))/3)`
-/

namespace A332377.P10016193512976019571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A331782 (n + 1) + A092098 (n + 1) : ℚ) / 3⌋

end

end A332377.P10016193512976019571

/-! ## A332377.P15346268472188213388

`A255588(A332376(n+1))`
-/

namespace A332377.P15346268472188213388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255588 (A332376 (n + 1)).toNat

end

end A332377.P15346268472188213388

/-!
# A332378: Odd numbers k such that A091908(k) < 3*(k-1)^2.

The programs for A332378, there is no canonical definition to state claims against.
-/

/-! ## A332378.P8582352608519369157

`record[lcm(2, A102495(n+1))/2]`
-/

namespace A332378.P8582352608519369157
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A102495 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332378.P8582352608519369157

/-! ## A332378.P14080182395142431504

`record[A000265(A102495(n+1))]`
-/

namespace A332378.P14080182395142431504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A102495 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332378.P14080182395142431504

/-! ## A332378.P7672332255130894324

`filter[A102495(n+1), A000035(#)]`
-/

namespace A332378.P7672332255130894324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A332378.P7672332255130894324

/-! ## A332378.P9116818600844540061

`filter[A102495(n+1), A266070(#)]`
-/

namespace A332378.P9116818600844540061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A332378.P9116818600844540061

/-! ## A332378.P11288133794747030429

`filter[A102495(n+1), A266246(#)]`
-/

namespace A332378.P11288133794747030429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A332378.P11288133794747030429

/-! ## A332378.P12546089436800565476

`filter[A102495(n+1), A266444(#)]`
-/

namespace A332378.P12546089436800565476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266444 (f1 j).toNat = 1) n)

end

end A332378.P12546089436800565476

/-! ## A332378.P11811206291524420077

`filter[A102495(n+1), A266611(#)]`
-/

namespace A332378.P11811206291524420077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A332378.P11811206291524420077

/-! ## A332378.P11485184884114240688

`filter[A102495(n+1), A266719(#)]`
-/

namespace A332378.P11485184884114240688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A332378.P11485184884114240688

/-! ## A332378.P4715129894709649657

`filter[A102495(n+1), A266789(#)]`
-/

namespace A332378.P4715129894709649657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266789 (f1 j).toNat = 1) n)

end

end A332378.P4715129894709649657

/-! ## A332378.P15845776303624835159

`filter[A102495(n+1), A267155(#)]`
-/

namespace A332378.P15845776303624835159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267155 (f1 j).toNat = 1) n)

end

end A332378.P15845776303624835159

/-!
# A332379: Numbers of the form 3^k + prime, with k > 1.

The programs for A332379, there is no canonical definition to state claims against.
-/

/-! ## A332379.P7759220301004266198

`record[A140353(n+1)-A308809(n)]`
-/

namespace A332379.P7759220301004266198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140353 (n + 1) - A308809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332379.P7759220301004266198

/-!
# A332380: a(n) is the X-coordinate of the n-th point of the Peano curve. Sequence A332381 gives Y-coordinates.

The programs for A332380, there is no canonical definition to state claims against.
-/

/-! ## A332380.P10460278921472332307

`∑[A163533(A141566(n+1))]`
-/

namespace A332380.P10460278921472332307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163533 (A141566 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332380.P10460278921472332307

/-! ## A332380.P17667309876300448952

`∑[A353526(n+1)-A053669(A001134(2*(n+1)))]`
-/

namespace A332380.P17667309876300448952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353526 (n + 1) - A053669 (A001134 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332380.P17667309876300448952

/-! ## A332380.P18323137788268483836

`∑[A134452(3*A024662(n))]`
-/

namespace A332380.P18323137788268483836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 (3 * A024662 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332380.P18323137788268483836

/-! ## A332380.P1577063602355718230

`∑[A131734(n)^A291648(n+1)]`
-/

namespace A332380.P1577063602355718230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131734 n : ℚ) ^ (A291648 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332380.P1577063602355718230

/-! ## A332380.P6489667158551928324

`∑[((4-n%6)%2)^A367584(2*n+3)]`
-/

namespace A332380.P6489667158551928324
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (4 - ((n % 6 : ℕ) : ℤ)) 2 : ℚ) ^ (A367584 (2 * n + 3) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332380.P6489667158551928324

/-!
# A332381: a(n) is the Y-coordinate of the n-th point of the Peano curve. Sequence A332380 gives X-coordinates.

The programs for A332381, there is no canonical definition to state claims against.
-/

/-! ## A332381.P13669008495904521001

`∑[A076826(A142742(n+1)+A014681(n))-1]`
-/

namespace A332381.P13669008495904521001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (A142742 (n + 1) + A014681 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332381.P13669008495904521001

/-!
# A332382: If n = Sum (2^e_k) then a(n) = Product (prime(e_k + 2)).

The programs for A332382, the canonical program `A332382.P10140371250986470604` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332382 has offset 0).

The definition of A332382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332382.P10140371250986470604

`A000040(floor(log2(n))+2)*a(n-2^floor(log2(n)))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A332382

/-- `A000040(floor(log2(n))+2)*a(n-2^floor(log2(n)))` -/
def P10140371250986470604.Spec : Prop :=
  ∀ n, P10140371250986470604.a n = A332382 n

theorem P10140371250986470604.correct : P10140371250986470604.Spec := by
  intro n
  simp only [A332382]

end A332382

/-! ## A332382.P12877654154486742312

`A303760(A303768(2*n))`
-/

namespace A332382.P12877654154486742312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 (A303768 (2 * n)).toNat

end

end A332382.P12877654154486742312

namespace A332382

/-- `A303760(A303768(2*n))` -/
def P12877654154486742312.Spec : Prop :=
  ∀ n, P12877654154486742312.a n = A332382 n

end A332382

/-! ## A332382.P2522573576444249262

`A019565(2*n)`
-/

namespace A332382.P2522573576444249262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (2 * n)

end

end A332382.P2522573576444249262

namespace A332382

/-- `A019565(2*n)` -/
def P2522573576444249262.Spec : Prop :=
  ∀ n, P2522573576444249262.a n = A332382 n

end A332382

/-! ## A332382.P11553473800712452720

`sqrt(A334110(2*n))`
-/

namespace A332382.P11553473800712452720
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A334110 (2 * n) : ℝ)

end

end A332382.P11553473800712452720

namespace A332382

/-- `sqrt(A334110(2*n))` -/
def P11553473800712452720.Spec : Prop :=
  ∀ n, P11553473800712452720.a n = (A332382 n : ℝ)

end A332382

/-! ## A332382.P11819325199842948582

`A339809(2*n)+1`
-/

namespace A332382.P11819325199842948582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (2 * n) + 1

end

end A332382.P11819325199842948582

namespace A332382

/-- `A339809(2*n)+1` -/
def P11819325199842948582.Spec : Prop :=
  ∀ n, P11819325199842948582.a n = A332382 n

end A332382

/-! ## A332382.P12552078487593863485

`A019565(Δ[n²])/2`
-/

namespace A332382.P12552078487593863485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019565 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A332382.P12552078487593863485

namespace A332382

/-- `A019565(Δ[n²])/2` -/
def P12552078487593863485.Spec : Prop :=
  ∀ n, P12552078487593863485.a n = (A332382 n : ℚ)

end A332382

/-! ## A332382.P12114970706817570070

`A365810(A193231(2*n))`
-/

namespace A332382.P12114970706817570070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365810 (A193231 (2 * n)).toNat

end

end A332382.P12114970706817570070

namespace A332382

/-- `A365810(A193231(2*n))` -/
def P12114970706817570070.Spec : Prop :=
  ∀ n, P12114970706817570070.a n = A332382 n

end A332382

/-! ## A332382.P16991754713283723689

`A283477(2*n)/A283477(n)`
-/

namespace A332382.P16991754713283723689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283477 (2 * n) : ℚ) / (A283477 n : ℚ)

end

end A332382.P16991754713283723689

namespace A332382

/-- `A283477(2*n)/A283477(n)` -/
def P16991754713283723689.Spec : Prop :=
  ∀ n, P16991754713283723689.a n = (A332382 n : ℚ)

end A332382

/-! ## A332382.P7517759552014601877

`A284003(xor(n, 2*n))`
-/

namespace A332382.P7517759552014601877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284003 (Nat.xor n (2 * n))

end

end A332382.P7517759552014601877

namespace A332382

/-- `A284003(xor(n, 2*n))` -/
def P7517759552014601877.Spec : Prop :=
  ∀ n, P7517759552014601877.a n = A332382 n

end A332382

/-! ## A332382.P11191725471700031688

`A284003(xor(n, Δ[n²]))/2`
-/

namespace A332382.P11191725471700031688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284003 (Int.xor (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat : ℚ) / 2

end

end A332382.P11191725471700031688

namespace A332382

/-- `A284003(xor(n, Δ[n²]))/2` -/
def P11191725471700031688.Spec : Prop :=
  ∀ n, P11191725471700031688.a n = (A332382 n : ℚ)

end A332382

/-! ## A332382.P15584967946525098424

`A284003(A048724(n))`
-/

namespace A332382.P15584967946525098424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284003 (A048724 n).toNat

end

end A332382.P15584967946525098424

namespace A332382

/-- `A284003(A048724(n))` -/
def P15584967946525098424.Spec : Prop :=
  ∀ n, P15584967946525098424.a n = A332382 n

end A332382

/-! ## A332382.P4413176910778430497

`A284003(A003188(2*n))`
-/

namespace A332382.P4413176910778430497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284003 (A003188 (2 * n)).toNat

end

end A332382.P4413176910778430497

namespace A332382

/-- `A284003(A003188(2*n))` -/
def P4413176910778430497.Spec : Prop :=
  ∀ n, P4413176910778430497.a n = A332382 n

end A332382

/-! ## A332382.P6637498567606403032

`A302033(A006068(2*n))`
-/

namespace A332382.P6637498567606403032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302033 (A006068 (2 * n)).toNat

end

end A332382.P6637498567606403032

namespace A332382

/-- `A302033(A006068(2*n))` -/
def P6637498567606403032.Spec : Prop :=
  ∀ n, P6637498567606403032.a n = A332382 n

end A332382

/-! ## A332382.P14156735687428019132

`A304087(A304084(2*n))`
-/

namespace A332382.P14156735687428019132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 (A304084 (2 * n)).toNat

end

end A332382.P14156735687428019132

namespace A332382

/-- `A304087(A304084(2*n))` -/
def P14156735687428019132.Spec : Prop :=
  ∀ n, P14156735687428019132.a n = A332382 n

end A332382

/-! ## A332382.P5050517173495044424

`A252868(A372060(2*n)+1)`
-/

namespace A332382.P5050517173495044424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252868 (A372060 (2 * n) + 1).toNat

end

end A332382.P5050517173495044424

namespace A332382

/-- `A252868(A372060(2*n)+1)` -/
def P5050517173495044424.Spec : Prop :=
  ∀ n, P5050517173495044424.a n = A332382 n

end A332382

/-! ## A332382.P7717827904974505268

`A277006(A048680(2*n))`
-/

namespace A332382.P7717827904974505268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277006 (A048680 (2 * n)).toNat

end

end A332382.P7717827904974505268

namespace A332382

/-- `A277006(A048680(2*n))` -/
def P7717827904974505268.Spec : Prop :=
  ∀ n, P7717827904974505268.a n = A332382 n

end A332382

/-! ## A332382.P16372417885788924929

`A303770(A303774(2*n))`
-/

namespace A332382.P16372417885788924929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 (A303774 (2 * n)).toNat

end

end A332382.P16372417885788924929

namespace A332382

/-- `A303770(A303774(2*n))` -/
def P16372417885788924929.Spec : Prop :=
  ∀ n, P16372417885788924929.a n = A332382 n

end A332382

/-! ## A332382.P5494362797088189261

`gcd(A344530(2*n), A378631(2*n+1))`
-/

namespace A332382.P5494362797088189261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A344530 (2 * n)) (A378631 (2 * n + 1))

end

end A332382.P5494362797088189261

namespace A332382

/-- `gcd(A344530(2*n), A378631(2*n+1))` -/
def P5494362797088189261.Spec : Prop :=
  ∀ n, (P5494362797088189261.a n : ℤ) = A332382 n

end A332382

/-! ## A332382.P7858860691343460698

`A353955(A353717(2*n))`
-/

namespace A332382.P7858860691343460698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353955 (A353717 (2 * n)).toNat

end

end A332382.P7858860691343460698

namespace A332382

/-- `A353955(A353717(2*n))` -/
def P7858860691343460698.Spec : Prop :=
  ∀ n, P7858860691343460698.a n = A332382 n

end A332382

/-! ## A332382.P5592349949115595522

`A277330(A277711(2*n))`
-/

namespace A332382.P5592349949115595522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 (A277711 (2 * n)).toNat

end

end A332382.P5592349949115595522

namespace A332382

/-- `A277330(A277711(2*n))` -/
def P5592349949115595522.Spec : Prop :=
  ∀ n, P5592349949115595522.a n = A332382 n

end A332382

/-!
# A332383: a(n) is the X-coordinate of the n-th point of the dragon curve. Sequence A332384 gives Y-coordinates.

The programs for A332383, the canonical program `A332383.P7920587963328072283` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332383 has offset 0).

The definition of A332383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332383.P3588421664434173788

`∑[a(n-2)*A073097(n)]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A332383.P3588421664434173788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 2) * A073097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332383.P3588421664434173788

namespace A332383

/-- `∑[a(n-2)*A073097(n)]` -/
def P3588421664434173788.Spec : Prop :=
  ∀ n, P3588421664434173788.a n = A332383 n

end A332383

/-! ## A332383.P7110276346392828070

`A332384(2*n)-A332384(n)`
-/

namespace A332383.P7110276346392828070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332384 (2 * n) - A332384 n

end

end A332383.P7110276346392828070

namespace A332383

/-- `A332384(2*n)-A332384(n)` -/
def P7110276346392828070.Spec : Prop :=
  ∀ n, P7110276346392828070.a n = A332383 n

end A332383

/-! ## A332383.P7920587963328072283

`A268383(2*n)-A268383(4*n)+n`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A332383

/-- `A268383(2*n)-A268383(4*n)+n` -/
def P7920587963328072283.Spec : Prop :=
  ∀ n, P7920587963328072283.a n = A332383 n

theorem P7920587963328072283.correct : P7920587963328072283.Spec := by
  intro n
  simp only [A332383]

end A332383

/-! ## A332383.P8487811674907477794

`A268382(4*n)-(A268382(2*n)+n)`
-/

namespace A332383.P8487811674907477794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268382 (4 * n) - (A268382 (2 * n) + (n : ℤ))

end

end A332383.P8487811674907477794

namespace A332383

/-- `A268382(4*n)-(A268382(2*n)+n)` -/
def P8487811674907477794.Spec : Prop :=
  ∀ n, P8487811674907477794.a n = A332383 n

end A332383

/-! ## A332383.P17894319815443982983

`A332384(4*n)/2`
-/

namespace A332383.P17894319815443982983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332384 (4 * n) : ℚ) / 2

end

end A332383.P17894319815443982983

namespace A332383

/-- `A332384(4*n)/2` -/
def P17894319815443982983.Spec : Prop :=
  ∀ n, P17894319815443982983.a n = (A332383 n : ℚ)

end A332383

/-! ## A332383.P2505243665711998925

`A174344(A126937(n)+1)`
-/

namespace A332383.P2505243665711998925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A126937 n + 1).toNat

end

end A332383.P2505243665711998925

namespace A332383

/-- `A174344(A126937(n)+1)` -/
def P2505243665711998925.Spec : Prop :=
  ∀ n, P2505243665711998925.a n = A332383 n

end A332383

/-!
# A332384: a(n) is the Y-coordinate of the n-th point of the dragon curve. Sequence A332383 gives X-coordinates.

The programs for A332384, the canonical program `A332384.P15273066766290011889` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332384 has offset 0).

The definition of A332384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332384.P5945457487898793299

`A268382(comp[2*(n+1)])-n`
-/

namespace A332384.P5945457487898793299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268382 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - (n : ℤ)

end

end A332384.P5945457487898793299

namespace A332384

/-- `A268382(comp[2*(n+1)])-n` -/
def P5945457487898793299.Spec : Prop :=
  ∀ n, P5945457487898793299.a n = A332384 n

end A332384

/-! ## A332384.P15273066766290011889

`n-(A268411(n)+A268383(2*n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A332384

/-- `n-(A268411(n)+A268383(2*n))` -/
def P15273066766290011889.Spec : Prop :=
  ∀ n, P15273066766290011889.a n = A332384 n

theorem P15273066766290011889.correct : P15273066766290011889.Spec := by
  intro n
  simp only [A332384]

end A332384

/-! ## A332384.P15983342261083239563

`A004273(n)-(A268383(A004273(n))+n)`
-/

namespace A332384.P15983342261083239563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n - (A268383 (A004273 n).toNat + (n : ℤ))

end

end A332384.P15983342261083239563

namespace A332384

/-- `A004273(n)-(A268383(A004273(n))+n)` -/
def P15983342261083239563.Spec : Prop :=
  ∀ n, P15983342261083239563.a n = A332384 n

end A332384

/-! ## A332384.P17868641835316178920

`A001489(A268411(n)+A268383(2*n))+n`
-/

namespace A332384.P17868641835316178920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A268411 n + A268383 (2 * n)).toNat + (n : ℤ)

end

end A332384.P17868641835316178920

namespace A332384

/-- `A001489(A268411(n)+A268383(2*n))+n` -/
def P17868641835316178920.Spec : Prop :=
  ∀ n, P17868641835316178920.a n = A332384 n

end A332384

/-! ## A332384.P1014465548265892398

`A332383(n)-A332383(2*n)`
-/

namespace A332384.P1014465548265892398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332383 n - A332383 (2 * n)

end

end A332384.P1014465548265892398

namespace A332384

/-- `A332383(n)-A332383(2*n)` -/
def P1014465548265892398.Spec : Prop :=
  ∀ n, P1014465548265892398.a n = A332384 n

end A332384

/-! ## A332384.P6684016571816591931

`(A268411(n)+A268383(2*n))*A062157(A104202(n+4))+n`
-/

namespace A332384.P6684016571816591931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A268411 n + A268383 (2 * n)) * A062157 (A104202 (n + 4)).toNat + (n : ℤ)

end

end A332384.P6684016571816591931

namespace A332384

/-- `(A268411(n)+A268383(2*n))*A062157(A104202(n+4))+n` -/
def P6684016571816591931.Spec : Prop :=
  ∀ n, P6684016571816591931.a n = A332384 n

end A332384

/-! ## A332384.P16628672139798063178

`A268038(A126937(n)+1)`
-/

namespace A332384.P16628672139798063178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268038 (A126937 n + 1).toNat

end

end A332384.P16628672139798063178

namespace A332384

/-- `A268038(A126937(n)+1)` -/
def P16628672139798063178.Spec : Prop :=
  ∀ n, P16628672139798063178.a n = A332384 n

end A332384

/-!
# A332385: Sum of squares of indices of distinct prime factors of n.

The programs for A332385, the canonical program `A332385.P11219704881884823919` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332385 has offset 1).

The definition of A332385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332385.P11219704881884823919

`∑{p}[n+1, A289506(#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A332385

/-- `∑{p}[n+1, A289506(#)]` -/
def P11219704881884823919.Spec : Prop :=
  ∀ n, P11219704881884823919.a n = A332385 (n + 1)

theorem P11219704881884823919.correct : P11219704881884823919.Spec := by
  intro n
  simp only [A332385, Nat.add_sub_cancel]

end A332385

/-! ## A332385.P12922590114769675880

`∑{p}[n+1, A326845(#)]`
-/

namespace A332385.P12922590114769675880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A326845 p

end

end A332385.P12922590114769675880

namespace A332385

/-- `∑{p}[n+1, A326845(#)]` -/
def P12922590114769675880.Spec : Prop :=
  ∀ n, P12922590114769675880.a n = A332385 (n + 1)

end A332385

/-! ## A332385.P2319848156399406435

`∑{p}[n+1, A333352(#)]`
-/

namespace A332385.P2319848156399406435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A333352 p

end

end A332385.P2319848156399406435

namespace A332385

/-- `∑{p}[n+1, A333352(#)]` -/
def P2319848156399406435.Spec : Prop :=
  ∀ n, P2319848156399406435.a n = A332385 (n + 1)

end A332385

/-! ## A332385.P16939344717509648092

`A289506(∏{p}[n+1, #])`
-/

namespace A332385.P16939344717509648092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289506 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A332385.P16939344717509648092

namespace A332385

/-- `A289506(∏{p}[n+1, #])` -/
def P16939344717509648092.Spec : Prop :=
  ∀ n, P16939344717509648092.a n = A332385 (n + 1)

end A332385

/-! ## A332385.P8923987492181091733

`∑{d}[n+1, A049084(#)²]`
-/

namespace A332385.P8923987492181091733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A049084 d ^ 2

end

end A332385.P8923987492181091733

namespace A332385

/-- `∑{d}[n+1, A049084(#)²]` -/
def P8923987492181091733.Spec : Prop :=
  ∀ n, P8923987492181091733.a n = A332385 (n + 1)

end A332385

/-! ## A332385.P12315739492519461449

`∑{p}[n+1, A000720(#)²]`
-/

namespace A332385.P12315739492519461449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000720 p ^ 2

end

end A332385.P12315739492519461449

namespace A332385

/-- `∑{p}[n+1, A000720(#)²]` -/
def P12315739492519461449.Spec : Prop :=
  ∀ n, P12315739492519461449.a n = A332385 (n + 1)

end A332385

/-! ## A332385.P11873926717990638451

`∑{p}[n+1, A026233(#)²]`
-/

namespace A332385.P11873926717990638451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A026233 p ^ 2

end

end A332385.P11873926717990638451

namespace A332385

/-- `∑{p}[n+1, A026233(#)²]` -/
def P11873926717990638451.Spec : Prop :=
  ∀ n, P11873926717990638451.a n = A332385 (n + 1)

end A332385

/-! ## A332385.P8035942395620734239

`∑{p}[n+1, A026238(#)²]`
-/

namespace A332385.P8035942395620734239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A026238 p ^ 2

end

end A332385.P8035942395620734239

namespace A332385

/-- `∑{p}[n+1, A026238(#)²]` -/
def P8035942395620734239.Spec : Prop :=
  ∀ n, P8035942395620734239.a n = A332385 (n + 1)

end A332385

/-! ## A332385.P14302257432460275723

`∑{p}[n+1, A055396(#)²]`
-/

namespace A332385.P14302257432460275723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A055396 p ^ 2

end

end A332385.P14302257432460275723

namespace A332385

/-- `∑{p}[n+1, A055396(#)²]` -/
def P14302257432460275723.Spec : Prop :=
  ∀ n, P14302257432460275723.a n = A332385 (n + 1)

end A332385

/-! ## A332385.P15776454531452956115

`∑{p}[n+1, A061395(#)²]`
-/

namespace A332385.P15776454531452956115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A061395 p ^ 2

end

end A332385.P15776454531452956115

namespace A332385

/-- `∑{p}[n+1, A061395(#)²]` -/
def P15776454531452956115.Spec : Prop :=
  ∀ n, P15776454531452956115.a n = A332385 (n + 1)

end A332385

/-! ## A332385.P1123571850755948342

`A289506(A007947(n+1))`
-/

namespace A332385.P1123571850755948342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289506 (A007947 (n + 1)).toNat

end

end A332385.P1123571850755948342

namespace A332385

/-- `A289506(A007947(n+1))` -/
def P1123571850755948342.Spec : Prop :=
  ∀ n, P1123571850755948342.a n = A332385 (n + 1)

end A332385

/-! ## A332385.P11634968848993748675

`∑{d}[A007947(n+1), A297109(#)²]`
-/

namespace A332385.P11634968848993748675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297109 d ^ 2

end

end A332385.P11634968848993748675

namespace A332385

/-- `∑{d}[A007947(n+1), A297109(#)²]` -/
def P11634968848993748675.Spec : Prop :=
  ∀ n, P11634968848993748675.a n = A332385 (n + 1)

end A332385

/-! ## A332385.P612564820955338143

`∑{p}[A181983(n+1), A056239(#)²]`
-/

namespace A332385.P612564820955338143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A056239 p ^ 2

end

end A332385.P612564820955338143

namespace A332385

/-- `∑{p}[A181983(n+1), A056239(#)²]` -/
def P612564820955338143.Spec : Prop :=
  ∀ n, P612564820955338143.a n = A332385 (n + 1)

end A332385

/-! ## A332385.P7528533225124935122

`∑{p}[A181983(n+1), A316524(#)²]`
-/

namespace A332385.P7528533225124935122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A316524 p ^ 2

end

end A332385.P7528533225124935122

namespace A332385

/-- `∑{p}[A181983(n+1), A316524(#)²]` -/
def P7528533225124935122.Spec : Prop :=
  ∀ n, P7528533225124935122.a n = A332385 (n + 1)

end A332385

/-! ## A332385.P614664322106623543

`∑{p}[A049084(A000040(n+1)), A049084(#)²]`
-/

namespace A332385.P614664322106623543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A049084 p ^ 2

end

end A332385.P614664322106623543

namespace A332385

/-- `∑{p}[A049084(A000040(n+1)), A049084(#)²]` -/
def P614664322106623543.Spec : Prop :=
  ∀ n, P614664322106623543.a n = A332385 (n + 1)

end A332385

/-! ## A332385.P2674959361619963123

`∑{p}[n+1, A003963(#²)]`
-/

namespace A332385.P2674959361619963123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A003963 (p ^ 2)

end

end A332385.P2674959361619963123

namespace A332385

/-- `∑{p}[n+1, A003963(#²)]` -/
def P2674959361619963123.Spec : Prop :=
  ∀ n, P2674959361619963123.a n = A332385 (n + 1)

end A332385

/-! ## A332385.P18373558670117652980

`A304037(A078615(n+1))`
-/

namespace A332385.P18373558670117652980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304037 (A078615 (n + 1)).toNat

end

end A332385.P18373558670117652980

namespace A332385

/-- `A304037(A078615(n+1))` -/
def P18373558670117652980.Spec : Prop :=
  ∀ n, P18373558670117652980.a n = A332385 (n + 1)

end A332385

/-!
# A332386: Numbers k such that k and k + 1 have the same number of divisors in Eisenstein integers.

The programs for A332386, the canonical program `A332386.P12576416511398998806` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332386 has offset 1).

The definition of A332386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332386.P12576416511398998806

`eq[A319442(n+1), A319442(n+2)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A332386

/-- `eq[A319442(n+1), A319442(n+2)]+1` -/
def P12576416511398998806.Spec : Prop :=
  ∀ n, (P12576416511398998806.a n : ℤ) = A332386 (n + 1)

theorem P12576416511398998806.correct : P12576416511398998806.Spec := by
  intro n
  simp only [A332386, Nat.add_sub_cancel]

end A332386

/-!
# A332389: Number A(n,w) of circular Dyck paths with n entries, and width at most w.

The programs for A332389, there is no canonical definition to state claims against.
-/

/-! ## A332389.P4511096398425784277

`A198632(A014132(comp[∑[n]]))/2`
-/

namespace A332389.P4511096398425784277
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198632 (A014132 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat : ℚ) / 2

end

end A332389.P4511096398425784277

/-! ## A332389.P8483279732053579287

`A232441(A099375(n)+4+n)`
-/

namespace A332389.P8483279732053579287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232441 (A099375 n + 4 + (n : ℤ)).toNat

end

end A332389.P8483279732053579287

/-! ## A332389.P3297367596506122008

`A276562(n+1)+A083892(A157149(n))`
-/

namespace A332389.P3297367596506122008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276562 (n + 1) + A083892 (A157149 n).toNat

end

end A332389.P3297367596506122008

/-! ## A332389.P13849804384569762987

`A083892(A157149(n))+A048483(A334203(2^n))`
-/

namespace A332389.P13849804384569762987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083892 (A157149 n).toNat + A048483 (A334203 (2 ^ n)).toNat

end

end A332389.P13849804384569762987

/-! ## A332389.P13662728978282871434

`A267113(A223282(n+1))+A080936(n+1)`
-/

namespace A332389.P13662728978282871434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267113 (A223282 (n + 1)).toNat + A080936 (n + 1)

end

end A332389.P13662728978282871434

/-!
# A332391: Number of minimal total dominating sets in the n X n king graph.

The programs for A332391, there is no canonical definition to state claims against.
-/

/-! ## A332391.P1255018000313967603

`A332390(∑[4*n]+1)`
-/

namespace A332391.P1255018000313967603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332390 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A332391.P1255018000313967603

/-! ## A332391.P3564073249609334822

`record[A332390(A330613(n+1))]`
-/

namespace A332391.P3564073249609334822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332390 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332391.P3564073249609334822

/-! ## A332391.P1807206671821909892

`A332390(A001844(n))+char[8]`
-/

namespace A332391.P1807206671821909892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332390 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A332391.P1807206671821909892

/-! ## A332391.P17356776591725428827

`record[A003982(n)*A332390(n+1)]`
-/

namespace A332391.P17356776591725428827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A332390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332391.P17356776591725428827

/-!
# A332392: Number of minimal total dominating sets in the 2 X n king graph.

The programs for A332392, there is no canonical definition to state claims against.
-/

/-! ## A332392.P11892509009734737933

`A332390(∑[n]+2)`
-/

namespace A332392.P11892509009734737933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332390 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A332392.P11892509009734737933

/-! ## A332392.P15135377634793789032

`A332390(A133263(n))+C(2, n+2)`
-/

namespace A332392.P15135377634793789032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332390 (A133263 n).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A332392.P15135377634793789032

/-! ## A332392.P4207295960725705269

`A332390(A133263(n))+A000007(n)`
-/

namespace A332392.P4207295960725705269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332390 (A133263 n).toNat + A000007 n

end

end A332392.P4207295960725705269

/-! ## A332392.P13727257138849768892

`A332390(A133263(n))+val(A000040(n+1), 2)`
-/

namespace A332392.P13727257138849768892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332390 (A133263 n).toNat + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A332392.P13727257138849768892

/-! ## A332392.P6777199500998280616

`A007318(a(2%n))*A332390(A133263(n))` with `a(0)=1`
-/

namespace A332392.P6777199500998280616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007318 (a (2 % n)).toNat * A332390 (A133263 n).toNat

end

end A332392.P6777199500998280616

/-!
# A332393: Number of minimal total dominating sets in the 3 X n king graph.

The programs for A332393, there is no canonical definition to state claims against.
-/

/-! ## A332393.P11611047482799960213

`A332390(∑[char[1]+1+n]+2)`
-/

namespace A332393.P11611047482799960213
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332390 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A332393.P11611047482799960213

/-! ## A332393.P11940411318787762619

`A332390(∑[n+2]-1)+floor(acot(n))`
-/

namespace A332393.P11940411318787762619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332390 (∑ j ∈ Finset.range (n + 1), f1 j - 1) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A332393.P11940411318787762619

/-! ## A332393.P5683095351601658902

`record[A332390(sqrt(A303054(n+2)))]`
-/

namespace A332393.P5683095351601658902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332390 (SequenceMachineLib.roundAway (Real.sqrt (A303054 (n + 2) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332393.P5683095351601658902

/-! ## A332393.P10119160752909644285

`record[Δ[A332390(A347633(n+1))]]`
-/

namespace A332393.P10119160752909644285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332390 (A347633 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332393.P10119160752909644285

/-! ## A332393.P14998574527601089364

`record[A010054(n)*A332390(n+3)]`
-/

namespace A332393.P14998574527601089364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A332390 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332393.P14998574527601089364

/-!
# A332394: Number of minimal total dominating sets in the 4 X n king graph.

The programs for A332394, there is no canonical definition to state claims against.
-/

/-! ## A332394.P11890801120719171529

`A332390(∑[n+3])`
-/

namespace A332394.P11890801120719171529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332390 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A332394.P11890801120719171529

/-! ## A332394.P4166822974357978317

`A332390(A141214(n))+A011730(n)`
-/

namespace A332394.P4166822974357978317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332390 (A141214 n).toNat + A011730 n

end

end A332394.P4166822974357978317

/-! ## A332394.P12357841534025813338

`A332390(A141214(n))+A025442(n)`
-/

namespace A332394.P12357841534025813338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332390 (A141214 n).toNat + A025442 n

end

end A332394.P12357841534025813338

/-! ## A332394.P17039819792194030743

`A332390(A141214(n))+A008683(4*(n+1))`
-/

namespace A332394.P17039819792194030743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332390 (A141214 n).toNat + A008683 (4 * (n + 1))

end

end A332394.P17039819792194030743

/-! ## A332394.P11355560303872096389

`A001222(A000010(n+2)+1)*A332390(A141214(n))`
-/

namespace A332394.P11355560303872096389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (n + 2) + 1).toNat * A332390 (A141214 n).toNat

end

end A332394.P11355560303872096389

/-!
# A332398: Number of set partitions of [n] where all prime-indexed blocks are singletons.

The programs for A332398, there is no canonical definition to state claims against.
-/

/-! ## A332398.P15625590190582535409

`∑[A007476(n)%A006126(n)]`
-/

namespace A332398.P15625590190582535409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007476 n) (A006126 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332398.P15625590190582535409

/-! ## A332398.P16263803591543552401

`A233583(∑[A007476(n)]+1)-1`
-/

namespace A332398.P16263803591543552401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat - 1

end

end A332398.P16263803591543552401

/-! ## A332398.P10908153468920269735

`A358475(A358453(n+1))+A358453(n+2)`
-/

namespace A332398.P10908153468920269735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358475 (A358453 (n + 1)).toNat + A358453 (n + 2)

end

end A332398.P10908153468920269735

/-! ## A332398.P2723701343792312826

`∑[A007476(n)-A288314(A056802(2*(n+2)))]`
-/

namespace A332398.P2723701343792312826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007476 n - A288314 (A056802 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332398.P2723701343792312826

/-!
# A332399: Minimum positive value of p_1*...*p_n*(s_1/p_1 + ... + s_n/p_n), where each s_i equals 1 or -1 and p_i is the i-th prime number.

The programs for A332399, there is no canonical definition to state claims against.
-/

/-! ## A332399.P4727166855678024033

`A058018(A336413(n+1)+A000217(n))`
-/

namespace A332399.P4727166855678024033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058018 (A336413 (n + 1) + A000217 n).toNat

end

end A332399.P4727166855678024033

